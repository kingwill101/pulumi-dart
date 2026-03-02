// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SystemTopicEventSubscriptionAdvancedFilterBoolEqual {
  /// Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  final pulumi.Input<String> key;
  final pulumi.Input<bool> value;

  /// Creates a new [SystemTopicEventSubscriptionAdvancedFilterBoolEqual].
  /// [key] Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  /// [value] Required.
  SystemTopicEventSubscriptionAdvancedFilterBoolEqual({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory SystemTopicEventSubscriptionAdvancedFilterBoolEqual.fromMap(Map<String, dynamic> map) {
    return SystemTopicEventSubscriptionAdvancedFilterBoolEqual(
      key: (map['key'] as String).input(),
      value: (map['value'] as bool).input(),
    );
  }
}

