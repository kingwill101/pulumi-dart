// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpecResponse {
  /// Must be specified if type is `CATEGORICAL`. The list of possible categories.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpecResponse].
  /// [values] Must be specified if type is `CATEGORICAL`. The list of possible categories.
  GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpecResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpecResponse(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

