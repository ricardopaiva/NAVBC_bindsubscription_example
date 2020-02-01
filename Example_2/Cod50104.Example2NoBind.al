codeunit 50104 "Example 2 - No Bind"
{
    var
        Storage: Codeunit "Storage";
        Aux: Codeunit "Example 2 - Aux Methods";

    trigger OnRun()
    begin
        Aux.CreateAndPostGenJnlLine();
        
        // Do additional processing...
        
        MESSAGE(Format(Storage.GetPostedEntryNo()));
    end;

}
