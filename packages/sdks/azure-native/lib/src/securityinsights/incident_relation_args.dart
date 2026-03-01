// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_incident_relation_args_doc}
/// The set of arguments for IncidentRelation.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_incident_relation_args_doc}
class IncidentRelationArgs {
  /// Incident ID
  final pulumi.Input<String> incidentId;
  /// The resource ID of the related resource
  final pulumi.Input<String> relatedResourceId;
  /// Relation Name
  final pulumi.Input<String>? relationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [IncidentRelationArgs].
  /// [incidentId] Incident ID
  /// [relatedResourceId] The resource ID of the related resource
  /// [relationName] Relation Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  IncidentRelationArgs({
    required pulumi.Output<String> incidentId,
    required pulumi.Output<String> relatedResourceId,
    pulumi.Output<String>? relationName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      incidentId = pulumi.Input.asInput<String>(incidentId),
      relatedResourceId = pulumi.Input.asInput<String>(relatedResourceId),
      relationName = pulumi.Input.asOptionalInput<String>(relationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incidentId': incidentId,
      'relatedResourceId': relatedResourceId,
      'relationName': ?relationName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory IncidentRelationArgs.fromMap(Map<String, dynamic> map) {
    return IncidentRelationArgs(
      incidentId: pulumi.Output.create<String>(map['incidentId'] as String),
      relatedResourceId: pulumi.Output.create<String>(map['relatedResourceId'] as String),
      relationName: map['relationName'] == null ? null : pulumi.Output.create<String>(map['relationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

