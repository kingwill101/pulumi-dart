// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_scoring_config_source_importance.dart';

/// Set the scoring configuration. This allows modifying the ranking of results for a source.
class SourceScoringConfig {
  /// Importance of the source.
  final pulumi.Input<SourceScoringConfigSourceImportance>? sourceImportance;

  /// Creates a new [SourceScoringConfig].
  /// [sourceImportance] Importance of the source.
  SourceScoringConfig({
    this.sourceImportance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceImportance': ?pulumi.Input.mapOptionalInputValue<SourceScoringConfigSourceImportance, String>(sourceImportance, (value) => value.wireValue),
    };
  }

  factory SourceScoringConfig.fromMap(Map<String, dynamic> map) {
    return SourceScoringConfig(
      sourceImportance: (() { final guardedValue = map['sourceImportance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceScoringConfigSourceImportance.fromValue(guardedValue as String)); })(),
    );
  }
}

