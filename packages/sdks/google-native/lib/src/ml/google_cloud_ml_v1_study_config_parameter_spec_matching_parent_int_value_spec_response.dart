// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the spec to match integer values from parent parameter.
class GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpecResponse {
  /// Matches values of the parent parameter with type 'INTEGER'. All values must lie in `integer_value_spec` of parent parameter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpecResponse].
  /// [values] Matches values of the parent parameter with type 'INTEGER'. All values must lie in `integer_value_spec` of parent parameter.
  const GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpecResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpecResponse(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

