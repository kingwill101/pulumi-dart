// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointGlobalDeliveryRuleModifyResponseHeaderAction {
  /// Action to be executed on a header value. Valid values are `Append`, `Delete` and `Overwrite`.
  final pulumi.Input<String> action;
  /// The header name.
  final pulumi.Input<String> name;
  /// The value of the header. Only needed when `action` is set to `Append` or `overwrite`.
  final pulumi.Input<String>? value;

  /// Creates a new [EndpointGlobalDeliveryRuleModifyResponseHeaderAction].
  /// [action] Action to be executed on a header value. Valid values are `Append`, `Delete` and `Overwrite`.
  /// [name] The header name.
  /// [value] The value of the header. Only needed when `action` is set to `Append` or `overwrite`.
  const EndpointGlobalDeliveryRuleModifyResponseHeaderAction({
    required this.action,
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'name': name,
      'value': ?value,
    };
  }

  factory EndpointGlobalDeliveryRuleModifyResponseHeaderAction.fromMap(Map<String, dynamic> map) {
    return EndpointGlobalDeliveryRuleModifyResponseHeaderAction(
      action: pulumi.Input.fromValue(map['action'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
