// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the spec to match discrete values from parent parameter.
class GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpecResponse {
  /// Matches values of the parent parameter with type 'DISCRETE'. All values must exist in `discrete_value_spec` of parent parameter.
  final pulumi.Input<List<double>> values;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpecResponse].
  /// [values] Matches values of the parent parameter with type 'DISCRETE'. All values must exist in `discrete_value_spec` of parent parameter.
  const GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpecResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpecResponse(
      values: pulumi.Input.fromValue((map['values'] as List).cast<double>()),
    );
  }
}

