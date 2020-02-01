codeunit 50113 "Example 3 - Bind"
{
    var
        Aux: Codeunit "Example 3 - Aux Methods";
        LoggerMessage: Codeunit "G/L Logger/Message Subscriber";

    trigger OnRun()
    begin
        BindSubscription(LoggerMessage);
        Aux.CreateAndPostGenJnlLine();
        UnbindSubscription(LoggerMessage);
    end;
}
