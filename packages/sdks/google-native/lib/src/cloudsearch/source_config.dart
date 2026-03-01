// ignore_for_file: unused_element, unnecessary_cast

import 'source.dart';
import 'source_crowding_config.dart';
import 'source_scoring_config.dart';

/// Configurations for a source while processing a Search or Suggest request.
class SourceConfig {
  /// The crowding configuration for the source.
  final SourceCrowdingConfig? crowdingConfig;
  /// The scoring configuration for the source.
  final SourceScoringConfig? scoringConfig;
  /// The source for which this configuration is to be used.
  final Source? source;

  /// Creates a new [SourceConfig].
  /// [crowdingConfig] The crowding configuration for the source.
  /// [scoringConfig] The scoring configuration for the source.
  /// [source] The source for which this configuration is to be used.
  SourceConfig({
    this.crowdingConfig,
    this.scoringConfig,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crowdingConfig': ?crowdingConfig == null ? null : crowdingConfig!.toMap(),
      'scoringConfig': ?scoringConfig == null ? null : scoringConfig!.toMap(),
      'source': ?source == null ? null : source!.toMap(),
    };
  }

  factory SourceConfig.fromMap(Map<String, dynamic> map) {
    return SourceConfig(
      crowdingConfig: map['crowdingConfig'] == null ? null : SourceCrowdingConfig.fromMap((map['crowdingConfig'] as Map).cast<String, dynamic>()),
      scoringConfig: map['scoringConfig'] == null ? null : SourceScoringConfig.fromMap((map['scoringConfig'] as Map).cast<String, dynamic>()),
      source: map['source'] == null ? null : Source.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

