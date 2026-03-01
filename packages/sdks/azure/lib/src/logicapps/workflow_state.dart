// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_access_control.dart';
import 'workflow_identity.dart';

/// Input properties used for looking up and filtering Workflow resources.
class WorkflowState {
  /// A `access_control` block as defined below.
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
  /// > **Note:** Any parameters specified must exist in the Schema defined in `workflow_parameters`.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The name of the Resource Group in which the Logic App Workflow should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The list of access endpoint IP addresses of workflow.
  final pulumi.Input<List<String>>? workflowEndpointIpAddresses;
  /// The list of outgoing IP addresses of workflow.
  final pulumi.Input<List<String>>? workflowOutboundIpAddresses;
  /// Specifies a map of Key-Value pairs of the Parameter Definitions to use for this Logic App Workflow. The key is the parameter name, and the value is a JSON encoded string of the parameter definition (see: <https://docs.microsoft.com/azure/logic-apps/logic-apps-workflow-definition-language#parameters>).
  final pulumi.Input<Map<String, String>>? workflowParameters;
  /// Specifies the Schema to use for this Logic App Workflow. Defaults to `https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? workflowSchema;
  /// Specifies the version of the Schema used for this Logic App Workflow. Defaults to `1.0.0.0`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? workflowVersion;

  /// Creates a new [WorkflowState].
  /// [accessControl] A `access_control` block as defined below.
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
  /// [workflowParameters] Specifies a map of Key-Value pairs of the Parameter Definitions to use for this Logic App Workflow. The key is the parameter name, and the value is a JSON encoded string of the parameter definition (see: <https://docs.microsoft.com/azure/logic-apps/logic-apps-workflow-definition-language#parameters>).
  /// [workflowSchema] Specifies the Schema to use for this Logic App Workflow. Defaults to `https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#`. Changing this forces a new resource to be created.
  /// [workflowVersion] Specifies the version of the Schema used for this Logic App Workflow. Defaults to `1.0.0.0`. Changing this forces a new resource to be created.
  WorkflowState({
    pulumi.Output<WorkflowAccessControl>? accessControl,
    pulumi.Output<String>? accessEndpoint,
    pulumi.Output<List<String>>? connectorEndpointIpAddresses,
    pulumi.Output<List<String>>? connectorOutboundIpAddresses,
    pulumi.Output<bool>? enabled,
    pulumi.Output<WorkflowIdentity>? identity,
    pulumi.Output<String>? integrationServiceEnvironmentId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? logicAppIntegrationAccountId,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? workflowEndpointIpAddresses,
    pulumi.Output<List<String>>? workflowOutboundIpAddresses,
    pulumi.Output<Map<String, String>>? workflowParameters,
    pulumi.Output<String>? workflowSchema,
    pulumi.Output<String>? workflowVersion,
  }) :
      accessControl = pulumi.Input.asOptionalInput<WorkflowAccessControl>(accessControl),
      accessEndpoint = pulumi.Input.asOptionalInput<String>(accessEndpoint),
      connectorEndpointIpAddresses = pulumi.Input.asOptionalInput<List<String>>(connectorEndpointIpAddresses),
      connectorOutboundIpAddresses = pulumi.Input.asOptionalInput<List<String>>(connectorOutboundIpAddresses),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      identity = pulumi.Input.asOptionalInput<WorkflowIdentity>(identity),
      integrationServiceEnvironmentId = pulumi.Input.asOptionalInput<String>(integrationServiceEnvironmentId),
      location = pulumi.Input.asOptionalInput<String>(location),
      logicAppIntegrationAccountId = pulumi.Input.asOptionalInput<String>(logicAppIntegrationAccountId),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workflowEndpointIpAddresses = pulumi.Input.asOptionalInput<List<String>>(workflowEndpointIpAddresses),
      workflowOutboundIpAddresses = pulumi.Input.asOptionalInput<List<String>>(workflowOutboundIpAddresses),
      workflowParameters = pulumi.Input.asOptionalInput<Map<String, String>>(workflowParameters),
      workflowSchema = pulumi.Input.asOptionalInput<String>(workflowSchema),
      workflowVersion = pulumi.Input.asOptionalInput<String>(workflowVersion);

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
      accessControl: map['accessControl'] == null ? null : pulumi.Output.create<WorkflowAccessControl>(WorkflowAccessControl.fromMap((map['accessControl'] as Map).cast<String, dynamic>())),
      accessEndpoint: map['accessEndpoint'] == null ? null : pulumi.Output.create<String>(map['accessEndpoint'] as String),
      connectorEndpointIpAddresses: map['connectorEndpointIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['connectorEndpointIpAddresses'] as List).cast<String>()),
      connectorOutboundIpAddresses: map['connectorOutboundIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['connectorOutboundIpAddresses'] as List).cast<String>()),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<WorkflowIdentity>(WorkflowIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      integrationServiceEnvironmentId: map['integrationServiceEnvironmentId'] == null ? null : pulumi.Output.create<String>(map['integrationServiceEnvironmentId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logicAppIntegrationAccountId: map['logicAppIntegrationAccountId'] == null ? null : pulumi.Output.create<String>(map['logicAppIntegrationAccountId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workflowEndpointIpAddresses: map['workflowEndpointIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['workflowEndpointIpAddresses'] as List).cast<String>()),
      workflowOutboundIpAddresses: map['workflowOutboundIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['workflowOutboundIpAddresses'] as List).cast<String>()),
      workflowParameters: map['workflowParameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['workflowParameters'] as Map).cast<String, String>()),
      workflowSchema: map['workflowSchema'] == null ? null : pulumi.Output.create<String>(map['workflowSchema'] as String),
      workflowVersion: map['workflowVersion'] == null ? null : pulumi.Output.create<String>(map['workflowVersion'] as String),
    );
  }
}

