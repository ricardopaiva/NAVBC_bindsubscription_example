codeunit 50103 "Will Print Substituted Report"
{
    trigger OnRun()
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SubstituteTheReport: Codeunit "Substitute The Report";
    begin
        SalesInvoiceHeader.FindFirst();
        BindSubscription(SubstituteTheReport);
        REPORT.RunModal(REPORT::"Sales - Invoice", true, true, SalesInvoiceHeader);
        UnbindSubscription(SubstituteTheReport);  // Not necessary because when SubstituteTheReport codeunit goes out of scope, all bindings are removed.
    end;
}
