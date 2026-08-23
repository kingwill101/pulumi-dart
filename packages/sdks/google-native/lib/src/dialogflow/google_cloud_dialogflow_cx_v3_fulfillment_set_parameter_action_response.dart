// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Setting a parameter value.
class GoogleCloudDialogflowCxV3FulfillmentSetParameterActionResponse {
  /// Display name of the parameter.
  final pulumi.Input<String> parameter;
  /// The new value of the parameter. A null value clears the parameter.
  final pulumi.Input<dynamic> value;

  /// Creates a new [GoogleCloudDialogflowCxV3FulfillmentSetParameterActionResponse].
  /// [parameter] Display name of the parameter.
  /// [value] The new value of the parameter. A null value clears the parameter.
  const GoogleCloudDialogflowCxV3FulfillmentSetParameterActionResponse({
    required this.parameter,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameter': parameter,
      'value': value,
    };
  }

  factory GoogleCloudDialogflowCxV3FulfillmentSetParameterActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3FulfillmentSetParameterActionResponse(
      parameter: pulumi.Input.fromValue(map['parameter'] as String),
      value: pulumi.Input.fromValue(map['value']),
    );
  }
}
