// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workflow_identity.dart';

/// Result data returned by getWorkflow.
class GetWorkflowResult {
  /// The Access Endpoint for the Logic App Workflow
  final String? accessEndpoint;
  /// The list of access endpoint IP addresses of connector.
  final List<String>? connectorEndpointIpAddresses;
  /// The list of outgoing IP addresses of connector.
  final List<String>? connectorOutboundIpAddresses;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetWorkflowIdentity>? identities;
  /// The Azure location where the Logic App Workflow exists.
  final String? location;
  /// The ID of the integration account linked by this Logic App Workflow.
  final String? logicAppIntegrationAccountId;
  final String? name;
  /// A map of Key-Value pairs.
  final Map<String, String>? parameters;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// The list of access endpoint IP addresses of workflow.
  final List<String>? workflowEndpointIpAddresses;
  /// The list of outgoing IP addresses of workflow.
  final List<String>? workflowOutboundIpAddresses;
  /// The Schema used for this Logic App Workflow.
  final String? workflowSchema;
  /// The version of the Schema used for this Logic App Workflow. Defaults to `1.0.0.0`.
  final String? workflowVersion;

  /// Creates a new [GetWorkflowResult].
  /// [accessEndpoint] The Access Endpoint for the Logic App Workflow
  /// [connectorEndpointIpAddresses] The list of access endpoint IP addresses of connector.
  /// [connectorOutboundIpAddresses] The list of outgoing IP addresses of connector.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure location where the Logic App Workflow exists.
  /// [logicAppIntegrationAccountId] The ID of the integration account linked by this Logic App Workflow.
  /// [name] Optional.
  /// [parameters] A map of Key-Value pairs.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the resource.
  /// [workflowEndpointIpAddresses] The list of access endpoint IP addresses of workflow.
  /// [workflowOutboundIpAddresses] The list of outgoing IP addresses of workflow.
  /// [workflowSchema] The Schema used for this Logic App Workflow.
  /// [workflowVersion] The version of the Schema used for this Logic App Workflow. Defaults to `1.0.0.0`.
  const GetWorkflowResult({
    this.accessEndpoint,
    this.connectorEndpointIpAddresses,
    this.connectorOutboundIpAddresses,
    this.id,
    this.identities,
    this.location,
    this.logicAppIntegrationAccountId,
    this.name,
    this.parameters,
    this.resourceGroupName,
    this.tags,
    this.workflowEndpointIpAddresses,
    this.workflowOutboundIpAddresses,
    this.workflowSchema,
    this.workflowVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpoint': ?accessEndpoint,
      'connectorEndpointIpAddresses': ?connectorEndpointIpAddresses,
      'connectorOutboundIpAddresses': ?connectorOutboundIpAddresses,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWorkflowIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'logicAppIntegrationAccountId': ?logicAppIntegrationAccountId,
      'name': ?name,
      'parameters': ?parameters,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'workflowEndpointIpAddresses': ?workflowEndpointIpAddresses,
      'workflowOutboundIpAddresses': ?workflowOutboundIpAddresses,
      'workflowSchema': ?workflowSchema,
      'workflowVersion': ?workflowVersion,
    };
  }

  factory GetWorkflowResult.fromMap(Map<String, dynamic> map) {
    return GetWorkflowResult(
      accessEndpoint: (() { final guardedValue = map['accessEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectorEndpointIpAddresses: (() { final guardedValue = map['connectorEndpointIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      connectorOutboundIpAddresses: (() { final guardedValue = map['connectorOutboundIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWorkflowIdentity>(guardedValue, (value) => GetWorkflowIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logicAppIntegrationAccountId: (() { final guardedValue = map['logicAppIntegrationAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      workflowEndpointIpAddresses: (() { final guardedValue = map['workflowEndpointIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      workflowOutboundIpAddresses: (() { final guardedValue = map['workflowOutboundIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      workflowSchema: (() { final guardedValue = map['workflowSchema']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workflowVersion: (() { final guardedValue = map['workflowVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
