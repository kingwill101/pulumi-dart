import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_args.dart';
import 'namespace_customer_managed_key.dart';
import 'namespace_identity.dart';
import 'namespace_network_rule_set.dart';
import 'namespace_state.dart';

/// Manages a ServiceBus Namespace.
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
///     location: "West Europe",
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="my-servicebus",
///     location="West Europe")
/// example_namespace = azure.servicebus.Namespace("example",
///     name="tfex-servicebus-namespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard",
///     tags={
///         "source": "example",
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
///         Name = "my-servicebus",
///         Location = "West Europe",
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
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = servicebus.NewNamespace(ctx, "example", &servicebus.NamespaceArgs{
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
/// 		return nil
/// 	})
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("my-servicebus")
///             .location("West Europe")
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: my-servicebus
///       location: West Europe
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
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ServiceBus` - 2024-01-01
///
/// ## Import
///
/// Service Bus Namespace can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventhub/namespace:Namespace example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ServiceBus/namespaces/sbns1
/// ```
class Namespace extends pulumi.CustomResource {
  /// Specifies the capacity. When `sku` is `Premium`, capacity can be `1`, `2`, `4`, `8` or `16`. When `sku` is `Basic` or `Standard`, capacity can be `0` only.
  late final pulumi.Output<int?> capacity;
  /// An `customer_managed_key` block as defined below.
  late final pulumi.Output<NamespaceCustomerManagedKey?> customerManagedKey;
  /// The primary connection string for the authorization rule `RootManageSharedAccessKey`.
  late final pulumi.Output<String> defaultPrimaryConnectionString;
  /// The primary access key for the authorization rule `RootManageSharedAccessKey`.
  late final pulumi.Output<String> defaultPrimaryKey;
  /// The secondary connection string for the authorization rule `RootManageSharedAccessKey`.
  late final pulumi.Output<String> defaultSecondaryConnectionString;
  /// The secondary access key for the authorization rule `RootManageSharedAccessKey`.
  late final pulumi.Output<String> defaultSecondaryKey;
  /// The URL to access the Service Bus Namespace.
  late final pulumi.Output<String> endpoint;
  /// An `identity` block as defined below.
  late final pulumi.Output<NamespaceIdentity?> identity;
  /// Whether or not SAS authentication is enabled for the Service Bus namespace. Defaults to `true`.
  late final pulumi.Output<bool?> localAuthEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The minimum supported TLS version for this Service Bus Namespace. Valid values are: `1.0`, `1.1` and `1.2`. Defaults to `1.2`.
  ///
  /// > **Note:** Azure Services will require TLS 1.2+ by August 2025, please see this [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more.
  late final pulumi.Output<String?> minimumTlsVersion;
  /// Specifies the name of the Service Bus Namespace resource . Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// An `network_rule_set` block as defined below.
  late final pulumi.Output<NamespaceNetworkRuleSet> networkRuleSet;
  /// Specifies the number messaging partitions. Only valid when `sku` is `Premium` and the minimum number is `1`. Possible values include `0`, `1`, `2`, and `4`. Defaults to `0` for Standard, Basic namespace. Changing this forces a new resource to be created.
  ///
  /// > **Note:** It's not possible to change the partitioning option on any existing namespace. The number of partitions can only be set during namespace creation. Please check the doc https://learn.microsoft.com/en-us/azure/service-bus-messaging/enable-partitions-premium for more feature restrictions.
  late final pulumi.Output<int?> premiumMessagingPartitions;
  /// Is public network access enabled for the Service Bus Namespace? Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the resource group in which to Changing this forces a new resource to be created.
  /// create the namespace.
  late final pulumi.Output<String> resourceGroupName;
  /// Defines which tier to use. Options are `Basic`, `Standard` or `Premium`. Please note that setting this field to `Premium` will force the creation of a new resource.
  late final pulumi.Output<String> sku;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_eventhub_namespace_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.capacity = registerOutput<int?>('capacity');
    this.customerManagedKey = registerOutput<NamespaceCustomerManagedKey?>('customerManagedKey');
    this.defaultPrimaryConnectionString = registerOutput<String>('defaultPrimaryConnectionString');
    this.defaultPrimaryKey = registerOutput<String>('defaultPrimaryKey');
    this.defaultSecondaryConnectionString = registerOutput<String>('defaultSecondaryConnectionString');
    this.defaultSecondaryKey = registerOutput<String>('defaultSecondaryKey');
    this.endpoint = registerOutput<String>('endpoint');
    this.identity = registerOutput<NamespaceIdentity?>('identity');
    this.localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    this.location = registerOutput<String>('location');
    this.minimumTlsVersion = registerOutput<String?>('minimumTlsVersion');
    this.name = registerOutput<String>('name');
    this.networkRuleSet = registerOutput<NamespaceNetworkRuleSet>('networkRuleSet');
    this.premiumMessagingPartitions = registerOutput<int?>('premiumMessagingPartitions');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.sku = registerOutput<String>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Namespace] resource's state with the given [name] and [id].
  static Namespace get(
    String name,
    pulumi.Input<String> id, {
    NamespaceState? state,
  }) {
    return Namespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Namespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.capacity = registerOutput<int?>('capacity');
    this.customerManagedKey = registerOutput<NamespaceCustomerManagedKey?>('customerManagedKey');
    this.defaultPrimaryConnectionString = registerOutput<String>('defaultPrimaryConnectionString');
    this.defaultPrimaryKey = registerOutput<String>('defaultPrimaryKey');
    this.defaultSecondaryConnectionString = registerOutput<String>('defaultSecondaryConnectionString');
    this.defaultSecondaryKey = registerOutput<String>('defaultSecondaryKey');
    this.endpoint = registerOutput<String>('endpoint');
    this.identity = registerOutput<NamespaceIdentity?>('identity');
    this.localAuthEnabled = registerOutput<bool?>('localAuthEnabled');
    this.location = registerOutput<String>('location');
    this.minimumTlsVersion = registerOutput<String?>('minimumTlsVersion');
    this.name = registerOutput<String>('name');
    this.networkRuleSet = registerOutput<NamespaceNetworkRuleSet>('networkRuleSet');
    this.premiumMessagingPartitions = registerOutput<int?>('premiumMessagingPartitions');
    this.publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.sku = registerOutput<String>('sku');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
