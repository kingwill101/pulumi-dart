// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rule results properties.
class RuleResultsPropertiesResponse {
  /// Expected results in the baseline.
  final pulumi.Input<List<List<String>>>? results;

  /// Creates a new [RuleResultsPropertiesResponse].
  /// [results] Expected results in the baseline.
  RuleResultsPropertiesResponse({this.results});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'results': ?results};
  }

  factory RuleResultsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RuleResultsPropertiesResponse(
      results: (() {
        final guardedValue = map['results'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as List).cast<List<String>>(),
        );
      })(),
    );
  }
}
