// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Setting a parameter value.
class GoogleCloudDialogflowCxV3FulfillmentSetParameterAction {
  /// Display name of the parameter.
  final pulumi.Input<String>? parameter;
  /// The new value of the parameter. A null value clears the parameter.
  final pulumi.Input<dynamic>? value;

  /// Creates a new [GoogleCloudDialogflowCxV3FulfillmentSetParameterAction].
  /// [parameter] Display name of the parameter.
  /// [value] The new value of the parameter. A null value clears the parameter.
  GoogleCloudDialogflowCxV3FulfillmentSetParameterAction({
    this.parameter,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameter': ?parameter,
      'value': ?value,
    };
  }

  factory GoogleCloudDialogflowCxV3FulfillmentSetParameterAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3FulfillmentSetParameterAction(
      parameter: (() { final guardedValue = map['parameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}

