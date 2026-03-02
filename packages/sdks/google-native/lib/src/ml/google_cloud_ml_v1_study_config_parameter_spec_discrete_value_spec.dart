// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec {
  /// Must be specified if type is `DISCRETE`. A list of feasible points. The list should be in strictly increasing order. For instance, this parameter might have possible settings of 1.5, 2.5, and 4.0. This list should not contain more than 1,000 values.
  final pulumi.Input<List<double>>? values;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec].
  /// [values] Must be specified if type is `DISCRETE`. A list of feasible points. The list should be in strictly increasing order. For instance, this parameter might have possible settings of 1.5, 2.5, and 4.0. This list should not contain more than 1,000 values.
  GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values,
    };
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpecDiscreteValueSpec(
      values: map['values'] == null ? null : ((map['values']! as List).cast<double>()).input(),
    );
  }
}

