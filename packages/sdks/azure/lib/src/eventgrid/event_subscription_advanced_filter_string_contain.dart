// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSubscriptionAdvancedFilterStringContain {
  /// Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  final pulumi.Input<String> key;
  /// Specifies an array of values to compare to when using a multiple values operator.
  ///
  /// > **Note:** A maximum of total number of advanced filter values allowed on event subscription is 25.
  final pulumi.Input<List<String>> values;

  /// Creates a new [EventSubscriptionAdvancedFilterStringContain].
  /// [key] Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  /// [values] Specifies an array of values to compare to when using a multiple values operator.
  EventSubscriptionAdvancedFilterStringContain({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory EventSubscriptionAdvancedFilterStringContain.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionAdvancedFilterStringContain(
      key: (map['key'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

