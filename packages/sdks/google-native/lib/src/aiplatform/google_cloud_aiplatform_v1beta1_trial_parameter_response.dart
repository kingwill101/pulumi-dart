// ignore_for_file: unused_element, unnecessary_cast


/// A message representing a parameter to be tuned.
class GoogleCloudAiplatformV1beta1TrialParameterResponse {
  /// The ID of the parameter. The parameter should be defined in StudySpec's Parameters.
  final String parameterId;
  /// The value of the parameter. `number_value` will be set if a parameter defined in StudySpec is in type 'INTEGER', 'DOUBLE' or 'DISCRETE'. `string_value` will be set if a parameter defined in StudySpec is in type 'CATEGORICAL'.
  final dynamic value;

  /// Creates a new [GoogleCloudAiplatformV1beta1TrialParameterResponse].
  /// [parameterId] The ID of the parameter. The parameter should be defined in StudySpec's Parameters.
  /// [value] The value of the parameter. `number_value` will be set if a parameter defined in StudySpec is in type 'INTEGER', 'DOUBLE' or 'DISCRETE'. `string_value` will be set if a parameter defined in StudySpec is in type 'CATEGORICAL'.
  GoogleCloudAiplatformV1beta1TrialParameterResponse({
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
      parameterId: map['parameterId'] as String,
      value: map['value'],
    );
  }
}

