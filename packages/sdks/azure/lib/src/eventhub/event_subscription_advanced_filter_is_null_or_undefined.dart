// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSubscriptionAdvancedFilterIsNullOrUndefined {
  /// Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  final pulumi.Input<String> key;

  /// Creates a new [EventSubscriptionAdvancedFilterIsNullOrUndefined].
  /// [key] Specifies the field within the event data that you want to use for filtering. Type of the field can be a number, boolean, or string.
  const EventSubscriptionAdvancedFilterIsNullOrUndefined({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
    };
  }

  factory EventSubscriptionAdvancedFilterIsNullOrUndefined.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionAdvancedFilterIsNullOrUndefined(
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}

