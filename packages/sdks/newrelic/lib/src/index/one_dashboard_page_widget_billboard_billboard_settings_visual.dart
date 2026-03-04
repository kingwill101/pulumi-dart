// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardPageWidgetBillboardBillboardSettingsVisual {
  /// (Optional) Controls the alignment of the billboard content. Accepted values are `inline` or `stacked`.
  final pulumi.Input<String>? alignment;

  /// (Optional) Controls how the billboard content is displayed. Accepted values are `auto`, `all`, `none`, `label` or `value`.
  final pulumi.Input<String>? display;

  /// Creates a new [OneDashboardPageWidgetBillboardBillboardSettingsVisual].
  /// [alignment] (Optional) Controls the alignment of the billboard content. Accepted values are `inline` or `stacked`.
  /// [display] (Optional) Controls how the billboard content is displayed. Accepted values are `auto`, `all`, `none`, `label` or `value`.
  OneDashboardPageWidgetBillboardBillboardSettingsVisual({
    this.alignment,
    this.display,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'alignment': ?alignment, 'display': ?display};
  }

  factory OneDashboardPageWidgetBillboardBillboardSettingsVisual.fromMap(
    Map<String, dynamic> map,
  ) {
    return OneDashboardPageWidgetBillboardBillboardSettingsVisual(
      alignment: (() {
        final guardedValue = map['alignment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      display: (() {
        final guardedValue = map['display'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
