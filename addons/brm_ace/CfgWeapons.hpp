class CfgWeapons {
    class CBA_MiscItem_ItemInfo;
    class ACE_ItemCore;
    class ACE_Defibrillator: ACE_ItemCore {
        scope = 2;
        displayName = CSTRING(Defibrillator_Display);
        model = "\A3\Structures_F_EPA\Items\Medical\Defibrillator_F.p3d";
        picture = QUOTE(PATHTOF(ui\items\Defibrillator_x_ca.paa));
        descriptionShort = CSTRING(Defibrillator_Desc_Short);
        descriptionUse = CSTRING(Defibrillator_Desc_Use);
        class ItemInfo: CBA_MiscItem_ItemInfo {
            mass = 30;
        };
    };
};
