// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intent_content_response.dart';

/// Represents the Reachability Analysis Run properties.
class ReachabilityAnalysisRunPropertiesResponse {
  final pulumi.Input<String> analysisResult;
  final pulumi.Input<String>? description;
  final pulumi.Input<String> errorMessage;
  /// Intent information.
  final pulumi.Input<IntentContentResponse> intentContent;
  /// Id of the intent resource to run analysis on.
  final pulumi.Input<String> intentId;
  /// Provisioning states of a resource.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ReachabilityAnalysisRunPropertiesResponse].
  /// [analysisResult] Required.
  /// [description] Optional.
  /// [errorMessage] Required.
  /// [intentContent] Intent information.
  /// [intentId] Id of the intent resource to run analysis on.
  /// [provisioningState] Provisioning states of a resource.
  ReachabilityAnalysisRunPropertiesResponse({
    required this.analysisResult,
    this.description,
    required this.errorMessage,
    required this.intentContent,
    required this.intentId,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisResult': analysisResult,
      'description': ?description,
      'errorMessage': errorMessage,
      'intentContent': pulumi.Input.mapInputValue<IntentContentResponse, Map<String, dynamic>>(intentContent, (value) => value.toMap()),
      'intentId': intentId,
      'provisioningState': provisioningState,
    };
  }

  factory ReachabilityAnalysisRunPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ReachabilityAnalysisRunPropertiesResponse(
      analysisResult: (map['analysisResult'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      errorMessage: (map['errorMessage'] as String).input(),
      intentContent: (IntentContentResponse.fromMap((map['intentContent'] as Map).cast<String, dynamic>())).input(),
      intentId: (map['intentId'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

