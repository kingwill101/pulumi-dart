// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CaseCloseDefinition resources.
class CaseCloseDefinitionState {
  /// The ID of the case close definition.
  final pulumi.Input<String?>? caseCloseDefinitionId;
  /// Specify why the case was closed.
  /// Possible values are: `MALICIOUS`, `NOT_MALICIOUS`, `MAINTENANCE`, `INCONCLUSIVE`.
  final pulumi.Input<String?>? closeReason;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String?>? instance;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String?>? location;
  /// Identifier. The unique name(ID) of the CaseCloseDefinition.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/caseCloseDefinitions/{case_close_definition}
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Provides detailed description about the specific root cause option.
  final pulumi.Input<String?>? rootCause;

  /// Creates a new [CaseCloseDefinitionState].
  /// [caseCloseDefinitionId] The ID of the case close definition.
  /// [closeReason] Specify why the case was closed.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [name] Identifier. The unique name(ID) of the CaseCloseDefinition.
  /// [project] The ID of the project in which the resource belongs.
  /// [rootCause] Provides detailed description about the specific root cause option.
  const CaseCloseDefinitionState({
    this.caseCloseDefinitionId,
    this.closeReason,
    this.deletionPolicy,
    this.instance,
    this.location,
    this.name,
    this.project,
    this.rootCause,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseCloseDefinitionId': ?caseCloseDefinitionId,
      'closeReason': ?closeReason,
      'deletionPolicy': ?deletionPolicy,
      'instance': ?instance,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'rootCause': ?rootCause,
    };
  }

  factory CaseCloseDefinitionState.fromMap(Map<String, dynamic> map) {
    return CaseCloseDefinitionState(
      caseCloseDefinitionId: (() { final guardedValue = map['caseCloseDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      closeReason: (() { final guardedValue = map['closeReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootCause: (() { final guardedValue = map['rootCause']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
