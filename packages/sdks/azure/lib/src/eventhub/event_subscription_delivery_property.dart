// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventSubscriptionDeliveryProperty {
  /// The name of the header to send on to the destination
  final pulumi.Input<String> headerName;

  /// True if the `value` is a secret and should be protected, otherwise false. If True, then this value won't be returned from Azure API calls
  final pulumi.Input<bool>? secret;

  /// If the `type` is `Dynamic`, then provide the payload field to be used as the value. Valid source fields differ by subscription type.
  final pulumi.Input<String>? sourceField;

  /// Either `Static` or `Dynamic`
  final pulumi.Input<String> type;

  /// If the `type` is `Static`, then provide the value to use
  final pulumi.Input<String>? value;

  /// Creates a new [EventSubscriptionDeliveryProperty].
  /// [headerName] The name of the header to send on to the destination
  /// [secret] True if the `value` is a secret and should be protected, otherwise false. If True, then this value won't be returned from Azure API calls
  /// [sourceField] If the `type` is `Dynamic`, then provide the payload field to be used as the value. Valid source fields differ by subscription type.
  /// [type] Either `Static` or `Dynamic`
  /// [value] If the `type` is `Static`, then provide the value to use
  EventSubscriptionDeliveryProperty({
    required this.headerName,
    this.secret,
    this.sourceField,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerName': headerName,
      'secret': ?secret,
      'sourceField': ?sourceField,
      'type': type,
      'value': ?value,
    };
  }

  factory EventSubscriptionDeliveryProperty.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionDeliveryProperty(
      headerName: pulumi.Input.fromValue(map['headerName'] as String),
      secret: (() {
        final guardedValue = map['secret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sourceField: (() {
        final guardedValue = map['sourceField'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
