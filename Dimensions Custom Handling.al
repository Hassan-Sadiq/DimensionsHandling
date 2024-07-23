codeunit 50513 "Dimensions Custom Handling"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::DimensionManagement, 'OnAfterSetupObjectNoList', '', true, true)]
    procedure OnAfterSetupObjectNoList(var TempAllObjWithCaption: Record AllObjWithCaption temporary)
    var
        DimMgt: Codeunit DimensionManagement;
    begin
        DimMgt.InsertObject(TempAllObjWithCaption, DATABASE::Stores);
    end;
}