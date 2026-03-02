// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source.dart';
import 'source_crowding_config.dart';
import 'source_scoring_config.dart';

/// Configurations for a source while processing a Search or Suggest request.
class SourceConfig {
  /// The crowding configuration for the source.
  final pulumi.Input<SourceCrowdingConfig>? crowdingConfig;
  /// The scoring configuration for the source.
  final pulumi.Input<SourceScoringConfig>? scoringConfig;
  /// The source for which this configuration is to be used.
  final pulumi.Input<Source>? source;

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
      'crowdingConfig': ?pulumi.Input.mapOptionalInputValue<SourceCrowdingConfig, Map<String, dynamic>>(crowdingConfig, (value) => value.toMap()),
      'scoringConfig': ?pulumi.Input.mapOptionalInputValue<SourceScoringConfig, Map<String, dynamic>>(scoringConfig, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<Source, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory SourceConfig.fromMap(Map<String, dynamic> map) {
    return SourceConfig(
      crowdingConfig: map['crowdingConfig'] == null ? null : (SourceCrowdingConfig.fromMap((map['crowdingConfig'] as Map).cast<String, dynamic>())).input(),
      scoringConfig: map['scoringConfig'] == null ? null : (SourceScoringConfig.fromMap((map['scoringConfig'] as Map).cast<String, dynamic>())).input(),
      source: map['source'] == null ? null : (Source.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

