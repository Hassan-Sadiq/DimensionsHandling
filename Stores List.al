page 50510 "Stores List"
{
    Caption = 'Stores Setup';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Stores;
    CardPageID = "Store Card";
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater("All Stores")
            {
                field("Retail Channel ID"; Rec."Retail Channel ID")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Channel Type"; Rec."Channel Type")
                {
                    ApplicationArea = All;
                }
                field("Store Number"; Rec."Store Number")
                {
                    ApplicationArea = All;
                }
                field(Warehouse; Rec.Warehouse)
                {
                    ApplicationArea = All;
                }
                field("Sales Tax Group"; Rec."Sales Tax Group")
                {
                    ApplicationArea = All;
                }
                field("Default Customer"; Rec."Default Customer")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}