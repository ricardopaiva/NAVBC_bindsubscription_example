pageextension 50102 "CustomerListExt" extends "Customer List"
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
                    Caption = 'Post Gen. Jnl. Line - No Bind';
                    RunObject = codeunit "Example 2 - No Bind";
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Process;
                }

                Action(MyAction2)
                {
                    ApplicationArea = All;
                    Caption = 'Post Gen. Jnl. Line - Bind';
                    RunObject = codeunit "Example 2 - Bind";
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedCategory = Process;
                }
            }
        }
    }

}