// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsSentineloneAlertSettingsAuthenticationHeaderKeyValue {
  /// Key.
  final pulumi.Input<String?>? key;
  /// Value.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? value;

  /// Creates a new [FeedDetailsSentineloneAlertSettingsAuthenticationHeaderKeyValue].
  /// [key] Key.
  /// [value] Value.
  const FeedDetailsSentineloneAlertSettingsAuthenticationHeaderKeyValue({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory FeedDetailsSentineloneAlertSettingsAuthenticationHeaderKeyValue.fromMap(Map<String, dynamic> map) {
    return FeedDetailsSentineloneAlertSettingsAuthenticationHeaderKeyValue(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
