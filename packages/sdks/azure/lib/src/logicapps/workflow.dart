import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_access_control.dart';
import 'workflow_args.dart';
import 'workflow_identity.dart';
import 'workflow_state.dart';

/// Manages a Logic App Workflow.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "workflow-resources",
///     location: "West Europe",
/// });
/// const exampleWorkflow = new azure.logicapps.Workflow("example", {
///     name: "workflow1",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="workflow-resources",
///     location="West Europe")
/// example_workflow = azure.logicapps.Workflow("example",
///     name="workflow1",
///     location=example.location,
///     resource_group_name=example.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "workflow-resources",
///         Location = "West Europe",
///     });
///
///     var exampleWorkflow = new Azure.LogicApps.Workflow("example", new()
///     {
///         Name = "workflow1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/logicapps"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("workflow-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logicapps.NewWorkflow(ctx, "example", &logicapps.WorkflowArgs{
/// 			Name:              pulumi.String("workflow1"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "workflow-resources"
///   location = "West Europe"
/// }
/// resource "azure_logicapps_workflow" "example" {
///   name                = "workflow1"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.logicapps.Workflow;
/// import com.pulumi.azure.logicapps.WorkflowArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("workflow-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleWorkflow = new Workflow("exampleWorkflow", WorkflowArgs.builder()
///             .name("workflow1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: workflow-resources
///       location: West Europe
///   exampleWorkflow:
///     type: azure:logicapps:Workflow
///     name: example
///     properties:
///       name: workflow1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Logic` - 2019-05-01
///
/// ## Import
///
/// Logic App Workflows can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:logicapps/workflow:Workflow workflow1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Logic/workflows/workflow1
/// ```
class Workflow extends pulumi.CustomResource {
  /// A `accessControl` block as defined below.
  late final pulumi.Output<WorkflowAccessControl?> accessControl;
  /// The Access Endpoint for the Logic App Workflow.
  late final pulumi.Output<String> accessEndpoint;
  /// The list of access endpoint IP addresses of connector.
  late final pulumi.Output<List<String>> connectorEndpointIpAddresses;
  /// The list of outgoing IP addresses of connector.
  late final pulumi.Output<List<String>> connectorOutboundIpAddresses;
  /// Is the Logic App Workflow enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// An `identity` block as defined below.
  late final pulumi.Output<WorkflowIdentity?> identity;
  /// The ID of the Integration Service Environment to which this Logic App Workflow belongs. Changing this forces a new Logic App Workflow to be created.
  late final pulumi.Output<String?> integrationServiceEnvironmentId;
  /// Specifies the supported Azure location where the Logic App Workflow exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The ID of the integration account linked by this Logic App Workflow.
  late final pulumi.Output<String?> logicAppIntegrationAccountId;
  /// Specifies the name of the Logic App Workflow. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A map of Key-Value pairs.
  ///
  /// &gt; **Note:** Any parameters specified must exist in the Schema defined in `workflowParameters`.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The name of the Resource Group in which the Logic App Workflow should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The list of access endpoint IP addresses of workflow.
  late final pulumi.Output<List<String>> workflowEndpointIpAddresses;
  /// The list of outgoing IP addresses of workflow.
  late final pulumi.Output<List<String>> workflowOutboundIpAddresses;
  /// Specifies a map of Key-Value pairs of the Parameter Definitions to use for this Logic App Workflow. The key is the parameter name, and the value is a JSON encoded string of the parameter definition (see: &lt;https://docs.microsoft.com/azure/logic-apps/logic-apps-workflow-definition-language#parameters&gt;).
  late final pulumi.Output<Map<String, String>?> workflowParameters;
  /// Specifies the Schema to use for this Logic App Workflow. Defaults to `https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> workflowSchema;
  /// Specifies the version of the Schema used for this Logic App Workflow. Defaults to `1.0.0.0`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> workflowVersion;

  /// Creates a new [Workflow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workflow]. {@macro pulumi_logicapps_workflow_workflow_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workflow(
    String name, {
    WorkflowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/workflow:Workflow',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    accessControl = registerOutput<WorkflowAccessControl?>('accessControl', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowAccessControl.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    accessEndpoint = registerOutput<String>('accessEndpoint');
    connectorEndpointIpAddresses = registerOutput<List<String>>('connectorEndpointIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    connectorOutboundIpAddresses = registerOutput<List<String>>('connectorOutboundIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    enabled = registerOutput<bool?>('enabled');
    identity = registerOutput<WorkflowIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    integrationServiceEnvironmentId = registerOutput<String?>('integrationServiceEnvironmentId');
    location = registerOutput<String>('location');
    logicAppIntegrationAccountId = registerOutput<String?>('logicAppIntegrationAccountId');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    workflowEndpointIpAddresses = registerOutput<List<String>>('workflowEndpointIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    workflowOutboundIpAddresses = registerOutput<List<String>>('workflowOutboundIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    workflowParameters = registerOutput<Map<String, String>?>('workflowParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    workflowSchema = registerOutput<String?>('workflowSchema');
    workflowVersion = registerOutput<String?>('workflowVersion');
  }

  /// Gets an existing [Workflow] resource's state with the given [name] and [id].
  static Workflow get(
    String name,
    pulumi.Input<String> id, {
    WorkflowState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Workflow._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Workflow._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/workflow:Workflow',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessControl = registerOutput<WorkflowAccessControl?>('accessControl', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowAccessControl.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    accessEndpoint = registerOutput<String>('accessEndpoint');
    connectorEndpointIpAddresses = registerOutput<List<String>>('connectorEndpointIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    connectorOutboundIpAddresses = registerOutput<List<String>>('connectorOutboundIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    enabled = registerOutput<bool?>('enabled');
    identity = registerOutput<WorkflowIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    integrationServiceEnvironmentId = registerOutput<String?>('integrationServiceEnvironmentId');
    location = registerOutput<String>('location');
    logicAppIntegrationAccountId = registerOutput<String?>('logicAppIntegrationAccountId');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    workflowEndpointIpAddresses = registerOutput<List<String>>('workflowEndpointIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    workflowOutboundIpAddresses = registerOutput<List<String>>('workflowOutboundIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    workflowParameters = registerOutput<Map<String, String>?>('workflowParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    workflowSchema = registerOutput<String?>('workflowSchema');
    workflowVersion = registerOutput<String?>('workflowVersion');
  }

  /// Creates a typed reference to an existing [Workflow] resource.
  Workflow.reference(String urn)
    : super(
        'azure:logicapps/workflow:Workflow',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessControl = registerOutput<WorkflowAccessControl?>('accessControl', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowAccessControl.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    accessEndpoint = registerOutput<String>('accessEndpoint');
    connectorEndpointIpAddresses = registerOutput<List<String>>('connectorEndpointIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    connectorOutboundIpAddresses = registerOutput<List<String>>('connectorOutboundIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    enabled = registerOutput<bool?>('enabled');
    identity = registerOutput<WorkflowIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkflowIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    integrationServiceEnvironmentId = registerOutput<String?>('integrationServiceEnvironmentId');
    location = registerOutput<String>('location');
    logicAppIntegrationAccountId = registerOutput<String?>('logicAppIntegrationAccountId');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    workflowEndpointIpAddresses = registerOutput<List<String>>('workflowEndpointIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    workflowOutboundIpAddresses = registerOutput<List<String>>('workflowOutboundIpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    workflowParameters = registerOutput<Map<String, String>?>('workflowParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    workflowSchema = registerOutput<String?>('workflowSchema');
    workflowVersion = registerOutput<String?>('workflowVersion');
  }
}
