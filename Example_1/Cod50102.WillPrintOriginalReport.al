codeunit 50102 "Will Print Original Report"
{
    trigger OnRun()
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
    begin
        SalesInvoiceHeader.FindFirst();
        REPORT.RunModal(REPORT::"Sales - Invoice", true, true, SalesInvoiceHeader);
    end;
}
