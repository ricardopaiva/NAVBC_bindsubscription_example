codeunit 50101 "Substitute The Report"
{
    EventSubscriberInstance = Manual;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"ReportManagement", 'OnAfterSubstituteReport', '', true, true)]
    local procedure "ReportManagement_OnAfterSubstituteReport"(ReportId: Integer; RunMode: Option; RequestPageXml: Text; RecordRef: RecordRef; var NewReportId: Integer)
    begin
        IF ReportId = REPORT::"Sales - Invoice" THEN
            NewReportId := REPORT::"Standard Sales - Invoice";
    end;
}