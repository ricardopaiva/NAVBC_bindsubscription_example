codeunit 50107 "Example 2 - Aux Methods"
{
    procedure CreateAndPostGenJnlLine()
    var
        GenJournalLine: Record "Gen. Journal Line";
        GenJnlPostBatch: Codeunit "Gen. Jnl.-Post Batch";
    begin
        // For demo purposes only - Values hardcoded.

        GenJournalLine.INIT;
        GenJournalLine.SetHideValidation(TRUE);
        GenJournalLine.VALIDATE("Source Code", 'GENJNL');
        GenJournalLine.VALIDATE("Journal Template Name", 'GENERAL');
        GenJournalLine.VALIDATE("Journal Batch Name", 'DEFAULT');
        GenJournalLine.VALIDATE("Line No.", 10000);
        GenJournalLine.VALIDATE("Account Type", GenJournalLine."Account Type"::"G/L Account");
        GenJournalLine.VALIDATE("Document No.", '.');
        GenJournalLine.VALIDATE("Account No.", '2910');
        GenJournalLine.VALIDATE("Document Date", WorkDate());
        GenJournalLine.VALIDATE("Posting Date", WorkDate());
        GenJournalLine.VALIDATE(Amount, 100);
        GenJournalLine.VALIDATE("Bal. Account Type", GenJournalLine."Bal. Account Type"::"G/L Account");
        GenJournalLine.VALIDATE("Bal. Account No.", '2910');
        GenJournalLine.VALIDATE("Bal. Gen. Posting Type", GenJournalLine."Bal. Gen. Posting Type"::" ");
        GenJournalLine.VALIDATE("Bal. Gen. Bus. Posting Group", '');
        GenJournalLine.VALIDATE("Bal. Gen. Prod. Posting Group", '');
        GenJournalLine.VALIDATE("Bal. VAT Prod. Posting Group", '');
        GenJournalLine.VALIDATE("Bal. VAT Bus. Posting Group", '');
        GenJournalLine.INSERT(TRUE);

        GenJnlPostBatch.Run(GenJournalLine);
    end;

}
