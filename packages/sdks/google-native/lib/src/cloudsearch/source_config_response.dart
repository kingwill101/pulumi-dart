// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_crowding_config_response.dart';
import 'source_response.dart';
import 'source_scoring_config_response.dart';

/// Configurations for a source while processing a Search or Suggest request.
class SourceConfigResponse {
  /// The crowding configuration for the source.
  final pulumi.Input<SourceCrowdingConfigResponse> crowdingConfig;
  /// The scoring configuration for the source.
  final pulumi.Input<SourceScoringConfigResponse> scoringConfig;
  /// The source for which this configuration is to be used.
  final pulumi.Input<SourceResponse> source;

  /// Creates a new [SourceConfigResponse].
  /// [crowdingConfig] The crowding configuration for the source.
  /// [scoringConfig] The scoring configuration for the source.
  /// [source] The source for which this configuration is to be used.
  const SourceConfigResponse({
    required this.crowdingConfig,
    required this.scoringConfig,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crowdingConfig': pulumi.Input.mapInputValue<SourceCrowdingConfigResponse, Map<String, dynamic>>(crowdingConfig, (value) => value.toMap()),
      'scoringConfig': pulumi.Input.mapInputValue<SourceScoringConfigResponse, Map<String, dynamic>>(scoringConfig, (value) => value.toMap()),
      'source': pulumi.Input.mapInputValue<SourceResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory SourceConfigResponse.fromMap(Map<String, dynamic> map) {
    return SourceConfigResponse(
      crowdingConfig: pulumi.Input.fromValue(SourceCrowdingConfigResponse.fromMap((map['crowdingConfig']! as Map).cast<String, dynamic>())),
      scoringConfig: pulumi.Input.fromValue(SourceScoringConfigResponse.fromMap((map['scoringConfig']! as Map).cast<String, dynamic>())),
      source: pulumi.Input.fromValue(SourceResponse.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}
