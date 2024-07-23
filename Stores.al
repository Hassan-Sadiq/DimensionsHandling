table 50508 "Stores"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Retail Channel ID"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Name"; Text[150])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Channel Type"; Enum "Channel Type")
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Store Number"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Warehouse"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Sales Tax Group"; Code[100])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Default Customer"; Code[100])
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Store Time Zone"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Language"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Currency"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Opening From"; Time)
        {
            DataClassification = ToBeClassified;
            InitValue = 120000T;
        }
        field(12; "Opening To"; Time)
        {
            DataClassification = ToBeClassified;
            InitValue = 220000T;
        }
        field(13; "Store Prefix"; Code[3])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Retail Channel ID")
        {
            Clustered = true;
        }
    }

    trigger OnDelete()
    var
        deletedItemsLog: Record "Deletions Log";
    begin
        deletedItemsLog.Init();
        deletedItemsLog."Record ID" := Rec.SystemId;
        deletedItemsLog."Table Name" := 'Stores';
        deletedItemsLog.Insert();
    end;
}