// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'widget_config_homepage_setting_shortcut.dart';

class WidgetConfigHomepageSetting {
  /// The shortcuts to display on the homepage.
  /// Structure is documented below.
  final pulumi.Input<List<WidgetConfigHomepageSettingShortcut>>? shortcuts;

  /// Creates a new [WidgetConfigHomepageSetting].
  /// [shortcuts] The shortcuts to display on the homepage.
  const WidgetConfigHomepageSetting({
    this.shortcuts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shortcuts': ?pulumi.Input.mapOptionalInputValue<List<WidgetConfigHomepageSettingShortcut>, List<Map<String, dynamic>>>(shortcuts, (value) => pulumi.Input.encodeList<WidgetConfigHomepageSettingShortcut, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WidgetConfigHomepageSetting.fromMap(Map<String, dynamic> map) {
    return WidgetConfigHomepageSetting(
      shortcuts: (() { final guardedValue = map['shortcuts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WidgetConfigHomepageSettingShortcut>(guardedValue, (value) => WidgetConfigHomepageSettingShortcut.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

