codeunit 50106 "Storage"
{
    EventSubscriberInstance = Manual;

    var
        PostedEntryNo: Integer;

    procedure GetPostedEntryNo(): Integer
    begin
        exit(PostedEntryNo);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnAfterGLFinishPosting', '', true, true)]
    local procedure "Gen. Jnl.-Post Line_OnAfterGLFinishPosting"(GLEntry: Record "G/L Entry"; var GenJnlLine: Record "Gen. Journal Line"; IsTransactionConsistent: Boolean; FirstTransactionNo: Integer; var GLRegister: Record "G/L Register"; var TempGLEntryBuf: Record "G/L Entry"; var NextEntryNo: Integer; var NextTransactionNo: Integer)
    begin
        PostedEntryNo := NextEntryNo;
    end;

}