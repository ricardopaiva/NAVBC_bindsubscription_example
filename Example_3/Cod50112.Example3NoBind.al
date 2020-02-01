codeunit 50112 "Example 3 - No Bind"
{
    var
        Aux: Codeunit "Example 3 - Aux Methods";

    trigger OnRun()
    begin
        Aux.CreateAndPostGenJnlLine();
    end;
}
