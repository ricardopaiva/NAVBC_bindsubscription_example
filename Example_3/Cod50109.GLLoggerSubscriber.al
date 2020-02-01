codeunit 50109 "G/L Logger Subscriber"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnAfterGLFinishPosting', '', true, true)]
    local procedure "Gen. Jnl.-Post Line_OnAfterGLFinishPosting"(GLEntry: Record "G/L Entry"; var GenJnlLine: Record "Gen. Journal Line"; IsTransactionConsistent: Boolean; FirstTransactionNo: Integer; var GLRegister: Record "G/L Register"; var TempGLEntryBuf: Record "G/L Entry"; var NextEntryNo: Integer; var NextTransactionNo: Integer)
    var
        IsBound: Boolean;
    begin
        OnCheckSubscriberIsBound(IsBound);
        if IsBound then
            exit;

        AddGLEntryToLog(GLEntry."Entry No.");
    end;

    procedure AddGLEntryToLog(GLEntryNo: Integer): Integer
    var
        Logging: Record Logging;

    begin
        Logging.Init();
        Logging."G/L Entry No." := GLEntryNo;
        Logging.Insert();

        Message('New entry added to Logging');

        exit(Logging."Entry No.");
    end;

    [IntegrationEvent(false, false)]
    local procedure OnCheckSubscriberIsBound(var CodeunitIsBound: Boolean)
    begin

    end;
}