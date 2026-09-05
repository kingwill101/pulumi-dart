import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_webhook_args.dart';
import 'registry_webhook_state.dart';

/// Manages an Azure Container Registry Webhook.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const acr = new azure.containerservice.Registry("acr", {
///     name: "containerRegistry1",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Standard",
///     adminEnabled: false,
/// });
/// const webhook = new azure.containerservice.RegistryWebhook("webhook", {
///     name: "mywebhook",
///     resourceGroupName: example.name,
///     registryName: acr.name,
///     location: example.location,
///     serviceUri: "https://mywebhookreceiver.example/mytag",
///     status: "enabled",
///     scope: "mytag:*",
///     actions: ["push"],
///     customHeaders: {
///         "Content-Type": "application/json",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// acr = azure.containerservice.Registry("acr",
///     name="containerRegistry1",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Standard",
///     admin_enabled=False)
/// webhook = azure.containerservice.RegistryWebhook("webhook",
///     name="mywebhook",
///     resource_group_name=example.name,
///     registry_name=acr.name,
///     location=example.location,
///     service_uri="https://mywebhookreceiver.example/mytag",
///     status="enabled",
///     scope="mytag:*",
///     actions=["push"],
///     custom_headers={
///         "Content-Type": "application/json",
///     })
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var acr = new Azure.ContainerService.Registry("acr", new()
///     {
///         Name = "containerRegistry1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Standard",
///         AdminEnabled = false,
///     });
///
///     var webhook = new Azure.ContainerService.RegistryWebhook("webhook", new()
///     {
///         Name = "mywebhook",
///         ResourceGroupName = example.Name,
///         RegistryName = acr.Name,
///         Location = example.Location,
///         ServiceUri = "https://mywebhookreceiver.example/mytag",
///         Status = "enabled",
///         Scope = "mytag:*",
///         Actions = new[]
///         {
///             "push",
///         },
///         CustomHeaders =
///         {
///             { "Content-Type", "application/json" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/containerservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		acr, err := containerservice.NewRegistry(ctx, "acr", &containerservice.RegistryArgs{
/// 			Name:              pulumi.String("containerRegistry1"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("Standard"),
/// 			AdminEnabled:      pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = containerservice.NewRegistryWebhook(ctx, "webhook", &containerservice.RegistryWebhookArgs{
/// 			Name:              pulumi.String("mywebhook"),
/// 			ResourceGroupName: example.Name,
/// 			RegistryName:      acr.Name,
/// 			Location:          example.Location,
/// 			ServiceUri:        pulumi.String("https://mywebhookreceiver.example/mytag"),
/// 			Status:            pulumi.String("enabled"),
/// 			Scope:             pulumi.String("mytag:*"),
/// 			Actions: pulumi.StringArray{
/// 				pulumi.String("push"),
/// 			},
/// 			CustomHeaders: pulumi.StringMap{
/// 				"Content-Type": pulumi.String("application/json"),
/// 			},
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_containerservice_registry" "acr" {
///   name                = "containerRegistry1"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   sku                 = "Standard"
///   admin_enabled       = false
/// }
/// resource "azure_containerservice_registrywebhook" "webhook" {
///   name                = "mywebhook"
///   resource_group_name = azure_core_resourcegroup.example.name
///   registry_name       = azure_containerservice_registry.acr.name
///   location            = azure_core_resourcegroup.example.location
///   service_uri         = "https://mywebhookreceiver.example/mytag"
///   status              = "enabled"
///   scope               = "mytag:*"
///   actions             = ["push"]
///   custom_headers = {
///     "Content-Type" = "application/json"
///   }
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
/// import com.pulumi.azure.containerservice.Registry;
/// import com.pulumi.azure.containerservice.RegistryArgs;
/// import com.pulumi.azure.containerservice.RegistryWebhook;
/// import com.pulumi.azure.containerservice.RegistryWebhookArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var acr = new Registry("acr", RegistryArgs.builder()
///             .name("containerRegistry1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Standard")
///             .adminEnabled(false)
///             .build());
///
///         var webhook = new RegistryWebhook("webhook", RegistryWebhookArgs.builder()
///             .name("mywebhook")
///             .resourceGroupName(example.name())
///             .registryName(acr.name())
///             .location(example.location())
///             .serviceUri("https://mywebhookreceiver.example/mytag")
///             .status("enabled")
///             .scope("mytag:*")
///             .actions("push")
///             .customHeaders(Map.of("Content-Type", "application/json"))
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
///       name: example-resources
///       location: West Europe
///   acr:
///     type: azure:containerservice:Registry
///     properties:
///       name: containerRegistry1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: Standard
///       adminEnabled: false
///   webhook:
///     type: azure:containerservice:RegistryWebhook
///     properties:
///       name: mywebhook
///       resourceGroupName: ${example.name}
///       registryName: ${acr.name}
///       location: ${example.location}
///       serviceUri: https://mywebhookreceiver.example/mytag
///       status: enabled
///       scope: mytag:*
///       actions:
///         - push
///       customHeaders:
///         Content-Type: application/json
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ContainerRegistry` - 2025-11-01
///
/// ## Import
///
/// Container Registry Webhooks can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:containerservice/registryWebhook:RegistryWebhook example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ContainerRegistry/registries/myregistry1/webHooks/mywebhook1
/// ```
class RegistryWebhook extends pulumi.CustomResource {
  /// A list of actions that trigger the Webhook to post notifications. At least one action needs to be specified. Valid values are: `push`, `delete`, `quarantine`, `chartPush`, `chartDelete`
  late final pulumi.Output<List<String>> actions;
  /// Custom headers that will be added to the webhook notifications request.
  late final pulumi.Output<Map<String, String>?> customHeaders;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Container Registry Webhook. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The Name of Container registry this Webhook belongs to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> registryName;
  /// The name of the resource group in which to create the Container Registry Webhook. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the scope of repositories that can trigger an event. For example, `foo:*` means events for all tags under repository `foo`. `foo:bar` means events for 'foo:bar' only. `foo` is equivalent to `foo:latest`. Empty means all events. Defaults to `""`.
  late final pulumi.Output<String?> scope;
  /// Specifies the service URI for the Webhook to post notifications.
  late final pulumi.Output<String> serviceUri;
  /// Specifies if this Webhook triggers notifications or not. Valid values: `enabled` and `disabled`. Default is `enabled`.
  late final pulumi.Output<String?> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [RegistryWebhook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryWebhook]. {@macro pulumi_containerservice_registry_webhook_registry_webhook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryWebhook(
    String name, {
    RegistryWebhookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/registryWebhook:RegistryWebhook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    actions = registerOutput<List<String>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    customHeaders = registerOutput<Map<String, String>?>('customHeaders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    registryName = registerOutput<String>('registryName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scope = registerOutput<String?>('scope');
    serviceUri = registerOutput<String>('serviceUri');
    status = registerOutput<String?>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [RegistryWebhook] resource's state with the given [name] and [id].
  static RegistryWebhook get(
    String name,
    pulumi.Input<String> id, {
    RegistryWebhookState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegistryWebhook._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RegistryWebhook._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:containerservice/registryWebhook:RegistryWebhook',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<String>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    customHeaders = registerOutput<Map<String, String>?>('customHeaders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    registryName = registerOutput<String>('registryName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scope = registerOutput<String?>('scope');
    serviceUri = registerOutput<String>('serviceUri');
    status = registerOutput<String?>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [RegistryWebhook] resource.
  RegistryWebhook.reference(String urn)
    : super(
        'azure:containerservice/registryWebhook:RegistryWebhook',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    actions = registerOutput<List<String>>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    customHeaders = registerOutput<Map<String, String>?>('customHeaders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    registryName = registerOutput<String>('registryName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scope = registerOutput<String?>('scope');
    serviceUri = registerOutput<String>('serviceUri');
    status = registerOutput<String?>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
