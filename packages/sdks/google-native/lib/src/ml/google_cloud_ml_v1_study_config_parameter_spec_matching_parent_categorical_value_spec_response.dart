// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the spec to match categorical values from parent parameter.
class GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpecResponse {
  /// Matches values of the parent parameter with type 'CATEGORICAL'. All values must exist in `categorical_value_spec` of parent parameter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpecResponse].
  /// [values] Matches values of the parent parameter with type 'CATEGORICAL'. All values must exist in `categorical_value_spec` of parent parameter.
  const GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpecResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpecMatchingParentCategoricalValueSpecResponse(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

