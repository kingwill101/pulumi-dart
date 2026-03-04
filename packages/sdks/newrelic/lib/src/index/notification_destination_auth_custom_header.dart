// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotificationDestinationAuthCustomHeader {
  /// The notification property key.
  final pulumi.Input<String> key;

  /// The notification property value.
  final pulumi.Input<String> value;

  /// Creates a new [NotificationDestinationAuthCustomHeader].
  /// [key] The notification property key.
  /// [value] The notification property value.
  NotificationDestinationAuthCustomHeader({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory NotificationDestinationAuthCustomHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return NotificationDestinationAuthCustomHeader(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
