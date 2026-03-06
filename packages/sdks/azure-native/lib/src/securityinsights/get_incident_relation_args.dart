// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_incident_relation_args_doc}
/// Arguments for getIncidentRelation.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_incident_relation_args_doc}
class GetIncidentRelationArgs {
  /// Incident ID
  final pulumi.Input<String> incidentId;
  /// Relation Name
  final pulumi.Input<String> relationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetIncidentRelationArgs].
  /// [incidentId] Incident ID
  /// [relationName] Relation Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  const GetIncidentRelationArgs({
    required this.incidentId,
    required this.relationName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incidentId': incidentId,
      'relationName': relationName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetIncidentRelationArgs.fromMap(Map<String, dynamic> map) {
    return GetIncidentRelationArgs(
      incidentId: pulumi.Input.fromValue(map['incidentId'] as String),
      relationName: pulumi.Input.fromValue(map['relationName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

