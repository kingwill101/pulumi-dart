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
  const SourceConfig({
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
      crowdingConfig: (() { final guardedValue = map['crowdingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceCrowdingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scoringConfig: (() { final guardedValue = map['scoringConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceScoringConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Source.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

