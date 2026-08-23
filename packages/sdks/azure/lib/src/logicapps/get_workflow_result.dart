// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workflow_identity.dart';

/// Result data returned by getWorkflow.
class GetWorkflowResult {
  /// The Access Endpoint for the Logic App Workflow
  final String accessEndpoint;
  /// The list of access endpoint IP addresses of connector.
  final List<String> connectorEndpointIpAddresses;
  /// The list of outgoing IP addresses of connector.
  final List<String> connectorOutboundIpAddresses;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetWorkflowIdentity> identities;
  /// The Azure location where the Logic App Workflow exists.
  final String location;
  /// The ID of the integration account linked by this Logic App Workflow.
  final String logicAppIntegrationAccountId;
  final String name;
  /// A map of Key-Value pairs.
  final Map<String, String> parameters;
  final String resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;
  /// The list of access endpoint IP addresses of workflow.
  final List<String> workflowEndpointIpAddresses;
  /// The list of outgoing IP addresses of workflow.
  final List<String> workflowOutboundIpAddresses;
  /// The Schema used for this Logic App Workflow.
  final String workflowSchema;
  /// The version of the Schema used for this Logic App Workflow. Defaults to `1.0.0.0`.
  final String workflowVersion;

  /// Creates a new [GetWorkflowResult].
  /// [accessEndpoint] The Access Endpoint for the Logic App Workflow
  /// [connectorEndpointIpAddresses] The list of access endpoint IP addresses of connector.
  /// [connectorOutboundIpAddresses] The list of outgoing IP addresses of connector.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure location where the Logic App Workflow exists.
  /// [logicAppIntegrationAccountId] The ID of the integration account linked by this Logic App Workflow.
  /// [name] Required.
  /// [parameters] A map of Key-Value pairs.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the resource.
  /// [workflowEndpointIpAddresses] The list of access endpoint IP addresses of workflow.
  /// [workflowOutboundIpAddresses] The list of outgoing IP addresses of workflow.
  /// [workflowSchema] The Schema used for this Logic App Workflow.
  /// [workflowVersion] The version of the Schema used for this Logic App Workflow. Defaults to `1.0.0.0`.
  const GetWorkflowResult({
    required this.accessEndpoint,
    required this.connectorEndpointIpAddresses,
    required this.connectorOutboundIpAddresses,
    required this.id,
    required this.identities,
    required this.location,
    required this.logicAppIntegrationAccountId,
    required this.name,
    required this.parameters,
    required this.resourceGroupName,
    required this.tags,
    required this.workflowEndpointIpAddresses,
    required this.workflowOutboundIpAddresses,
    required this.workflowSchema,
    required this.workflowVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpoint': accessEndpoint,
      'connectorEndpointIpAddresses': connectorEndpointIpAddresses,
      'connectorOutboundIpAddresses': connectorOutboundIpAddresses,
      'id': id,
      'identities': pulumi.Input.encodeList<GetWorkflowIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'logicAppIntegrationAccountId': logicAppIntegrationAccountId,
      'name': name,
      'parameters': parameters,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'workflowEndpointIpAddresses': workflowEndpointIpAddresses,
      'workflowOutboundIpAddresses': workflowOutboundIpAddresses,
      'workflowSchema': workflowSchema,
      'workflowVersion': workflowVersion,
    };
  }

  factory GetWorkflowResult.fromMap(Map<String, dynamic> map) {
    return GetWorkflowResult(
      accessEndpoint: map['accessEndpoint'] as String,
      connectorEndpointIpAddresses: (map['connectorEndpointIpAddresses'] as List).cast<String>(),
      connectorOutboundIpAddresses: (map['connectorOutboundIpAddresses'] as List).cast<String>(),
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetWorkflowIdentity>(map['identities']!, (value) => GetWorkflowIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      logicAppIntegrationAccountId: map['logicAppIntegrationAccountId'] as String,
      name: map['name'] as String,
      parameters: (map['parameters'] as Map).cast<String, String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      workflowEndpointIpAddresses: (map['workflowEndpointIpAddresses'] as List).cast<String>(),
      workflowOutboundIpAddresses: (map['workflowOutboundIpAddresses'] as List).cast<String>(),
      workflowSchema: map['workflowSchema'] as String,
      workflowVersion: map['workflowVersion'] as String,
    );
  }
}
