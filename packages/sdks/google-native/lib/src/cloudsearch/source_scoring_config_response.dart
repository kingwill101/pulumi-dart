// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Set the scoring configuration. This allows modifying the ranking of results for a source.
class SourceScoringConfigResponse {
  /// Importance of the source.
  final pulumi.Input<String> sourceImportance;

  /// Creates a new [SourceScoringConfigResponse].
  /// [sourceImportance] Importance of the source.
  const SourceScoringConfigResponse({
    required this.sourceImportance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceImportance': sourceImportance,
    };
  }

  factory SourceScoringConfigResponse.fromMap(Map<String, dynamic> map) {
    return SourceScoringConfigResponse(
      sourceImportance: pulumi.Input.fromValue(map['sourceImportance'] as String),
    );
  }
}

