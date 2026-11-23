// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CaseStageDefinition resources.
class CaseStageDefinitionState {
  /// The unique identifier for the CaseStageDefinition.
  final pulumi.Input<String?>? caseStageDefinitionId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The display name of the stage. The display name must be unique within the instance. The display name must not contain special characters.
  final pulumi.Input<String?>? displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Identifier. The resource name of the CaseStageDefinition.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/caseStageDefinitions/{case_stage_definition}
  final pulumi.Input<String?>? name;
  /// Defines the case stage order in the lifetime of a case.
  final pulumi.Input<int?>? order;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [CaseStageDefinitionState].
  /// [caseStageDefinitionId] The unique identifier for the CaseStageDefinition.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the stage. The display name must be unique within the instance. The display name must not contain special characters.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The resource name of the CaseStageDefinition.
  /// [order] Defines the case stage order in the lifetime of a case.
  /// [project] The ID of the project in which the resource belongs.
  const CaseStageDefinitionState({
    this.caseStageDefinitionId,
    this.deletionPolicy,
    this.displayName,
    this.instance,
    this.location,
    this.name,
    this.order,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseStageDefinitionId': ?caseStageDefinitionId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'instance': ?instance,
      'location': ?location,
      'name': ?name,
      'order': ?order,
      'project': ?project,
    };
  }

  factory CaseStageDefinitionState.fromMap(Map<String, dynamic> map) {
    return CaseStageDefinitionState(
      caseStageDefinitionId: (() { final guardedValue = map['caseStageDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
