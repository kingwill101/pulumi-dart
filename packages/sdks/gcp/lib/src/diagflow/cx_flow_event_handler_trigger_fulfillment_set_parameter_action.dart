// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxFlowEventHandlerTriggerFulfillmentSetParameterAction {
  /// Display name of the parameter.
  final pulumi.Input<String>? parameter;
  /// The new JSON-encoded value of the parameter. A null value clears the parameter.
  final pulumi.Input<String>? value;

  /// Creates a new [CxFlowEventHandlerTriggerFulfillmentSetParameterAction].
  /// [parameter] Display name of the parameter.
  /// [value] The new JSON-encoded value of the parameter. A null value clears the parameter.
  CxFlowEventHandlerTriggerFulfillmentSetParameterAction({
    this.parameter,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameter': ?parameter,
      'value': ?value,
    };
  }

  factory CxFlowEventHandlerTriggerFulfillmentSetParameterAction.fromMap(Map<String, dynamic> map) {
    return CxFlowEventHandlerTriggerFulfillmentSetParameterAction(
      parameter: (() { final guardedValue = map['parameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

