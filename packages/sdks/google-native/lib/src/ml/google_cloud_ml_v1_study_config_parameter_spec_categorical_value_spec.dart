// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec {
  /// Must be specified if type is `CATEGORICAL`. The list of possible categories.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec].
  /// [values] Must be specified if type is `CATEGORICAL`. The list of possible categories.
  const GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values,
    };
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec(
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
