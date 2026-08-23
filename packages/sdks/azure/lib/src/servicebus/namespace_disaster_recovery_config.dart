import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_disaster_recovery_config_args.dart';
import 'namespace_disaster_recovery_config_state.dart';

/// Manages a Disaster Recovery Config for a Service Bus Namespace.
///
/// &gt; **Note:** Disaster Recovery Config is a Premium SKU only capability.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "servicebus-replication",
///     location: "West Europe",
/// });
/// const primary = new azure.servicebus.Namespace("primary", {
///     name: "servicebus-primary",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Premium",
///     capacity: 1,
/// });
/// const secondary = new azure.servicebus.Namespace("secondary", {
///     name: "servicebus-secondary",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Premium",
///     capacity: 1,
/// });
/// const exampleNamespaceAuthorizationRule = new azure.servicebus.NamespaceAuthorizationRule("example", {
///     name: "examplerule",
///     namespaceId: exampleAzurermServicebusNamespace.id,
///     listen: true,
///     send: true,
///     manage: false,
/// });
/// const exampleNamespaceDisasterRecoveryConfig = new azure.servicebus.NamespaceDisasterRecoveryConfig("example", {
///     name: "servicebus-alias-name",
///     primaryNamespaceId: primary.id,
///     partnerNamespaceId: secondary.id,
///     aliasAuthorizationRuleId: exampleNamespaceAuthorizationRule.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="servicebus-replication",
///     location="West Europe")
/// primary = azure.servicebus.Namespace("primary",
///     name="servicebus-primary",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Premium",
///     capacity=1)
/// secondary = azure.servicebus.Namespace("secondary",
///     name="servicebus-secondary",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Premium",
///     capacity=1)
/// example_namespace_authorization_rule = azure.servicebus.NamespaceAuthorizationRule("example",
///     name="examplerule",
///     namespace_id=example_azurerm_servicebus_namespace["id"],
///     listen=True,
///     send=True,
///     manage=False)
/// example_namespace_disaster_recovery_config = azure.servicebus.NamespaceDisasterRecoveryConfig("example",
///     name="servicebus-alias-name",
///     primary_namespace_id=primary.id,
///     partner_namespace_id=secondary.id,
///     alias_authorization_rule_id=example_namespace_authorization_rule.id)
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
///         Name = "servicebus-replication",
///         Location = "West Europe",
///     });
///
///     var primary = new Azure.ServiceBus.Namespace("primary", new()
///     {
///         Name = "servicebus-primary",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Premium",
///         Capacity = 1,
///     });
///
///     var secondary = new Azure.ServiceBus.Namespace("secondary", new()
///     {
///         Name = "servicebus-secondary",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Premium",
///         Capacity = 1,
///     });
///
///     var exampleNamespaceAuthorizationRule = new Azure.ServiceBus.NamespaceAuthorizationRule("example", new()
///     {
///         Name = "examplerule",
///         NamespaceId = exampleAzurermServicebusNamespace.Id,
///         Listen = true,
///         Send = true,
///         Manage = false,
///     });
///
///     var exampleNamespaceDisasterRecoveryConfig = new Azure.ServiceBus.NamespaceDisasterRecoveryConfig("example", new()
///     {
///         Name = "servicebus-alias-name",
///         PrimaryNamespaceId = primary.Id,
///         PartnerNamespaceId = secondary.Id,
///         AliasAuthorizationRuleId = exampleNamespaceAuthorizationRule.Id,
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
/// 			Name:     pulumi.String("servicebus-replication"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primary, err := servicebus.NewNamespace(ctx, "primary", &servicebus.NamespaceArgs{
/// 			Name:              pulumi.String("servicebus-primary"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Premium"),
/// 			Capacity:          pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		secondary, err := servicebus.NewNamespace(ctx, "secondary", &servicebus.NamespaceArgs{
/// 			Name:              pulumi.String("servicebus-secondary"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Premium"),
/// 			Capacity:          pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNamespaceAuthorizationRule, err := servicebus.NewNamespaceAuthorizationRule(ctx, "example", &servicebus.NamespaceAuthorizationRuleArgs{
/// 			Name:        pulumi.String("examplerule"),
/// 			NamespaceId: pulumi.Any(exampleAzurermServicebusNamespace.Id),
/// 			Listen:      pulumi.Bool(true),
/// 			Send:        pulumi.Bool(true),
/// 			Manage:      pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicebus.NewNamespaceDisasterRecoveryConfig(ctx, "example", &servicebus.NamespaceDisasterRecoveryConfigArgs{
/// 			Name:                     pulumi.String("servicebus-alias-name"),
/// 			PrimaryNamespaceId:       primary.ID(),
/// 			PartnerNamespaceId:       secondary.ID(),
/// 			AliasAuthorizationRuleId: exampleNamespaceAuthorizationRule.ID(),
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
///   name     = "servicebus-replication"
///   location = "West Europe"
/// }
/// resource "azure_servicebus_namespace" "primary" {
///   name                = "servicebus-primary"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "Premium"
///   capacity            = "1"
/// }
/// resource "azure_servicebus_namespace" "secondary" {
///   name                = "servicebus-secondary"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "Premium"
///   capacity            = "1"
/// }
/// resource "azure_servicebus_namespaceauthorizationrule" "example" {
///   name         = "examplerule"
///   namespace_id = exampleAzurermServicebusNamespace.id
///   listen       = true
///   send         = true
///   manage       = false
/// }
/// resource "azure_servicebus_namespacedisasterrecoveryconfig" "example" {
///   name                        = "servicebus-alias-name"
///   primary_namespace_id        = azure_servicebus_namespace.primary.id
///   partner_namespace_id        = azure_servicebus_namespace.secondary.id
///   alias_authorization_rule_id = azure_servicebus_namespaceauthorizationrule.example.id
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
/// import com.pulumi.azure.servicebus.NamespaceDisasterRecoveryConfig;
/// import com.pulumi.azure.servicebus.NamespaceDisasterRecoveryConfigArgs;
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
///             .name("servicebus-replication")
///             .location("West Europe")
///             .build());
///
///         var primary = new Namespace("primary", NamespaceArgs.builder()
///             .name("servicebus-primary")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Premium")
///             .capacity(1)
///             .build());
///
///         var secondary = new Namespace("secondary", NamespaceArgs.builder()
///             .name("servicebus-secondary")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Premium")
///             .capacity(1)
///             .build());
///
///         var exampleNamespaceAuthorizationRule = new NamespaceAuthorizationRule("exampleNamespaceAuthorizationRule", NamespaceAuthorizationRuleArgs.builder()
///             .name("examplerule")
///             .namespaceId(exampleAzurermServicebusNamespace.id())
///             .listen(true)
///             .send(true)
///             .manage(false)
///             .build());
///
///         var exampleNamespaceDisasterRecoveryConfig = new NamespaceDisasterRecoveryConfig("exampleNamespaceDisasterRecoveryConfig", NamespaceDisasterRecoveryConfigArgs.builder()
///             .name("servicebus-alias-name")
///             .primaryNamespaceId(primary.id())
///             .partnerNamespaceId(secondary.id())
///             .aliasAuthorizationRuleId(exampleNamespaceAuthorizationRule.id())
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
///       name: servicebus-replication
///       location: West Europe
///   primary:
///     type: azure:servicebus:Namespace
///     properties:
///       name: servicebus-primary
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Premium
///       capacity: '1'
///   secondary:
///     type: azure:servicebus:Namespace
///     properties:
///       name: servicebus-secondary
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Premium
///       capacity: '1'
///   exampleNamespaceAuthorizationRule:
///     type: azure:servicebus:NamespaceAuthorizationRule
///     name: example
///     properties:
///       name: examplerule
///       namespaceId: ${exampleAzurermServicebusNamespace.id}
///       listen: true
///       send: true
///       manage: false
///   exampleNamespaceDisasterRecoveryConfig:
///     type: azure:servicebus:NamespaceDisasterRecoveryConfig
///     name: example
///     properties:
///       name: servicebus-alias-name
///       primaryNamespaceId: ${primary.id}
///       partnerNamespaceId: ${secondary.id}
///       aliasAuthorizationRuleId: ${exampleNamespaceAuthorizationRule.id}
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
/// Service Bus DR configs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:servicebus/namespaceDisasterRecoveryConfig:NamespaceDisasterRecoveryConfig config1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ServiceBus/namespaces/namespace1/disasterRecoveryConfigs/config1
/// ```
class NamespaceDisasterRecoveryConfig extends pulumi.CustomResource {
  /// The Shared access policies used to access the connection string for the alias.
  late final pulumi.Output<String?> aliasAuthorizationRuleId;
  /// The primary access key for the authorization rule `RootManageSharedAccessKey`.
  late final pulumi.Output<String> defaultPrimaryKey;
  /// The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  late final pulumi.Output<String> defaultSecondaryKey;
  /// Specifies the name of the Disaster Recovery Config. This is the alias DNS name that will be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Service Bus Namespace to replicate to.
  late final pulumi.Output<String> partnerNamespaceId;
  /// The alias Primary Connection String for the ServiceBus Namespace.
  late final pulumi.Output<String> primaryConnectionStringAlias;
  /// The ID of the primary Service Bus Namespace to replicate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> primaryNamespaceId;
  /// The alias Secondary Connection String for the ServiceBus Namespace
  late final pulumi.Output<String> secondaryConnectionStringAlias;

