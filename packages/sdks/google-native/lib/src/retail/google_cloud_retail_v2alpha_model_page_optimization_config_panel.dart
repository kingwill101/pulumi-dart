// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2alpha_model_page_optimization_config_candidate.dart';

/// An individual panel with a list of ServingConfigs to consider for it.
class GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel {
  /// The candidates to consider on the panel.
  final pulumi.Input<List<GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate>> candidates;
  /// The default candidate. If the model fails at serving time, we fall back to the default.
  final pulumi.Input<GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate> defaultCandidate;
  /// Optional. The name to display for the panel.
  final pulumi.Input<String>? displayName;

  /// Creates a new [GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel].
  /// [candidates] The candidates to consider on the panel.
  /// [defaultCandidate] The default candidate. If the model fails at serving time, we fall back to the default.
  /// [displayName] Optional. The name to display for the panel.
  const GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel({
    required this.candidates,
    required this.defaultCandidate,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'candidates': pulumi.Input.mapInputValue<List<GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate>, List<Map<String, dynamic>>>(candidates, (value) => pulumi.Input.encodeList<GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultCandidate': pulumi.Input.mapInputValue<GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate, Map<String, dynamic>>(defaultCandidate, (value) => value.toMap()),
      'displayName': ?displayName,
    };
  }

  factory GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaModelPageOptimizationConfigPanel(
      candidates: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate>(map['candidates']!, (value) => GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate.fromMap((value as Map).cast<String, dynamic>()))),
      defaultCandidate: pulumi.Input.fromValue(GoogleCloudRetailV2alphaModelPageOptimizationConfigCandidate.fromMap((map['defaultCandidate']! as Map).cast<String, dynamic>())),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

