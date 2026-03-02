// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Setting a parameter value.
class GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction {
  /// Display name of the parameter.
  final pulumi.Input<String>? parameter;
  /// The new value of the parameter. A null value clears the parameter.
  final pulumi.Input<dynamic>? value;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction].
  /// [parameter] Display name of the parameter.
  /// [value] The new value of the parameter. A null value clears the parameter.
  GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction({
    this.parameter,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameter': ?parameter,
      'value': ?value,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction(
      parameter: map['parameter'] == null ? null : (map['parameter'] as String).input(),
      value: map['value'] == null ? null : (map['value']).input(),
    );
  }
}

