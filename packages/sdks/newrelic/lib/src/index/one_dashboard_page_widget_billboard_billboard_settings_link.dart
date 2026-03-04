// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OneDashboardPageWidgetBillboardBillboardSettingsLink {
  /// (Optional) Boolean value indicating whether the link should open in a new tab. Defaults to `false`.
  final pulumi.Input<bool>? newTab;

  /// (Optional) A human-friendly display string for this value.
  final pulumi.Input<String>? title;

  /// (Optional) The URL to navigate to when the billboard is clicked.
  final pulumi.Input<String>? url;

  /// Creates a new [OneDashboardPageWidgetBillboardBillboardSettingsLink].
  /// [newTab] (Optional) Boolean value indicating whether the link should open in a new tab. Defaults to `false`.
  /// [title] (Optional) A human-friendly display string for this value.
  /// [url] (Optional) The URL to navigate to when the billboard is clicked.
  OneDashboardPageWidgetBillboardBillboardSettingsLink({
    this.newTab,
    this.title,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'newTab': ?newTab, 'title': ?title, 'url': ?url};
  }

  factory OneDashboardPageWidgetBillboardBillboardSettingsLink.fromMap(
    Map<String, dynamic> map,
  ) {
    return OneDashboardPageWidgetBillboardBillboardSettingsLink(
      newTab: (() {
        final guardedValue = map['newTab'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      title: (() {
        final guardedValue = map['title'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
