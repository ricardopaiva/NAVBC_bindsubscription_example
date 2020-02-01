codeunit 50105 "Example 2 - Bind"
{
    var
        Storage: Codeunit "Storage";
        Aux: Codeunit "Example 2 - Aux Methods";

    trigger OnRun()
    begin
        BindSubscription(Storage);
        Aux.CreateAndPostGenJnlLine();
        MESSAGE(Format(Storage.GetPostedEntryNo()));
        UnbindSubscription(Storage);
    end;

}
