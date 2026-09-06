import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_at_scope_args.dart';
import 'deployment_properties_extended_response.dart';

/// Deployment information.
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2020-10-01, 2021-01-01, 2021-04-01, 2022-09-01, 2023-07-01, 2024-07-01, 2024-11-01, 2025-03-01, 2025-04-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create deployment at a given scope.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deploymentAtScope = new AzureNative.Resources.DeploymentAtScope("deploymentAtScope", new()
///     {
///         DeploymentName = "my-deployment",
///         Location = "eastus",
///         Properties = new AzureNative.Resources.Inputs.DeploymentPropertiesArgs
///         {
///             Mode = AzureNative.Resources.DeploymentMode.Incremental,
///             Parameters = null,
///             TemplateLink = new AzureNative.Resources.Inputs.TemplateLinkArgs
///             {
///                 Uri = "https://example.com/exampleTemplate.json",
///             },
///         },
///         Scope = "providers/Microsoft.Management/managementGroups/my-management-group-id",
///         Tags =
///         {
///             { "tagKey1", "tag-value-1" },
///             { "tagKey2", "tag-value-2" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	resources "github.com/pulumi/pulumi-azure-native-sdk/resources/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resources.NewDeploymentAtScope(ctx, "deploymentAtScope", &resources.DeploymentAtScopeArgs{
/// 			DeploymentName: pulumi.String("my-deployment"),
/// 			Location:       pulumi.String("eastus"),
/// 			Properties: &resources.DeploymentPropertiesArgs{
/// 				Mode:       resources.DeploymentModeIncremental,
/// 				Parameters: resources.DeploymentParameterMap{},
/// 				TemplateLink: &resources.TemplateLinkArgs{
/// 					Uri: pulumi.String("https://example.com/exampleTemplate.json"),
/// 				},
/// 			},
/// 			Scope: pulumi.String("providers/Microsoft.Management/managementGroups/my-management-group-id"),
/// 			Tags: pulumi.StringMap{
/// 				"tagKey1": pulumi.String("tag-value-1"),
/// 				"tagKey2": pulumi.String("tag-value-2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_resources_deploymentatscope" "deploymentAtScope" {
///   deployment_name = "my-deployment"
///   location        = "eastus"
///   properties = {
///     mode       = "Incremental"
///     parameters = {}
///     template_link = {
///       uri = "https://example.com/exampleTemplate.json"
///     }
///   }
///   scope = "providers/Microsoft.Management/managementGroups/my-management-group-id"
///   tags = {
///     "tagKey1" = "tag-value-1"
///     "tagKey2" = "tag-value-2"
///   }
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.resources.DeploymentAtScope;
/// import com.pulumi.azurenative.resources.DeploymentAtScopeArgs;
/// import com.pulumi.azurenative.resources.inputs.DeploymentPropertiesArgs;
/// import com.pulumi.azurenative.resources.inputs.TemplateLinkArgs;
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
///         var deploymentAtScope = new DeploymentAtScope("deploymentAtScope", DeploymentAtScopeArgs.builder()
///             .deploymentName("my-deployment")
///             .location("eastus")
///             .properties(DeploymentPropertiesArgs.builder()
///                 .mode("Incremental")
///                 .parameters(Map.ofEntries(
///                 ))
///                 .templateLink(TemplateLinkArgs.builder()
///                     .uri("https://example.com/exampleTemplate.json")
///                     .build())
///                 .build())
///             .scope("providers/Microsoft.Management/managementGroups/my-management-group-id")
///             .tags(Map.ofEntries(
///                 Map.entry("tagKey1", "tag-value-1"),
///                 Map.entry("tagKey2", "tag-value-2")
///             ))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const deploymentAtScope = new azure_native.resources.DeploymentAtScope("deploymentAtScope", {
///     deploymentName: "my-deployment",
///     location: "eastus",
///     properties: {
///         mode: azure_native.resources.DeploymentMode.Incremental,
///         parameters: {},
///         templateLink: {
///             uri: "https://example.com/exampleTemplate.json",
///         },
///     },
///     scope: "providers/Microsoft.Management/managementGroups/my-management-group-id",
///     tags: {
///         tagKey1: "tag-value-1",
///         tagKey2: "tag-value-2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// deployment_at_scope = azure_native.resources.DeploymentAtScope("deploymentAtScope",
///     deployment_name="my-deployment",
///     location="eastus",
///     properties={
///         "mode": azure_native.resources.DeploymentMode.INCREMENTAL,
///         "parameters": {},
///         "template_link": {
///             "uri": "https://example.com/exampleTemplate.json",
///         },
///     },
///     scope="providers/Microsoft.Management/managementGroups/my-management-group-id",
///     tags={
///         "tagKey1": "tag-value-1",
///         "tagKey2": "tag-value-2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   deploymentAtScope:
///     type: azure-native:resources:DeploymentAtScope
///     properties:
///       deploymentName: my-deployment
///       location: eastus
///       properties:
///         mode: Incremental
///         parameters: {}
///         templateLink:
///           uri: https://example.com/exampleTemplate.json
///       scope: providers/Microsoft.Management/managementGroups/my-management-group-id
///       tags:
///         tagKey1: tag-value-1
///         tagKey2: tag-value-2
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:resources:DeploymentAtScope my-deployment /{scope}/providers/Microsoft.Resources/deployments/{deploymentName}
/// ```
class DeploymentAtScope extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// the location of the deployment.
  late final pulumi.Output<String?> location;
  /// The name of the deployment.
  late final pulumi.Output<String> name;
  /// Deployment properties.
  late final pulumi.Output<DeploymentPropertiesExtendedResponse> properties;
  /// Deployment tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the deployment.
  late final pulumi.Output<String> type;

  /// Creates a new [DeploymentAtScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentAtScope]. {@macro pulumi_resources_deployment_at_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentAtScope(
    String name, {
    DeploymentAtScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:resources:DeploymentAtScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DeploymentPropertiesExtendedResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentPropertiesExtendedResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DeploymentAtScope] resource.
  DeploymentAtScope.reference(String urn)
    : super(
        'azure-native:resources:DeploymentAtScope',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DeploymentPropertiesExtendedResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DeploymentPropertiesExtendedResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