  /// Creates a new [NamespaceDisasterRecoveryConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceDisasterRecoveryConfig]. {@macro pulumi_servicebus_namespace_disaster_recovery_config_namespace_disaster_recovery_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceDisasterRecoveryConfig(
    String name, {
    NamespaceDisasterRecoveryConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:servicebus/namespaceDisasterRecoveryConfig:NamespaceDisasterRecoveryConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aliasAuthorizationRuleId = registerOutput<String?>('aliasAuthorizationRuleId');
    defaultPrimaryKey = registerOutput<String>('defaultPrimaryKey');
    defaultSecondaryKey = registerOutput<String>('defaultSecondaryKey');
    this.name = registerOutput<String>('name');
    partnerNamespaceId = registerOutput<String>('partnerNamespaceId');
    primaryConnectionStringAlias = registerOutput<String>('primaryConnectionStringAlias');
    primaryNamespaceId = registerOutput<String>('primaryNamespaceId');
    secondaryConnectionStringAlias = registerOutput<String>('secondaryConnectionStringAlias');
  }

  /// Gets an existing [NamespaceDisasterRecoveryConfig] resource's state with the given [name] and [id].
  static NamespaceDisasterRecoveryConfig get(
    String name,
    pulumi.Input<String> id, {
    NamespaceDisasterRecoveryConfigState? state,
  }) {
    return NamespaceDisasterRecoveryConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NamespaceDisasterRecoveryConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:servicebus/namespaceDisasterRecoveryConfig:NamespaceDisasterRecoveryConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aliasAuthorizationRuleId = registerOutput<String?>('aliasAuthorizationRuleId');
    defaultPrimaryKey = registerOutput<String>('defaultPrimaryKey');
    defaultSecondaryKey = registerOutput<String>('defaultSecondaryKey');
    this.name = registerOutput<String>('name');
    partnerNamespaceId = registerOutput<String>('partnerNamespaceId');
    primaryConnectionStringAlias = registerOutput<String>('primaryConnectionStringAlias');
    primaryNamespaceId = registerOutput<String>('primaryNamespaceId');
    secondaryConnectionStringAlias = registerOutput<String>('secondaryConnectionStringAlias');
  }
}
