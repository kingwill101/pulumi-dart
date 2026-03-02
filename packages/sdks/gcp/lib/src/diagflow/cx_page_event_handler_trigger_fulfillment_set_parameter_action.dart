// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxPageEventHandlerTriggerFulfillmentSetParameterAction {
  /// Display name of the parameter.
  final pulumi.Input<String>? parameter;
  /// The new JSON-encoded value of the parameter. A null value clears the parameter.
  final pulumi.Input<String>? value;

  /// Creates a new [CxPageEventHandlerTriggerFulfillmentSetParameterAction].
  /// [parameter] Display name of the parameter.
  /// [value] The new JSON-encoded value of the parameter. A null value clears the parameter.
  CxPageEventHandlerTriggerFulfillmentSetParameterAction({
    this.parameter,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameter': ?parameter,
      'value': ?value,
    };
  }

  factory CxPageEventHandlerTriggerFulfillmentSetParameterAction.fromMap(Map<String, dynamic> map) {
    return CxPageEventHandlerTriggerFulfillmentSetParameterAction(
      parameter: map['parameter'] == null ? null : (map['parameter'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

