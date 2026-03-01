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
  GetIncidentRelationArgs({
    required pulumi.Output<String> incidentId,
    required pulumi.Output<String> relationName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      incidentId = pulumi.Input.asInput<String>(incidentId),
      relationName = pulumi.Input.asInput<String>(relationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      incidentId: pulumi.Output.create<String>(map['incidentId'] as String),
      relationName: pulumi.Output.create<String>(map['relationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

