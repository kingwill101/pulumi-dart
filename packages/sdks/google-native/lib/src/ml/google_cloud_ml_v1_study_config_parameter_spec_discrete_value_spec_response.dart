// ignore_for_file: unused_element, unnecessary_cast


class GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpecResponse {
  /// Must be specified if type is `DISCRETE`. A list of feasible points. The list should be in strictly increasing order. For instance, this parameter might have possible settings of 1.5, 2.5, and 4.0. This list should not contain more than 1,000 values.
  final List<double> values;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpecResponse].
  /// [values] Must be specified if type is `DISCRETE`. A list of feasible points. The list should be in strictly increasing order. For instance, this parameter might have possible settings of 1.5, 2.5, and 4.0. This list should not contain more than 1,000 values.
  GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpecResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpecResponse(
      values: (map['values'] as List).cast<double>(),
    );
  }
}

