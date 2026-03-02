// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WidgetConfigHomepageSettingShortcutIcon {
  /// Image URL.
  final pulumi.Input<String>? url;

  /// Creates a new [WidgetConfigHomepageSettingShortcutIcon].
  /// [url] Image URL.
  WidgetConfigHomepageSettingShortcutIcon({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory WidgetConfigHomepageSettingShortcutIcon.fromMap(Map<String, dynamic> map) {
    return WidgetConfigHomepageSettingShortcutIcon(
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

