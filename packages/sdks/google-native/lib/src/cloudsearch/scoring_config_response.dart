// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scoring configurations for a source while processing a Search or Suggest request.
class ScoringConfigResponse {
  /// Whether to use freshness as a ranking signal. By default, freshness is used as a ranking signal. Note that this setting is not available in the Admin UI.
  final pulumi.Input<bool> disableFreshness;
  /// Whether to personalize the results. By default, personal signals will be used to boost results.
  final pulumi.Input<bool> disablePersonalization;

  /// Creates a new [ScoringConfigResponse].
  /// [disableFreshness] Whether to use freshness as a ranking signal. By default, freshness is used as a ranking signal. Note that this setting is not available in the Admin UI.
  /// [disablePersonalization] Whether to personalize the results. By default, personal signals will be used to boost results.
  const ScoringConfigResponse({
    required this.disableFreshness,
    required this.disablePersonalization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableFreshness': disableFreshness,
      'disablePersonalization': disablePersonalization,
    };
  }

  factory ScoringConfigResponse.fromMap(Map<String, dynamic> map) {
    return ScoringConfigResponse(
      disableFreshness: pulumi.Input.fromValue(map['disableFreshness'] as bool),
      disablePersonalization: pulumi.Input.fromValue(map['disablePersonalization'] as bool),
    );
  }
}
