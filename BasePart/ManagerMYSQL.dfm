object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1052#1077#1085#1077#1076#1078#1077#1088' '#1101#1083#1077#1084#1077#1085#1090#1086#1074' MySQL. '
  ClientHeight = 824
  ClientWidth = 976
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    976
    824)
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 518
    Top = 23
    Width = 443
    Height = 218
    Proportional = True
    Stretch = True
  end
  object Label10: TLabel
    Left = 676
    Top = 4
    Width = 157
    Height = 13
    Caption = #1048#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1086#1077' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
  end
  object Label12: TLabel
    Left = 530
    Top = 246
    Width = 37
    Height = 13
    Caption = 'Label11'
  end
  object BitBtn1: TBitBtn
    Left = 413
    Top = 2
    Width = 63
    Height = 20
    Hint = #1053#1072#1081#1090#1080' '#1074' ImBase.'
    Anchors = [akTop, akRight]
    Caption = 'ImBase'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object btn1: TBitBtn
    Left = 396
    Top = 800
    Width = 50
    Height = 20
    Caption = #1053#1072#1079#1072#1076
    Enabled = False
    TabOrder = 1
    OnClick = btn1Click
  end
  object BitBtn6: TBitBtn
    Left = 452
    Top = 800
    Width = 45
    Height = 20
    Caption = #1044#1072#1083#1077#1077' '
    Enabled = False
    TabOrder = 2
    OnClick = BitBtn6Click
  end
  object BitBtn7: TBitBtn
    Left = 503
    Top = 802
    Width = 50
    Height = 20
    Caption = #1043#1086#1090#1086#1074#1086
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn7Click
  end
  object Button1: TButton
    Left = 559
    Top = 800
    Width = 58
    Height = 20
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 4
    OnClick = Button1Click
  end
  object AdvStringGrid4: TAdvStringGrid
    Left = 4
    Top = 22
    Width = 472
    Height = 180
    Cursor = crDefault
    ColCount = 2
    DefaultColWidth = 100
    DrawingStyle = gdsClassic
    RowCount = 8
    ScrollBars = ssBoth
    TabOrder = 5
    HoverRowCells = [hcNormal, hcSelected]
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ControlLook.FixedGradientHoverFrom = clGray
    ControlLook.FixedGradientHoverTo = clWhite
    ControlLook.FixedGradientDownFrom = clGray
    ControlLook.FixedGradientDownTo = clSilver
    ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownHeader.Font.Color = clWindowText
    ControlLook.DropDownHeader.Font.Height = -11
    ControlLook.DropDownHeader.Font.Name = 'Tahoma'
    ControlLook.DropDownHeader.Font.Style = []
    ControlLook.DropDownHeader.Visible = True
    ControlLook.DropDownHeader.Buttons = <>
    ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownFooter.Font.Color = clWindowText
    ControlLook.DropDownFooter.Font.Height = -11
    ControlLook.DropDownFooter.Font.Name = 'Tahoma'
    ControlLook.DropDownFooter.Font.Style = []
    ControlLook.DropDownFooter.Visible = True
    ControlLook.DropDownFooter.Buttons = <>
    Filter = <>
    FilterDropDown.Font.Charset = DEFAULT_CHARSET
    FilterDropDown.Font.Color = clWindowText
    FilterDropDown.Font.Height = -11
    FilterDropDown.Font.Name = 'Tahoma'
    FilterDropDown.Font.Style = []
    FilterDropDown.TextChecked = 'Checked'
    FilterDropDown.TextUnChecked = 'Unchecked'
    FilterDropDownClear = '(All)'
    FilterEdit.TypeNames.Strings = (
      'Starts with'
      'Ends with'
      'Contains'
      'Not contains'
      'Equal'
      'Not equal'
      'Clear')
    FixedColWidth = 100
    FixedRowHeight = 22
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    HoverButtons.Buttons = <>
    HoverButtons.Position = hbLeftFromColumnLeft
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'Tahoma'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -11
    PrintSettings.FixedFont.Name = 'Tahoma'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'Tahoma'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'Tahoma'
    PrintSettings.FooterFont.Style = []
    PrintSettings.PageNumSep = '/'
    RowHeaders.Strings = (
      #1055#1086#1083#1077
      'ImKey'
      #1050#1083#1072#1089#1089
      #1060#1091#1085#1082'. '#1085#1072#1079#1085'.'
      #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      'TU/GOST'
      'HelpURL'
      #1058#1069#1054
      ''
      '')
    SearchFooter.FindNextCaption = 'Find &next'
    SearchFooter.FindPrevCaption = 'Find &previous'
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -11
    SearchFooter.Font.Name = 'Tahoma'
    SearchFooter.Font.Style = []
    SearchFooter.HighLightCaption = 'Highlight'
    SearchFooter.HintClose = 'Close'
    SearchFooter.HintFindNext = 'Find next occurrence'
    SearchFooter.HintFindPrev = 'Find previous occurrence'
    SearchFooter.HintHighlight = 'Highlight occurrences'
    SearchFooter.MatchCaseCaption = 'Match case'
    ShowDesignHelper = False
    SortSettings.DefaultFormat = ssAutomatic
    Version = '7.4.6.4'
    ColWidths = (
      100
      367)
  end
  object AdvPageControl1: TAdvPageControl
    Left = 8
    Top = 265
    Width = 960
    Height = 535
    ActivePage = advtbsht1
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    TabBackGroundColor = clBtnFace
    TabMargin.RightMargin = 0
    TabOverlap = 0
    Version = '2.0.0.4'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabOrder = 6
    object advtbsht1: TAdvTabSheet
      Caption = 'advtbsht1'
      Color = clBtnFace
      ColorTo = clNone
      TabVisible = False
      TabColor = clBtnFace
      TabColorTo = clNone
      object lbl3: TLabel
        Left = 3
        Top = 3
        Width = 122
        Height = 13
        Caption = #1054#1087#1088#1077#1076#1077#1083#1080#1090#1100' '#1082#1072#1090#1077#1075#1086#1088#1080#1102
      end
      object Image1: TImage
        Left = 506
        Top = 20
        Width = 443
        Height = 474
        Proportional = True
        Stretch = True
      end
      object Label9: TLabel
        Left = 664
        Top = 1
        Width = 105
        Height = 13
        Caption = #1054#1073#1097#1077#1077' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
      end
      object Label11: TLabel
        Left = 506
        Top = 500
        Width = 37
        Height = 13
        Caption = 'Label11'
      end
      object KategoryTree1: TVirtualStringTree
        Left = 5
        Top = 20
        Width = 459
        Height = 165
        Header.AutoSizeIndex = 0
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        Header.Options = [hoColumnResize, hoDrag, hoShowSortGlyphs, hoVisible, hoFullRepaintOnResize]
        TabOrder = 0
        OnGetText = KategoryTree1GetText
        OnNodeClick = KategoryTree1NodeClick
        Columns = <
          item
            Options = [coAllowClick, coDraggable, coEnabled, coParentBidiMode, coParentColor, coResizable, coShowDropMark, coVisible, coSmartResize, coAllowFocus]
            Position = 0
            Width = 200
            WideText = #1058#1080#1087
          end
          item
            Position = 1
            Width = 150
            WideText = #1050#1083#1072#1089#1089
          end
          item
            Position = 2
            WideText = #1055#1086' '#1053#1058#1044
          end>
      end
      object Button2: TButton
        Left = 131
        Top = 0
        Width = 60
        Height = 18
        Caption = #1048#1079#1074#1083#1077#1095#1100
        TabOrder = 1
        OnClick = Button2Click
      end
      object advstr2: TAdvStringGrid
        Left = 3
        Top = 190
        Width = 461
        Height = 335
        Cursor = crDefault
        ColCount = 2
        DefaultColWidth = 350
        DrawingStyle = gdsClassic
        RowCount = 15
        FixedRows = 0
        PopupMenu = PopupMenu1
        ScrollBars = ssBoth
        TabOrder = 2
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDown.TextChecked = 'Checked'
        FilterDropDown.TextUnChecked = 'Unchecked'
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
        FixedColWidth = 100
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        RowHeaders.Strings = (
          #1055#1086#1083#1077
          #1058#1080#1087
          #1050#1072#1090#1077#1075#1086#1088#1080#1103
          #1050#1072#1090#1077#1075#1086#1088#1080#1103'1'
          #1050#1072#1090#1077#1075#1086#1088#1080#1103'2'
          #1050#1072#1090#1077#1075#1086#1088#1080#1103'3'
          #1050#1072#1090#1077#1075#1086#1088#1080#1103'4'
          #1050#1083#1072#1089#1089
          #1060#1091#1085#1082'. '#1085#1072#1079#1085'.'
          #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          'Value'
          'Tolerance'
          'Power/Voltage'
          #1055#1086#1083#1085'. '#1085#1072#1080#1084'.'
          #1054#1073#1097#1080#1077' '#1053#1058#1044)
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.4.6.4'
        ColWidths = (
          100
          350)
      end
      object Button3: TButton
        Left = 197
        Top = 0
        Width = 60
        Height = 18
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        Enabled = False
        TabOrder = 3
        OnClick = Button2Click
      end
      object btn5: TBitBtn
        Left = 927
        Top = 500
        Width = 22
        Height = 22
        Hint = 'Lj,fdbnm yjdsq afqk'
        Caption = '...'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = btn4Click
      end
    end
    object advtbsht2: TAdvTabSheet
      Caption = 'advtbsht2'
      Color = clBtnFace
      ColorTo = clNone
      TabVisible = False
      TabColor = clBtnFace
      TabColorTo = clNone
      object Label2: TLabel
        Left = 560
        Top = 3
        Width = 92
        Height = 16
        Caption = #1044#1072#1085#1085#1099#1077' Imbase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl1: TLabel
        Left = 17
        Top = 135
        Width = 71
        Height = 16
        Caption = #1053#1086#1084#1077#1088' '#1050#1056#1056
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object AdvStringGrid13: TAdvStringGrid
        Left = 5
        Top = 20
        Width = 378
        Height = 115
        Cursor = crDefault
        ColCount = 2
        DefaultColWidth = 100
        DrawingStyle = gdsClassic
        RowCount = 5
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDown.TextChecked = 'Checked'
        FilterDropDown.TextUnChecked = 'Unchecked'
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
        FixedColWidth = 100
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        RowHeaders.Strings = (
          #1055#1086#1083#1077
          #1058#1077#1084#1087'. '#1093#1088'. '#1087#1086#1074'.'
          #1058#1077#1084#1087'. '#1088#1072#1073'. '#1087#1086#1074'.'
          #1058#1077#1084#1087'. '#1088#1072#1073'. '#1087#1086#1085'.'
          #1058#1077#1084#1087'. '#1093#1088'. '#1087#1086#1085'.'
          '')
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.4.6.4'
        ColWidths = (
          100
          275)
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 104
        Top = 135
        Width = 279
        Height = 21
        KeyField = 'idCARDS'
        ListField = 'CARTNUMBER'
        ListSource = DataModule2.KRRSource
        TabOrder = 1
        OnCloseUp = DBLookupComboBox1CloseUp
      end
      object AdvStringGrid6: TAdvStringGrid
        Left = 420
        Top = 20
        Width = 378
        Height = 138
        Cursor = crDefault
        ColCount = 2
        DefaultColWidth = 100
        DrawingStyle = gdsClassic
        RowCount = 6
        ScrollBars = ssBoth
        TabOrder = 2
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDown.TextChecked = 'Checked'
        FilterDropDown.TextUnChecked = 'Unchecked'
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
        FixedColWidth = 100
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        RowHeaders.Strings = (
          #1055#1086#1083#1077
          #1058#1077#1084#1087'. '#1093#1088'. '#1087#1086#1074'.'
          #1058#1077#1084#1087'. '#1088#1072#1073'. '#1087#1086#1074'.'
          #1058#1077#1084#1087'. '#1088#1072#1073'. '#1087#1086#1085'.'
          #1058#1077#1084#1087'. '#1093#1088'. '#1087#1086#1085'.'
          #1053#1086#1084#1077#1088' '#1050#1056#1056)
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.4.6.4'
        ColWidths = (
          100
          275)
      end
      object mmo1: TMemo
        Left = 5
        Top = 162
        Width = 378
        Height = 39
        Lines.Strings = (
          #1050#1072#1088#1090#1072' '#1088#1072#1073#1086#1095#1080#1093' '#1088#1077#1078#1080#1084#1086#1074'.')
        TabOrder = 3
      end
      object BitBtn4: TBitBtn
        Left = 391
        Top = 64
        Width = 22
        Height = 22
        Glyph.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          04000000000078000000C40E0000C40E00001000000010000000C0C0C0008000
          00000000000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF340000000000000000000000
          0000000000000000000000001100000000000001100222222000000110000000
          0000000110022222200000001100000000000000000000000000000011000000
          0000000110022222200000011000000000000001100222222000000011000000
          000000000000000000000000000000000000}
        TabOrder = 4
        OnClick = BitBtn4Click
      end
    end
    object advtbsht3: TAdvTabSheet
      Caption = 'advtbsht3'
      Color = clBtnFace
      ColorTo = clNone
      TabVisible = False
      TabColor = clBtnFace
      TabColorTo = clNone
      object Label1: TLabel
        Left = 560
        Top = 3
        Width = 92
        Height = 16
        Caption = #1044#1072#1085#1085#1099#1077' Imbase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object AdvStringGrid9: TAdvStringGrid
        Left = 420
        Top = 20
        Width = 378
        Height = 115
        Cursor = crDefault
        ColCount = 2
        DefaultColWidth = 100
        DrawingStyle = gdsClassic
        RowCount = 5
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDown.TextChecked = 'Checked'
        FilterDropDown.TextUnChecked = 'Unchecked'
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
        FixedColWidth = 100
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        RowHeaders.Strings = (
          #1055#1086#1083#1077
          'Footprint Ref'
          'Footprint Path'
          'Library Ref'
          'Library Path'
          '')
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.4.6.4'
        ColWidths = (
          100
          276)
        RowHeights = (
          22
          22
          22
          22
          22)
      end
      object AdvStringGrid8: TAdvStringGrid
        Left = 5
        Top = 20
        Width = 375
        Height = 115
        Cursor = crDefault
        ColCount = 2
        DefaultColWidth = 100
        DrawingStyle = gdsClassic
        RowCount = 5
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        ScrollBars = ssBoth
        TabOrder = 1
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDown.TextChecked = 'Checked'
        FilterDropDown.TextUnChecked = 'Unchecked'
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
        FixedColWidth = 100
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        RowHeaders.Strings = (
          #1055#1086#1083#1077
          'Footprint Ref'
          'Footprint Path'
          'Library Ref'
          'Library Path')
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.4.6.4'
        ColWidths = (
          100
          272)
      end
      object BitBtn5: TBitBtn
        Left = 391
        Top = 45
        Width = 22
        Height = 22
        Glyph.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          04000000000078000000C40E0000C40E00001000000010000000C0C0C0008000
          00000000000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF340000000000000000000000
          0000000000000000000000001100000000000001100222222000000110000000
          0000000110022222200000001100000000000000000000000000000011000000
          0000000110022222200000011000000000000001100222222000000011000000
          000000000000000000000000000000000000}
        TabOrder = 2
        OnClick = BitBtn5Click
      end
    end
    object advtbsht4: TAdvTabSheet
      Caption = 'advtbsht4'
      Color = clBtnFace
      ColorTo = clNone
      TabVisible = False
      TabColor = clBtnFace
      TabColorTo = clNone
      object Label3: TLabel
        Left = 568
        Top = 3
        Width = 92
        Height = 16
        Caption = #1044#1072#1085#1085#1099#1077' Imbase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object AdvStringGrid10: TAdvStringGrid
        Left = 420
        Top = 20
        Width = 378
        Height = 115
        Cursor = crDefault
        ColCount = 2
        DefaultColWidth = 100
        DrawingStyle = gdsClassic
        RowCount = 5
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDown.TextChecked = 'Checked'
        FilterDropDown.TextUnChecked = 'Unchecked'
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
        FixedColWidth = 100
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        RowHeaders.Strings = (
          #1055#1086#1083#1077
          'Type'
          'PCADSymbol'
          'PCADPattern'
          'PCADLibrary'
          #1053#1086#1084#1077#1088' '#1050#1056#1056
          '')
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.4.6.4'
        ColWidths = (
          100
          276)
        RowHeights = (
          22
          22
          22
          22
          22)
      end
      object AdvStringGrid11: TAdvStringGrid
        Left = 3
        Top = 20
        Width = 378
        Height = 115
        Cursor = crDefault
        ColCount = 2
        DefaultColWidth = 100
        DrawingStyle = gdsClassic
        RowCount = 5
        ScrollBars = ssBoth
        TabOrder = 1
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDown.TextChecked = 'Checked'
        FilterDropDown.TextUnChecked = 'Unchecked'
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
        FixedColWidth = 100
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        RowHeaders.Strings = (
          #1055#1086#1083#1077
          'Type'
          'PCADSymbol'
          'PCADPattern'
          'PCADLibrary'
          #1053#1086#1084#1077#1088' '#1050#1056#1056)
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.4.6.4'
        ColWidths = (
          100
          272)
      end
      object BitBtn8: TBitBtn
        Left = 391
        Top = 45
        Width = 22
        Height = 22
        Glyph.Data = {
          EE000000424DEE000000000000007600000028000000100000000F0000000100
          04000000000078000000C40E0000C40E00001000000010000000C0C0C0008000
          00000000000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF340000000000000000000000
          0000000000000000000000001100000000000001100222222000000110000000
          0000000110022222200000001100000000000000000000000000000011000000
          0000000110022222200000011000000000000001100222222000000011000000
          000000000000000000000000000000000000}
        TabOrder = 2
        OnClick = BitBtn8Click
      end
    end
    object advtbsht5: TAdvTabSheet
      Caption = 'advtbsht5'
      Color = clBtnFace
      ColorTo = clNone
      TabVisible = False
      TabColor = clBtnFace
      TabColorTo = clNone
      object Label5: TLabel
        Left = 96
        Top = 3
        Width = 114
        Height = 13
        Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099':'
      end
      object AdvStringGrid12: TAdvStringGrid
        Left = 3
        Top = 22
        Width = 382
        Height = 339
        Cursor = crDefault
        ColCount = 2
        DefaultColWidth = 100
        DrawingStyle = gdsClassic
        RowCount = 15
        ScrollBars = ssBoth
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        OnClickCell = AdvStringGrid12ClickCell
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          #1055#1072#1088#1072#1084#1077#1090#1088
          #1047#1085#1072#1095#1077#1085#1080#1077)
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDown.TextChecked = 'Checked'
        FilterDropDown.TextUnChecked = 'Unchecked'
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
        FixedColWidth = 100
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'Tahoma'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'Tahoma'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'Tahoma'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'Tahoma'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        RowHeaders.Strings = (
          #1055#1072#1088#1072#1084#1077#1090#1088)
        SearchFooter.FindNextCaption = 'Find &next'
        SearchFooter.FindPrevCaption = 'Find &previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'Tahoma'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurrence'
        SearchFooter.HintFindPrev = 'Find previous occurrence'
        SearchFooter.HintHighlight = 'Highlight occurrences'
        SearchFooter.MatchCaseCaption = 'Match case'
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        Version = '7.4.6.4'
        ColWidths = (
          100
          275)
      end
    end
    object advtbsht6: TAdvTabSheet
      Caption = 'advtbsht6'
      Color = clBtnFace
      ColorTo = clNone
      TabVisible = False
      TabColor = clBtnFace
      TabColorTo = clNone
      object GroupBox1: TGroupBox
        Left = 0
        Top = 303
        Width = 740
        Height = 115
        Caption = #1060#1072#1081#1083' '#1058#1069#1054
        TabOrder = 0
        object TAOlbl: TLabel
          Left = 554
          Top = 10
          Width = 88
          Height = 13
          Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085
        end
        object Edit1: TEdit
          Left = 19
          Top = 80
          Width = 674
          Height = 21
          TabOrder = 0
        end
        object BitBtn2: TBitBtn
          Left = 699
          Top = 80
          Width = 22
          Height = 22
          Hint = 'Lj,fdbnm yjdsq afqk'
          Caption = '...'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BitBtn2Click
        end
        object Edit2: TEdit
          Left = 19
          Top = 55
          Width = 674
          Height = 21
          TabOrder = 2
        end
        object Edit6: TEdit
          Left = 19
          Top = 30
          Width = 481
          Height = 21
          TabOrder = 3
        end
        object TAOlook: TDBLookupComboBox
          Left = 506
          Top = 30
          Width = 186
          Height = 21
          KeyField = 'idTAO'
          ListField = 'TAOName'
          ListSource = DataModule2.TAOds
          TabOrder = 4
        end
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 182
        Width = 737
        Height = 115
        Caption = #1060#1072#1081#1083' '#1076#1072#1085#1085#1099#1093
        TabOrder = 1
        object Datlbl: TLabel
          Left = 551
          Top = 10
          Width = 88
          Height = 13
          Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085
        end
        object Edit4: TEdit
          Left = 15
          Top = 80
          Width = 674
          Height = 21
          TabOrder = 0
        end
        object BitBtn3: TBitBtn
          Left = 695
          Top = 82
          Width = 22
          Height = 22
          Hint = 'Lj,fdbnm yjdsq afqk'
          Caption = '...'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BitBtn3Click
        end
        object Edit5: TEdit
          Left = 15
          Top = 30
          Width = 481
          Height = 21
          TabOrder = 2
        end
        object Edit3: TEdit
          Left = 15
          Top = 55
          Width = 674
          Height = 21
          TabOrder = 3
        end
        object datalook: TDBLookupComboBox
          Left = 502
          Top = 30
          Width = 186
          Height = 21
          KeyField = 'idDatashets'
          ListField = 'DatashetName'
          ListSource = DataModule2.SHetds
          TabOrder = 4
        end
      end
      object grp2: TGroupBox
        Left = 3
        Top = 96
        Width = 737
        Height = 80
        Caption = #1060#1080#1088#1084#1072' '#1080#1079#1075#1086#1090#1086#1074#1080#1090#1077#1083#1100' '#1069#1056#1048
        Color = clGradientInactiveCaption
        Enabled = False
        ParentBackground = False
        ParentColor = False
        TabOrder = 2
        object Label7: TLabel
          Left = 16
          Top = 24
          Width = 47
          Height = 16
          Caption = #1057#1090#1088#1072#1085#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 19
          Top = 46
          Width = 44
          Height = 16
          Caption = #1060#1080#1088#1084#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 69
          Top = 46
          Width = 621
          Height = 21
          KeyField = 'idFirms'
          ListField = 'FirmNAME'
          ListSource = DataModule2.Firmds2
          TabOrder = 0
          OnClick = DBLookupComboBox7Click
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 69
          Top = 19
          Width = 621
          Height = 21
          KeyField = 'idStrani'
          ListField = 'Strana'
          ListSource = DataModule2.dsStrana2
          TabOrder = 1
        end
      end
      object grp1: TGroupBox
        Left = 3
        Top = 3
        Width = 737
        Height = 87
        Caption = #1060#1080#1088#1084#1072' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082' '#1069#1056#1048
        Color = clMenu
        ParentBackground = False
        ParentColor = False
        TabOrder = 3
        object Label6: TLabel
          Left = 16
          Top = 15
          Width = 47
          Height = 16
          Caption = #1057#1090#1088#1072#1085#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 16
          Top = 45
          Width = 44
          Height = 16
          Caption = #1060#1080#1088#1084#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object dblkcbbFirmNAME: TDBLookupComboBox
          Left = 69
          Top = 43
          Width = 621
          Height = 21
          KeyField = 'idFirms'
          ListField = 'FirmNAME'
          ListSource = DataModule2.Firmds1
          TabOrder = 0
          OnClick = dblkcbbFirmNAMEClick
        end
        object btn3: TBitBtn
          Left = 696
          Top = 15
          Width = 22
          Height = 22
          Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1092#1072#1081#1083
          Caption = '...'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 69
          Top = 15
          Width = 621
          Height = 21
          KeyField = 'idStrani'
          ListField = 'Strana'
          ListSource = DataModule2.dsStrana1
          TabOrder = 2
        end
        object chk2: TCheckBox
          Left = 69
          Top = 67
          Width = 212
          Height = 17
          Caption = #1054#1076#1080#1085' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082' '#1080' '#1080#1079#1075#1086#1090#1086#1074#1080#1090#1077#1083#1100
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
      end
    end
    object advtbsht7: TAdvTabSheet
      Caption = 'advtbsht7'
      Color = clBtnFace
      ColorTo = clNone
      TabVisible = False
      TabColor = clBtnFace
      TabColorTo = clNone
      object lbl2: TLabel
        Left = 16
        Top = 3
        Width = 59
        Height = 16
        Caption = #1055#1077#1088#1077#1095#1085#1080' :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SpisokTree2: TVirtualStringTree
        Left = 3
        Top = 25
        Width = 406
        Height = 304
        CheckImageKind = ckXP
        Header.AutoSizeIndex = 0
        Header.Font.Charset = DEFAULT_CHARSET
        Header.Font.Color = clWindowText
        Header.Font.Height = -11
        Header.Font.Name = 'Tahoma'
        Header.Font.Style = []
        Header.Options = [hoColumnResize, hoDrag, hoShowSortGlyphs, hoVisible]
        TabOrder = 0
        OnGetText = SpisokTree2GetText
        OnInitNode = SpisokTree2InitNode
        OnNodeClick = SpisokTree2NodeClick
        Columns = <
          item
            Position = 0
            Width = 60
            WideText = #1042#1093#1086#1076#1080#1090
          end
          item
            Position = 1
            Width = 300
            WideText = #1055#1077#1088#1077#1095#1077#1085#1100
          end>
      end
    end
    object advtbsht8: TAdvTabSheet
      Caption = 'advtbsht8'
      Color = clBtnFace
      ColorTo = clNone
      TabVisible = False
      TabColor = clBtnFace
      TabColorTo = clNone
      object chk1: TCheckBox
        Left = 16
        Top = 32
        Width = 161
        Height = 17
        Caption = #1055#1088#1077#1076#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1074' '#1087#1088#1086#1077#1082#1090
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
    end
  end
  object btn2: TBitBtn
    Left = 490
    Top = 152
    Width = 22
    Height = 22
    Hint = 'Lj,fdbnm yjdsq afqk'
    Caption = '...'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn4: TBitBtn
    Left = 490
    Top = 180
    Width = 22
    Height = 22
    Hint = 'Lj,fdbnm yjdsq afqk'
    Caption = '...'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = btn4Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 208
    Width = 468
    Height = 33
    Lines.Strings = (
      #1047#1072#1084#1077#1095#1072#1085#1080#1077' ')
    TabOrder = 9
  end
  object BitBtn9: TBitBtn
    Left = 939
    Top = 243
    Width = 22
    Height = 22
    Hint = 'Lj,fdbnm yjdsq afqk'
    Caption = '...'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = BitBtn9Click
  end
  object PopupMenu1: TPopupMenu
    Left = 408
    Top = 48
    object ImBase1: TMenuItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' ImBase'
      OnClick = ImBase1Click
    end
    object Altium1: TMenuItem
      Caption = #1044#1072#1085#1085#1099#1077' '#1080#1079' '#1073#1072#1079#1099' Altium'
      OnClick = Altium1Click
    end
    object N1: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1090#1077#1093#1085#1080#1095#1077#1089#1082#1080#1077' '#1076#1072#1085#1085#1099#1077
      object N3: TMenuItem
        Caption = #1041#1072#1079#1072' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103
        OnClick = N3Click
      end
      object Imbase2: TMenuItem
        Caption = 'Imbase'
        OnClick = Imbase2Click
      end
    end
    object N2: TMenuItem
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1058#1069#1054
      object N4: TMenuItem
        Caption = #1041#1072#1079#1072' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103
        OnClick = N4Click
      end
      object ImBase3: TMenuItem
        Caption = 'ImBase'
        OnClick = ImBase3Click
      end
    end
    object N5: TMenuItem
      Caption = #1087#1088#1086#1073#1072' '
      OnClick = N5Click
    end
  end
  object MySQLds: TDataSource
    DataSet = ALTqry
    Left = 200
    Top = 217
  end
  object ADOConnection2: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="DSN=Baza2900IM;SERVER=10.20.70.12;UID=userDb;DATABASE=Altium' +
      'Dblib;PORT=3306"'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 88
    Top = 216
  end
  object ALTqry: TADOQuery
    Connection = ADOConnection2
    Parameters = <>
    Left = 288
    Top = 216
  end
end
