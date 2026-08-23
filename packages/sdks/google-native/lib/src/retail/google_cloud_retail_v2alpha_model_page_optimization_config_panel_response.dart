// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2alpha_model_page_optimization_config_candidate_response.dart';

/// An individual panel with a list of ServingConfigs to consider for it.
class GoogleCloudRetailV2alphaModelPageOptimizationConfigPanelResponse {
  /// The candidates to consider on the panel.
  final pulumi.Input<List<GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidateResponse>> candidates;
  /// The default candidate. If the model fails at serving time, we fall back to the default.
  final pulumi.Input<GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidateResponse> defaultCandidate;
  /// Optional. The name to display for the panel.
  final pulumi.Input<String> displayName;

  /// Creates a new [GoogleCloudRetailV2alphaModelPageOptimizationConfigPanelResponse].
  /// [candidates] The candidates to consider on the panel.
  /// [defaultCandidate] The default candidate. If the model fails at serving time, we fall back to the default.
  /// [displayName] Optional. The name to display for the panel.
  const GoogleCloudRetailV2alphaModelPageOptimizationConfigPanelResponse({
    required this.candidates,
    required this.defaultCandidate,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'candidates': pulumi.Input.mapInputValue<List<GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidateResponse>, List<Map<String, dynamic>>>(candidates, (value) => pulumi.Input.encodeList<GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidateResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultCandidate': pulumi.Input.mapInputValue<GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidateResponse, Map<String, dynamic>>(defaultCandidate, (value) => value.toMap()),
      'displayName': displayName,
    };
  }

  factory GoogleCloudRetailV2alphaModelPageOptimizationConfigPanelResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaModelPageOptimizationConfigPanelResponse(
      candidates: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidateResponse>(map['candidates']!, (value) => GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidateResponse.fromMap((value as Map).cast<String, dynamic>()))),
      defaultCandidate: pulumi.Input.fromValue(GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidateResponse.fromMap((map['defaultCandidate']! as Map).cast<String, dynamic>())),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
    );
  }
}
