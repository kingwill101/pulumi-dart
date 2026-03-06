// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A message representing a parameter to be tuned.
class GoogleCloudAiplatformV1beta1TrialParameterResponse {
  /// The ID of the parameter. The parameter should be defined in StudySpec's Parameters.
  final pulumi.Input<String> parameterId;
  /// The value of the parameter. `number_value` will be set if a parameter defined in StudySpec is in type 'INTEGER', 'DOUBLE' or 'DISCRETE'. `string_value` will be set if a parameter defined in StudySpec is in type 'CATEGORICAL'.
  final pulumi.Input<dynamic> value;

  /// Creates a new [GoogleCloudAiplatformV1beta1TrialParameterResponse].
  /// [parameterId] The ID of the parameter. The parameter should be defined in StudySpec's Parameters.
  /// [value] The value of the parameter. `number_value` will be set if a parameter defined in StudySpec is in type 'INTEGER', 'DOUBLE' or 'DISCRETE'. `string_value` will be set if a parameter defined in StudySpec is in type 'CATEGORICAL'.
  const GoogleCloudAiplatformV1beta1TrialParameterResponse({
    required this.parameterId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameterId': parameterId,
      'value': value,
    };
  }

  factory GoogleCloudAiplatformV1beta1TrialParameterResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1TrialParameterResponse(
      parameterId: pulumi.Input.fromValue(map['parameterId'] as String),
      value: pulumi.Input.fromValue(map['value']),
    );
  }
}

