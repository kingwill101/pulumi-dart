import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_authorization_rule_args.dart';
import 'namespace_authorization_rule_state.dart';

/// Manages a ServiceBus Namespace authorization Rule within a ServiceBus.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "my-servicebus",
///     location: "West US",
/// });
/// const exampleNamespace = new azure.servicebus.Namespace("example", {
///     name: "tfex-servicebus-namespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
///     tags: {
///         source: "example",
///     },
/// });
/// const exampleNamespaceAuthorizationRule = new azure.servicebus.NamespaceAuthorizationRule("example", {
///     name: "examplerule",
///     namespaceId: exampleNamespace.id,
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
///     name="my-servicebus",
///     location="West US")
/// example_namespace = azure.servicebus.Namespace("example",
///     name="tfex-servicebus-namespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard",
///     tags={
///         "source": "example",
///     })
/// example_namespace_authorization_rule = azure.servicebus.NamespaceAuthorizationRule("example",
///     name="examplerule",
///     namespace_id=example_namespace.id,
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
///         Name = "my-servicebus",
///         Location = "West US",
///     });
///
///     var exampleNamespace = new Azure.ServiceBus.Namespace("example", new()
///     {
///         Name = "tfex-servicebus-namespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///         Tags =
///         {
///             { "source", "example" },
///         },
///     });
///
///     var exampleNamespaceAuthorizationRule = new Azure.ServiceBus.NamespaceAuthorizationRule("example", new()
///     {
///         Name = "examplerule",
///         NamespaceId = exampleNamespace.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/servicebus"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("my-servicebus"),
/// 			Location: pulumi.String("West US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNamespace, err := servicebus.NewNamespace(ctx, "example", &servicebus.NamespaceArgs{
/// 			Name:              pulumi.String("tfex-servicebus-namespace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 			Tags: pulumi.StringMap{
/// 				"source": pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicebus.NewNamespaceAuthorizationRule(ctx, "example", &servicebus.NamespaceAuthorizationRuleArgs{
/// 			Name:        pulumi.String("examplerule"),
/// 			NamespaceId: exampleNamespace.ID(),
/// 			Listen:      pulumi.Bool(true),
/// 			Send:        pulumi.Bool(true),
/// 			Manage:      pulumi.Bool(false),
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
///   name     = "my-servicebus"
///   location = "West US"
/// }
/// resource "azure_servicebus_namespace" "example" {
///   name                = "tfex-servicebus-namespace"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "Standard"
///   tags = {
///     "source" = "example"
///   }
/// }
/// resource "azure_servicebus_namespaceauthorizationrule" "example" {
///   name         = "examplerule"
///   namespace_id = azure_servicebus_namespace.example.id
///   listen       = true
///   send         = true
///   manage       = false
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
/// import com.pulumi.azure.servicebus.Namespace;
/// import com.pulumi.azure.servicebus.NamespaceArgs;
/// import com.pulumi.azure.servicebus.NamespaceAuthorizationRule;
/// import com.pulumi.azure.servicebus.NamespaceAuthorizationRuleArgs;
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
///             .name("my-servicebus")
///             .location("West US")
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("tfex-servicebus-namespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .tags(Map.of("source", "example"))
///             .build());
///
///         var exampleNamespaceAuthorizationRule = new NamespaceAuthorizationRule("exampleNamespaceAuthorizationRule", NamespaceAuthorizationRuleArgs.builder()
///             .name("examplerule")
///             .namespaceId(exampleNamespace.id())
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
///       name: my-servicebus
///       location: West US
///   exampleNamespace:
///     type: azure:servicebus:Namespace
///     name: example
///     properties:
///       name: tfex-servicebus-namespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///       tags:
///         source: example
///   exampleNamespaceAuthorizationRule:
///     type: azure:servicebus:NamespaceAuthorizationRule
///     name: example
///     properties:
///       name: examplerule
///       namespaceId: ${exampleNamespace.id}
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
/// * `Microsoft.ServiceBus` - 2024-01-01
///
/// ## Import
///
/// ServiceBus Namespace authorization rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:servicebus/namespaceAuthorizationRule:NamespaceAuthorizationRule rule1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ServiceBus/namespaces/namespace1/authorizationRules/rule1
/// ```
class NamespaceAuthorizationRule extends pulumi.CustomResource {
  /// Grants listen access to this Authorization Rule. Defaults to `false`.
  late final pulumi.Output<bool?> listen;
  /// Grants manage access to this Authorization Rule. When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  late final pulumi.Output<bool?> manage;
  /// Specifies the name of the ServiceBus Namespace Authorization Rule resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the ID of the ServiceBus Namespace. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** At least one of the 3 permissions below needs to be set.
  late final pulumi.Output<String> namespaceId;
  /// The Primary Connection String for the ServiceBus Namespace authorization Rule.
  late final pulumi.Output<String> primaryConnectionString;
  /// The alias Primary Connection String for the ServiceBus Namespace, if the namespace is Geo DR paired.
  late final pulumi.Output<String> primaryConnectionStringAlias;
  /// The Primary Key for the ServiceBus Namespace authorization Rule.
  late final pulumi.Output<String> primaryKey;
  /// The Secondary Connection String for the ServiceBus Namespace authorization Rule.
  late final pulumi.Output<String> secondaryConnectionString;
  /// The alias Secondary Connection String for the ServiceBus Namespace
  late final pulumi.Output<String> secondaryConnectionStringAlias;
  /// The Secondary Key for the ServiceBus Namespace authorization Rule.
  late final pulumi.Output<String> secondaryKey;
  /// Grants send access to this Authorization Rule. Defaults to `false`.
  late final pulumi.Output<bool?> send;

  /// Creates a new [NamespaceAuthorizationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceAuthorizationRule]. {@macro pulumi_servicebus_namespace_authorization_rule_namespace_authorization_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceAuthorizationRule(
    String name, {
    NamespaceAuthorizationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:servicebus/namespaceAuthorizationRule:NamespaceAuthorizationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    listen = registerOutput<bool?>('listen');
    manage = registerOutput<bool?>('manage');
    this.name = registerOutput<String>('name');
    namespaceId = registerOutput<String>('namespaceId');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    primaryConnectionStringAlias = registerOutput<String>('primaryConnectionStringAlias');
    primaryKey = registerOutput<String>('primaryKey');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    secondaryConnectionStringAlias = registerOutput<String>('secondaryConnectionStringAlias');
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
          'azure:servicebus/namespaceAuthorizationRule:NamespaceAuthorizationRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    listen = registerOutput<bool?>('listen');
    manage = registerOutput<bool?>('manage');
    this.name = registerOutput<String>('name');
    namespaceId = registerOutput<String>('namespaceId');
    primaryConnectionString = registerOutput<String>('primaryConnectionString');
    primaryConnectionStringAlias = registerOutput<String>('primaryConnectionStringAlias');
    primaryKey = registerOutput<String>('primaryKey');
    secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    secondaryConnectionStringAlias = registerOutput<String>('secondaryConnectionStringAlias');
    secondaryKey = registerOutput<String>('secondaryKey');
    send = registerOutput<bool?>('send');
  }
}
