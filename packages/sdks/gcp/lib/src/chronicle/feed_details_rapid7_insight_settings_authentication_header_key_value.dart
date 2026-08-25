// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsRapid7InsightSettingsAuthenticationHeaderKeyValue {
  /// Key.
  final pulumi.Input<String?>? key;
  /// Value.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? value;

  /// Creates a new [FeedDetailsRapid7InsightSettingsAuthenticationHeaderKeyValue].
  /// [key] Key.
  /// [value] Value.
  const FeedDetailsRapid7InsightSettingsAuthenticationHeaderKeyValue({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory FeedDetailsRapid7InsightSettingsAuthenticationHeaderKeyValue.fromMap(Map<String, dynamic> map) {
    return FeedDetailsRapid7InsightSettingsAuthenticationHeaderKeyValue(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
