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
    return <String, dynamic>{
      'newTab': ?newTab,
      'title': ?title,
      'url': ?url,
    };
  }

  factory OneDashboardPageWidgetBillboardBillboardSettingsLink.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetBillboardBillboardSettingsLink(
      newTab: map['newTab'] == null ? null : (map['newTab'] as bool).input(),
      title: map['title'] == null ? null : (map['title'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

