import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_at_tenant_scope_args.dart';
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
/// ### Create deployment at tenant scope.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deploymentAtTenantScope = new AzureNative.Resources.DeploymentAtTenantScope("deploymentAtTenantScope", new()
///     {
///         DeploymentName = "tenant-dep01",
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
/// 		_, err := resources.NewDeploymentAtTenantScope(ctx, "deploymentAtTenantScope", &resources.DeploymentAtTenantScopeArgs{
/// 			DeploymentName: pulumi.String("tenant-dep01"),
/// 			Location:       pulumi.String("eastus"),
/// 			Properties: &resources.DeploymentPropertiesArgs{
/// 				Mode:       resources.DeploymentModeIncremental,
/// 				Parameters: resources.DeploymentParameterMap{},
/// 				TemplateLink: &resources.TemplateLinkArgs{
/// 					Uri: pulumi.String("https://example.com/exampleTemplate.json"),
/// 				},
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.resources.DeploymentAtTenantScope;
/// import com.pulumi.azurenative.resources.DeploymentAtTenantScopeArgs;
/// import com.pulumi.azurenative.resources.inputs.DeploymentPropertiesArgs;
/// import com.pulumi.azurenative.resources.inputs.TemplateLinkArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var deploymentAtTenantScope = new DeploymentAtTenantScope("deploymentAtTenantScope", DeploymentAtTenantScopeArgs.builder()
///             .deploymentName("tenant-dep01")
///             .location("eastus")
///             .properties(DeploymentPropertiesArgs.builder()
///                 .mode("Incremental")
///                 .parameters(Map.ofEntries(
///                 ))
///                 .templateLink(TemplateLinkArgs.builder()
///                     .uri("https://example.com/exampleTemplate.json")
///                     .build())
///                 .build())
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
/// const deploymentAtTenantScope = new azure_native.resources.DeploymentAtTenantScope("deploymentAtTenantScope", {
///     deploymentName: "tenant-dep01",
///     location: "eastus",
///     properties: {
///         mode: azure_native.resources.DeploymentMode.Incremental,
///         parameters: {},
///         templateLink: {
///             uri: "https://example.com/exampleTemplate.json",
///         },
///     },
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
/// deployment_at_tenant_scope = azure_native.resources.DeploymentAtTenantScope("deploymentAtTenantScope",
///     deployment_name="tenant-dep01",
///     location="eastus",
///     properties={
///         "mode": azure_native.resources.DeploymentMode.INCREMENTAL,
///         "parameters": {},
///         "template_link": {
///             "uri": "https://example.com/exampleTemplate.json",
///         },
///     },
///     tags={
///         "tagKey1": "tag-value-1",
///         "tagKey2": "tag-value-2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   deploymentAtTenantScope:
///     type: azure-native:resources:DeploymentAtTenantScope
///     properties:
///       deploymentName: tenant-dep01
///       location: eastus
///       properties:
///         mode: Incremental
///         parameters: {}
///         templateLink:
///           uri: https://example.com/exampleTemplate.json
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
/// $ pulumi import azure-native:resources:DeploymentAtTenantScope tenant-dep01 /providers/Microsoft.Resources/deployments/{deploymentName}
/// ```
class DeploymentAtTenantScope extends pulumi.CustomResource {
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

  /// Creates a new [DeploymentAtTenantScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentAtTenantScope]. {@macro pulumi_resources_deployment_at_tenant_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentAtTenantScope(
    String name, {
    DeploymentAtTenantScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:resources:DeploymentAtTenantScope',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DeploymentPropertiesExtendedResponse>(
      'properties',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
