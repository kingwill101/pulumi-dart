// ignore_for_file: unused_element, unnecessary_cast


/// Set the scoring configuration. This allows modifying the ranking of results for a source.
class SourceScoringConfigResponse {
  /// Importance of the source.
  final String sourceImportance;

  /// Creates a new [SourceScoringConfigResponse].
  /// [sourceImportance] Importance of the source.
  SourceScoringConfigResponse({
    required this.sourceImportance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceImportance': sourceImportance,
    };
  }

  factory SourceScoringConfigResponse.fromMap(Map<String, dynamic> map) {
    return SourceScoringConfigResponse(
      sourceImportance: map['sourceImportance'] as String,
    );
  }
}

