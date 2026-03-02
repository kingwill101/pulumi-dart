// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_billboard_billboard_settings_grid_options.dart';
import 'one_dashboard_page_widget_billboard_billboard_settings_link.dart';
import 'one_dashboard_page_widget_billboard_billboard_settings_visual.dart';

class OneDashboardPageWidgetBillboardBillboardSettings {
  /// (Optional) A nested block that configures grid layout options for the billboard widget. This block supports:
  final pulumi.Input<OneDashboardPageWidgetBillboardBillboardSettingsGridOptions>? gridOptions;
  /// (Optional) A nested block that configures clickable links for the billboard widget. This block supports:
  final pulumi.Input<OneDashboardPageWidgetBillboardBillboardSettingsLink>? link;
  /// (Optional) A nested block that configures the visual settings of the billboard widget. This block supports:
  final pulumi.Input<OneDashboardPageWidgetBillboardBillboardSettingsVisual>? visual;

  /// Creates a new [OneDashboardPageWidgetBillboardBillboardSettings].
  /// [gridOptions] (Optional) A nested block that configures grid layout options for the billboard widget. This block supports:
  /// [link] (Optional) A nested block that configures clickable links for the billboard widget. This block supports:
  /// [visual] (Optional) A nested block that configures the visual settings of the billboard widget. This block supports:
  OneDashboardPageWidgetBillboardBillboardSettings({
    this.gridOptions,
    this.link,
    this.visual,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gridOptions': ?pulumi.Input.mapOptionalInputValue<OneDashboardPageWidgetBillboardBillboardSettingsGridOptions, Map<String, dynamic>>(gridOptions, (value) => value.toMap()),
      'link': ?pulumi.Input.mapOptionalInputValue<OneDashboardPageWidgetBillboardBillboardSettingsLink, Map<String, dynamic>>(link, (value) => value.toMap()),
      'visual': ?pulumi.Input.mapOptionalInputValue<OneDashboardPageWidgetBillboardBillboardSettingsVisual, Map<String, dynamic>>(visual, (value) => value.toMap()),
    };
  }

  factory OneDashboardPageWidgetBillboardBillboardSettings.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetBillboardBillboardSettings(
      gridOptions: map['gridOptions'] == null ? null : (OneDashboardPageWidgetBillboardBillboardSettingsGridOptions.fromMap((map['gridOptions'] as Map).cast<String, dynamic>())).input(),
      link: map['link'] == null ? null : (OneDashboardPageWidgetBillboardBillboardSettingsLink.fromMap((map['link'] as Map).cast<String, dynamic>())).input(),
      visual: map['visual'] == null ? null : (OneDashboardPageWidgetBillboardBillboardSettingsVisual.fromMap((map['visual'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

