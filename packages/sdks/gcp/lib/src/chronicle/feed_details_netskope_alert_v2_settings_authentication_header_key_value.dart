// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsNetskopeAlertV2SettingsAuthenticationHeaderKeyValue {
  /// Key.
  final pulumi.Input<String?>? key;
  /// Value.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? value;

  /// Creates a new [FeedDetailsNetskopeAlertV2SettingsAuthenticationHeaderKeyValue].
  /// [key] Key.
  /// [value] Value.
  const FeedDetailsNetskopeAlertV2SettingsAuthenticationHeaderKeyValue({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory FeedDetailsNetskopeAlertV2SettingsAuthenticationHeaderKeyValue.fromMap(Map<String, dynamic> map) {
    return FeedDetailsNetskopeAlertV2SettingsAuthenticationHeaderKeyValue(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
