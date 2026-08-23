import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_authorization_rule_args.dart';
import 'namespace_authorization_rule_state.dart';

/// Manages an Azure Relay Namespace Authorization Rule.
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
/// const exampleNamespace = new azure.relay.Namespace("example", {
///     name: "example-relay",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Standard",
///     tags: {
///         source: "terraform",
///     },
/// });
/// const exampleNamespaceAuthorizationRule = new azure.relay.NamespaceAuthorizationRule("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     namespaceName: exampleNamespace.name,
///     listen: true,
///     send: true,
///     manage: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_namespace = azure.relay.Namespace("example",
///     name="example-relay",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Standard",
///     tags={
///         "source": "terraform",
///     })
/// example_namespace_authorization_rule = azure.relay.NamespaceAuthorizationRule("example",
///     name="example",
///     resource_group_name=example.name,
///     namespace_name=example_namespace.name,
///     listen=True,
///     send=True,
///     manage=False)
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
///     var exampleNamespace = new Azure.Relay.Namespace("example", new()
///     {
///         Name = "example-relay",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Standard",
///         Tags =
///         {
///             { "source", "terraform" },
///         },
///     });
///
///     var exampleNamespaceAuthorizationRule = new Azure.Relay.NamespaceAuthorizationRule("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         NamespaceName = exampleNamespace.Name,
///         Listen = true,
///         Send = true,
///         Manage = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/relay"
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
/// 		exampleNamespace, err := relay.NewNamespace(ctx, "example", &relay.NamespaceArgs{
/// 			Name:              pulumi.String("example-relay"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Standard"),
/// 			Tags: pulumi.StringMap{
/// 				"source": pulumi.String("terraform"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = relay.NewNamespaceAuthorizationRule(ctx, "example", &relay.NamespaceAuthorizationRuleArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			NamespaceName:     exampleNamespace.Name,
/// 			Listen:            pulumi.Bool(true),
/// 			Send:              pulumi.Bool(true),
/// 			Manage:            pulumi.Bool(false),
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
/// resource "azure_relay_namespace" "example" {
///   name                = "example-relay"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Standard"
///   tags = {
///     "source" = "terraform"
///   }
/// }
/// resource "azure_relay_namespaceauthorizationrule" "example" {
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   namespace_name      = azure_relay_namespace.example.name
///   listen              = true
///   send                = true
///   manage              = false
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
/// import com.pulumi.azure.relay.Namespace;
/// import com.pulumi.azure.relay.NamespaceArgs;
/// import com.pulumi.azure.relay.NamespaceAuthorizationRule;
/// import com.pulumi.azure.relay.NamespaceAuthorizationRuleArgs;
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
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("example-relay")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Standard")
///             .tags(Map.of("source", "terraform"))
///             .build());
///
///         var exampleNamespaceAuthorizationRule = new NamespaceAuthorizationRule("exampleNamespaceAuthorizationRule", NamespaceAuthorizationRuleArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .namespaceName(exampleNamespace.name())
///             .listen(true)
///             .send(true)
///             .manage(false)
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
///   exampleNamespace:
///     type: azure:relay:Namespace
///     name: example
///     properties:
///       name: example-relay
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Standard
///       tags:
///         source: terraform
///   exampleNamespaceAuthorizationRule:
///     type: azure:relay:NamespaceAuthorizationRule
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       namespaceName: ${exampleNamespace.name}
///       listen: true
///       send: true
///       manage: false
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Relay` - 2021-11-01
///
/// ## Import
///
/// Azure Relay Namespace Authorization Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:relay/namespaceAuthorizationRule:NamespaceAuthorizationRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Relay/namespaces/namespace1/authorizationRules/rule1
/// ```
class NamespaceAuthorizationRule extends pulumi.CustomResource {
  /// Grants listen access to this Authorization Rule. Defaults to `false`.
  late final pulumi.Output<bool?> listen;
  /// Grants manage access to this Authorization Rule. When this property is `true` - both `listen` and `send` must be set to `true` too. Defaults to `false`.
  late final pulumi.Output<bool?> manage;
  /// The name which should be used for this Azure Relay Namespace Authorization Rule. Changing this forces a new Azure Relay Namespace Authorization Rule to be created.
  late final pulumi.Output<String> name;
  /// Name of the Azure Relay Namespace for which this Azure Relay Namespace Authorization Rule will be created. Changing this forces a new Azure Relay Namespace Authorization Rule to be created.
  late final pulumi.Output<String> namespaceName;
  /// The Primary Connection String for the Azure Relay Namespace Authorization Rule.
  late final pulumi.Output<String> primaryConnectionString;
  /// The Primary Key for the Azure Relay Namespace Authorization Rule.
  late final pulumi.Output<String> primaryKey;
  /// The name of the Resource Group where the Azure Relay Namespace Authorization Rule should exist. Changing this forces a new Azure Relay Namespace Authorization Rule to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Secondary Connection String for the Azure Relay Namespace Authorization Rule.
  late final pulumi.Output<String> secondaryConnectionString;
  /// The Secondary Key for the Azure Relay Namespace Authorization Rule.
  late final pulumi.Output<String> secondaryKey;
  /// Grants send access to this Authorization Rule. Defaults to `false`.
  late final pulumi.Output<bool?> send;

  /// Creates a new [NamespaceAuthorizationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceAuthorizationRule]. {@macro pulumi_relay_namespace_authorization_rule_namespace_authorization_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceAuthorizationRule(
    String name, {
    NamespaceAuthorizationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:relay/namespaceAuthorizationRule:NamespaceAuthorizationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    listen = registerOutput<bool?>('listen');
    manage = registerOutput<bool?>('manage');
    this.name = registerOutput<String>('name');
    namespaceName = registerOutput<String>('namespaceName');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    primaryKey = registerOutput<String>('primaryKey');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    secondaryKey = registerOutput<String>('secondaryKey');
    send = registerOutput<bool?>('send');
  }

  /// Gets an existing [NamespaceAuthorizationRule] resource's state with the given [name] and [id].
  static NamespaceAuthorizationRule get(
    String name,
    pulumi.Input<String> id, {
    NamespaceAuthorizationRuleState? state,
  }) {
    return NamespaceAuthorizationRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NamespaceAuthorizationRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:relay/namespaceAuthorizationRule:NamespaceAuthorizationRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    listen = registerOutput<bool?>('listen');
    manage = registerOutput<bool?>('manage');
    this.name = registerOutput<String>('name');
    namespaceName = registerOutput<String>('namespaceName');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    primaryKey = registerOutput<String>('primaryKey');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    secondaryKey = registerOutput<String>('secondaryKey');
    send = registerOutput<bool?>('send');
  }
}
