pageextension 50101 "CustomerListExt" extends "Customer List"
{
    actions
    {
        addlast(Creation)
        {
            group(MyActionGroup)
            {
                Action(MyAction1)
                {
                    ApplicationArea = All;
                    Caption = 'Print Report - No Bind';
                    RunObject = codeunit "Will Print Original Report";
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Process;
                }

                Action(MyAction2)
                {
                    ApplicationArea = All;
                    Caption = 'Print Report - Bind';
                    RunObject = codeunit "Will Print Substituted Report";
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Process;
                }
            }
        }
    }

}