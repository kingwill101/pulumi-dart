// ignore_for_file: unused_element, unnecessary_cast

import 'one_dashboard_page_widget_billboard_billboard_settings_grid_options.dart';
import 'one_dashboard_page_widget_billboard_billboard_settings_link.dart';
import 'one_dashboard_page_widget_billboard_billboard_settings_visual.dart';

class OneDashboardPageWidgetBillboardBillboardSettings {
  /// (Optional) A nested block that configures grid layout options for the billboard widget. This block supports:
  final OneDashboardPageWidgetBillboardBillboardSettingsGridOptions? gridOptions;
  /// (Optional) A nested block that configures clickable links for the billboard widget. This block supports:
  final OneDashboardPageWidgetBillboardBillboardSettingsLink? link;
  /// (Optional) A nested block that configures the visual settings of the billboard widget. This block supports:
  final OneDashboardPageWidgetBillboardBillboardSettingsVisual? visual;

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
      'gridOptions': ?gridOptions == null ? null : gridOptions!.toMap(),
      'link': ?link == null ? null : link!.toMap(),
      'visual': ?visual == null ? null : visual!.toMap(),
    };
  }

  factory OneDashboardPageWidgetBillboardBillboardSettings.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetBillboardBillboardSettings(
      gridOptions: map['gridOptions'] == null ? null : OneDashboardPageWidgetBillboardBillboardSettingsGridOptions.fromMap((map['gridOptions'] as Map).cast<String, dynamic>()),
      link: map['link'] == null ? null : OneDashboardPageWidgetBillboardBillboardSettingsLink.fromMap((map['link'] as Map).cast<String, dynamic>()),
      visual: map['visual'] == null ? null : OneDashboardPageWidgetBillboardBillboardSettingsVisual.fromMap((map['visual'] as Map).cast<String, dynamic>()),
    );
  }
}

