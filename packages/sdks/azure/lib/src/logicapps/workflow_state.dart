// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_access_control.dart';
import 'workflow_identity.dart';

/// Input properties used for looking up and filtering Workflow resources.
class WorkflowState {
  /// A `accessControl` block as defined below.
  final pulumi.Input<WorkflowAccessControl>? accessControl;
  /// The Access Endpoint for the Logic App Workflow.
  final pulumi.Input<String>? accessEndpoint;
  /// The list of access endpoint IP addresses of connector.
  final pulumi.Input<List<String>>? connectorEndpointIpAddresses;
  /// The list of outgoing IP addresses of connector.
  final pulumi.Input<List<String>>? connectorOutboundIpAddresses;
  /// Is the Logic App Workflow enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// An `identity` block as defined below.
  final pulumi.Input<WorkflowIdentity>? identity;
  /// The ID of the Integration Service Environment to which this Logic App Workflow belongs. Changing this forces a new Logic App Workflow to be created.
  final pulumi.Input<String>? integrationServiceEnvironmentId;
  /// Specifies the supported Azure location where the Logic App Workflow exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The ID of the integration account linked by this Logic App Workflow.
  final pulumi.Input<String>? logicAppIntegrationAccountId;
  /// Specifies the name of the Logic App Workflow. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A map of Key-Value pairs.
  ///
  /// &gt; **Note:** Any parameters specified must exist in the Schema defined in `workflowParameters`.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The name of the Resource Group in which the Logic App Workflow should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The list of access endpoint IP addresses of workflow.
  final pulumi.Input<List<String>>? workflowEndpointIpAddresses;
  /// The list of outgoing IP addresses of workflow.
  final pulumi.Input<List<String>>? workflowOutboundIpAddresses;
  /// Specifies a map of Key-Value pairs of the Parameter Definitions to use for this Logic App Workflow. The key is the parameter name, and the value is a JSON encoded string of the parameter definition (see: &lt;https://docs.microsoft.com/azure/logic-apps/logic-apps-workflow-definition-language#parameters&gt;).
  final pulumi.Input<Map<String, String>>? workflowParameters;
  /// Specifies the Schema to use for this Logic App Workflow. Defaults to `https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? workflowSchema;
  /// Specifies the version of the Schema used for this Logic App Workflow. Defaults to `1.0.0.0`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? workflowVersion;

  /// Creates a new [WorkflowState].
  /// [accessControl] A `accessControl` block as defined below.
  /// [accessEndpoint] The Access Endpoint for the Logic App Workflow.
  /// [connectorEndpointIpAddresses] The list of access endpoint IP addresses of connector.
  /// [connectorOutboundIpAddresses] The list of outgoing IP addresses of connector.
  /// [enabled] Is the Logic App Workflow enabled? Defaults to `true`.
  /// [identity] An `identity` block as defined below.
  /// [integrationServiceEnvironmentId] The ID of the Integration Service Environment to which this Logic App Workflow belongs. Changing this forces a new Logic App Workflow to be created.
  /// [location] Specifies the supported Azure location where the Logic App Workflow exists. Changing this forces a new resource to be created.
  /// [logicAppIntegrationAccountId] The ID of the integration account linked by this Logic App Workflow.
  /// [name] Specifies the name of the Logic App Workflow. Changing this forces a new resource to be created.
  /// [parameters] A map of Key-Value pairs.
  /// [resourceGroupName] The name of the Resource Group in which the Logic App Workflow should be created. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [workflowEndpointIpAddresses] The list of access endpoint IP addresses of workflow.
  /// [workflowOutboundIpAddresses] The list of outgoing IP addresses of workflow.
  /// [workflowParameters] Specifies a map of Key-Value pairs of the Parameter Definitions to use for this Logic App Workflow. The key is the parameter name, and the value is a JSON encoded string of the parameter definition (see: &lt;https://docs.microsoft.com/azure/logic-apps/logic-apps-workflow-definition-language#parameters&gt;).
  /// [workflowSchema] Specifies the Schema to use for this Logic App Workflow. Defaults to `https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#`. Changing this forces a new resource to be created.
  /// [workflowVersion] Specifies the version of the Schema used for this Logic App Workflow. Defaults to `1.0.0.0`. Changing this forces a new resource to be created.
  const WorkflowState({
    this.accessControl,
    this.accessEndpoint,
    this.connectorEndpointIpAddresses,
    this.connectorOutboundIpAddresses,
    this.enabled,
    this.identity,
    this.integrationServiceEnvironmentId,
    this.location,
    this.logicAppIntegrationAccountId,
    this.name,
    this.parameters,
    this.resourceGroupName,
    this.tags,
    this.workflowEndpointIpAddresses,
    this.workflowOutboundIpAddresses,
    this.workflowParameters,
    this.workflowSchema,
    this.workflowVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControl': ?pulumi.Input.mapOptionalInputValue<WorkflowAccessControl, Map<String, dynamic>>(accessControl, (value) => value.toMap()),
      'accessEndpoint': ?accessEndpoint,
      'connectorEndpointIpAddresses': ?connectorEndpointIpAddresses,
      'connectorOutboundIpAddresses': ?connectorOutboundIpAddresses,
      'enabled': ?enabled,
      'identity': ?pulumi.Input.mapOptionalInputValue<WorkflowIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'integrationServiceEnvironmentId': ?integrationServiceEnvironmentId,
      'location': ?location,
      'logicAppIntegrationAccountId': ?logicAppIntegrationAccountId,
      'name': ?name,
      'parameters': ?parameters,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'workflowEndpointIpAddresses': ?workflowEndpointIpAddresses,
      'workflowOutboundIpAddresses': ?workflowOutboundIpAddresses,
      'workflowParameters': ?workflowParameters,
      'workflowSchema': ?workflowSchema,
      'workflowVersion': ?workflowVersion,
    };
  }

  factory WorkflowState.fromMap(Map<String, dynamic> map) {
    return WorkflowState(
      accessControl: (() { final guardedValue = map['accessControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowAccessControl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      accessEndpoint: (() { final guardedValue = map['accessEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectorEndpointIpAddresses: (() { final guardedValue = map['connectorEndpointIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      connectorOutboundIpAddresses: (() { final guardedValue = map['connectorOutboundIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      integrationServiceEnvironmentId: (() { final guardedValue = map['integrationServiceEnvironmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logicAppIntegrationAccountId: (() { final guardedValue = map['logicAppIntegrationAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workflowEndpointIpAddresses: (() { final guardedValue = map['workflowEndpointIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      workflowOutboundIpAddresses: (() { final guardedValue = map['workflowOutboundIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      workflowParameters: (() { final guardedValue = map['workflowParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workflowSchema: (() { final guardedValue = map['workflowSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workflowVersion: (() { final guardedValue = map['workflowVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
