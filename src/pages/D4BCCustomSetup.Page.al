page 50000 "D4BC Custom Setup"
{

    PageType = Card;
    SourceTable = "D4BC Custom Setup";
    Caption = 'Custom Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;
    ApplicationArea = All;


    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                //You might want to add fields here
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.InsertIfNotExists();
    end;

}
