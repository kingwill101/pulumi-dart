// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Exact match configuration.
class GoogleCloudContactcenterinsightsV1ExactMatchConfig {
  /// Whether to consider case sensitivity when performing an exact match.
  final pulumi.Input<bool>? caseSensitive;

  /// Creates a new [GoogleCloudContactcenterinsightsV1ExactMatchConfig].
  /// [caseSensitive] Whether to consider case sensitivity when performing an exact match.
  GoogleCloudContactcenterinsightsV1ExactMatchConfig({
    this.caseSensitive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': ?caseSensitive,
    };
  }

  factory GoogleCloudContactcenterinsightsV1ExactMatchConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContactcenterinsightsV1ExactMatchConfig(
      caseSensitive: (() { final guardedValue = map['caseSensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

