page 50509 "Store Card"
{
    PageType = Card;
    SourceTable = Stores;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
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
                    Lookup = true;
                    ApplicationArea = All;
                    TableRelation = Location.Code;
                }
                field("Sales Tax Group"; Rec."Sales Tax Group")
                {
                    ApplicationArea = All;
                    Lookup = true;
                    TableRelation = "Tax Group".Code;
                }
                field("Default Customer"; Rec."Default Customer")
                {
                    ApplicationArea = All;
                    Lookup = true;
                    TableRelation = Customer."No.";
                }
                field("Store Time Zone"; Rec."Store Time Zone")
                {
                    ApplicationArea = All;
                }
                field(Language; Rec.Language)
                {
                    ApplicationArea = All;
                    Lookup = true;
                    TableRelation = Language.Code;
                }
                field(Currency; Rec.Currency)
                {
                    ApplicationArea = All;
                    Lookup = true;
                    TableRelation = Currency.Code;
                }
                field("Store Prefix"; Rec."Store Prefix")
                {
                    ApplicationArea = All;
                }
            }
            group(Miscellaneous)
            {
                Caption = 'Miscellaneous';
                group("Operating Hours")
                {
                    Caption = 'Operating Hours';
                    field("Opening From"; Rec."Opening From")
                    {
                        Caption = 'From';
                        ApplicationArea = All;
                    }
                    field("Opening To"; Rec."Opening To")
                    {
                        Caption = 'To';
                        ApplicationArea = All;
                    }
                }
            }
        }
    }
    actions
    {
        area(Navigation)
        {
            action("Financial Dimensions")
            {
                Caption = 'Dimensions';
                Image = Dimensions;
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page "Default Dimensions";
                RunPageLink = "Table ID" = CONST(50508),
                            "No." = FIELD("Retail Channel ID");
            }
        }
    }
}