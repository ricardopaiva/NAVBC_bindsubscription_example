codeunit 50110 "G/L Logger/Message Subscriber"
{
    EventSubscriberInstance = Manual;

    var
        GLLogger: Codeunit "G/L Logger Subscriber";
        IsBound: Boolean;

    procedure SetIsBound()
    begin
        IsBound := true;
    end;

    procedure GetIsBound(): Boolean
    begin
        exit(IsBound);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnAfterGLFinishPosting', '', true, true)]
    local procedure "Gen. Jnl.-Post Line_OnAfterGLFinishPosting"(GLEntry: Record "G/L Entry"; var GenJnlLine: Record "Gen. Journal Line"; IsTransactionConsistent: Boolean; FirstTransactionNo: Integer; var GLRegister: Record "G/L Register"; var TempGLEntryBuf: Record "G/L Entry"; var NextEntryNo: Integer; var NextTransactionNo: Integer)
    begin
        Message(Format(GLLogger.AddGLEntryToLog(GLEntry."Entry No.")));
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"G/L Logger Subscriber", 'OnCheckSubscriberIsBound', '', true, true)]
    local procedure IsBound_OnCheckSubscriberIsBound_GLLoggerSubscriber(var CodeunitIsBound: Boolean);
    begin
        CodeunitIsBound := IsBound;
    end;

}