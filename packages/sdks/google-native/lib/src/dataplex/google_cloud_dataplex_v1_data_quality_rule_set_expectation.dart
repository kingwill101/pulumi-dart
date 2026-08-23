// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Evaluates whether each column value is contained by a specified set.
class GoogleCloudDataplexV1DataQualityRuleSetExpectation {
  /// Optional. Expected values for the column value.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleSetExpectation].
  /// [values] Optional. Expected values for the column value.
  const GoogleCloudDataplexV1DataQualityRuleSetExpectation({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values,
    };
  }

  factory GoogleCloudDataplexV1DataQualityRuleSetExpectation.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleSetExpectation(
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
