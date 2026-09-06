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
  final pulumi.Input<String?>? relationName;
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
  const IncidentRelationArgs({
    required this.incidentId,
    required this.relatedResourceId,
    this.relationName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

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
      incidentId: pulumi.Input.fromValue(map['incidentId'] as String),
      relatedResourceId: pulumi.Input.fromValue(map['relatedResourceId'] as String),
      relationName: (() { final guardedValue = map['relationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
