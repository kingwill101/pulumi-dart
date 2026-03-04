// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload.dart';

class V2PolicyOrchestratorOrchestratedResource {
  /// Optional. ID of the resource to be used while generating set of affected resources.
  /// For UPSERT action the value is auto-generated during PolicyOrchestrator
  /// creation when not set. When the value is set it should following next
  /// restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the project.
  /// For DELETE action, ID must be specified explicitly during
  /// PolicyOrchestrator creation.
  ///
  ///
  /// &lt;a name="nested_orchestrated_resource_os_policy_assignment_v1_payload"&gt;&lt;/a&gt;The `os_policy_assignment_v1_payload` block supports:
  final pulumi.Input<String>? id;

  /// OS policy assignment is an API resource that is used to
  /// apply a set of OS policies to a dynamically targeted group of Compute Engine
  /// VM instances.
  /// An OS policy is used to define the desired state configuration for a
  /// Compute Engine VM instance through a set of configuration resources that
  /// provide capabilities such as installing or removing software packages, or
  /// executing a script.
  /// For more information about the OS policy resource definitions and examples,
  /// see
  /// [OS policy and OS policy
  /// assignment](https://cloud.google.com/compute/docs/os-configuration-management/working-with-os-policies).
  /// Structure is documented below.
  final pulumi.Input<
    V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload
  >?
  osPolicyAssignmentV1Payload;

  /// Creates a new [V2PolicyOrchestratorOrchestratedResource].
  /// [id] Optional. ID of the resource to be used while generating set of affected resources.
  /// [osPolicyAssignmentV1Payload] OS policy assignment is an API resource that is used to
  V2PolicyOrchestratorOrchestratedResource({
    this.id,
    this.osPolicyAssignmentV1Payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'osPolicyAssignmentV1Payload':
          ?pulumi.Input.mapOptionalInputValue<
            V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload,
            Map<String, dynamic>
          >(osPolicyAssignmentV1Payload, (value) => value.toMap()),
    };
  }

  factory V2PolicyOrchestratorOrchestratedResource.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorOrchestratedResource(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osPolicyAssignmentV1Payload: (() {
        final guardedValue = map['osPolicyAssignmentV1Payload'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
