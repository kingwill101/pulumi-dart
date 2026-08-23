// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rollout_metadata_response.dart';
import 'cloud_run_metadata_response.dart';

/// Metadata includes information associated with a `Rollout`.
class MetadataResponse {
  /// AutomationRolloutMetadata contains the information about the interactions between Automation service and this rollout.
  final pulumi.Input<AutomationRolloutMetadataResponse> automation;
  /// The name of the Cloud Run Service that is associated with a `Rollout`.
  final pulumi.Input<CloudRunMetadataResponse> cloudRun;

  /// Creates a new [MetadataResponse].
  /// [automation] AutomationRolloutMetadata contains the information about the interactions between Automation service and this rollout.
  /// [cloudRun] The name of the Cloud Run Service that is associated with a `Rollout`.
  const MetadataResponse({
    required this.automation,
    required this.cloudRun,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automation': pulumi.Input.mapInputValue<AutomationRolloutMetadataResponse, Map<String, dynamic>>(automation, (value) => value.toMap()),
      'cloudRun': pulumi.Input.mapInputValue<CloudRunMetadataResponse, Map<String, dynamic>>(cloudRun, (value) => value.toMap()),
    };
  }

  factory MetadataResponse.fromMap(Map<String, dynamic> map) {
    return MetadataResponse(
      automation: pulumi.Input.fromValue(AutomationRolloutMetadataResponse.fromMap((map['automation']! as Map).cast<String, dynamic>())),
      cloudRun: pulumi.Input.fromValue(CloudRunMetadataResponse.fromMap((map['cloudRun']! as Map).cast<String, dynamic>())),
    );
  }
}
