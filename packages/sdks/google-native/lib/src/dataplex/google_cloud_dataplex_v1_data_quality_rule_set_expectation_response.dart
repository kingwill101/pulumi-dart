// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Evaluates whether each column value is contained by a specified set.
class GoogleCloudDataplexV1DataQualityRuleSetExpectationResponse {
  /// Optional. Expected values for the column value.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GoogleCloudDataplexV1DataQualityRuleSetExpectationResponse].
  /// [values] Optional. Expected values for the column value.
  const GoogleCloudDataplexV1DataQualityRuleSetExpectationResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': values,
    };
  }

  factory GoogleCloudDataplexV1DataQualityRuleSetExpectationResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataQualityRuleSetExpectationResponse(
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
