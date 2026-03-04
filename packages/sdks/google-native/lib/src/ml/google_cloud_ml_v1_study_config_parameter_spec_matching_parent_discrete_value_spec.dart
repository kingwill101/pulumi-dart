// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the spec to match discrete values from parent parameter.
class GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec {
  /// Matches values of the parent parameter with type 'DISCRETE'. All values must exist in `discrete_value_spec` of parent parameter.
  final pulumi.Input<List<double>>? values;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec].
  /// [values] Matches values of the parent parameter with type 'DISCRETE'. All values must exist in `discrete_value_spec` of parent parameter.
  GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': ?values};
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudMlV1StudyConfigParameterSpecMatchingParentDiscreteValueSpec(
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<double>());
      })(),
    );
  }
}
