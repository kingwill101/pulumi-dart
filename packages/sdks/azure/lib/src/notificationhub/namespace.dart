import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_args.dart';
import 'namespace_state.dart';

/// Manages a Notification Hub Namespace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "notificationhub-resources",
///     location: "West Europe",
/// });
/// const exampleNamespace = new azure.notificationhub.Namespace("example", {
///     name: "myappnamespace",
///     resourceGroupName: example.name,
///     location: example.location,
///     namespaceType: "NotificationHub",
///     skuName: "Free",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="notificationhub-resources",
///     location="West Europe")
/// example_namespace = azure.notificationhub.Namespace("example",
///     name="myappnamespace",
///     resource_group_name=example.name,
///     location=example.location,
///     namespace_type="NotificationHub",
///     sku_name="Free")
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
///         Name = "notificationhub-resources",
///         Location = "West Europe",
///     });
///
///     var exampleNamespace = new Azure.NotificationHub.Namespace("example", new()
///     {
///         Name = "myappnamespace",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         NamespaceType = "NotificationHub",
///         SkuName = "Free",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/notificationhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("notificationhub-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = notificationhub.NewNamespace(ctx, "example", &notificationhub.NamespaceArgs{
/// 			Name:              pulumi.String("myappnamespace"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			NamespaceType:     pulumi.String("NotificationHub"),
/// 			SkuName:           pulumi.String("Free"),
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
/// import com.pulumi.azure.notificationhub.Namespace;
/// import com.pulumi.azure.notificationhub.NamespaceArgs;
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
///             .name("notificationhub-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleNamespace = new Namespace("exampleNamespace", NamespaceArgs.builder()
///             .name("myappnamespace")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .namespaceType("NotificationHub")
///             .skuName("Free")
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
///       name: notificationhub-resources
///       location: West Europe
///   exampleNamespace:
///     type: azure:notificationhub:Namespace
///     name: example
///     properties:
///       name: myappnamespace
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       namespaceType: NotificationHub
///       skuName: Free
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.NotificationHubs` - 2023-09-01
///
/// ## Import
///
/// Notification Hub Namespaces can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:notificationhub/namespace:Namespace namespace1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.NotificationHubs/namespaces/namespace1
/// ```
class Namespace extends pulumi.CustomResource {
  /// Is this Notification Hub Namespace enabled? Defaults to `true`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> enabled;
  /// The Azure Region in which this Notification Hub Namespace should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name to use for this Notification Hub Namespace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The Type of Namespace - possible values are `Messaging` or `NotificationHub`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> namespaceType;
  /// The allowed Replication Region for the Notification Hub Namespace. Possible values are `Default`, `None`, `AustraliaEast`, `BrazilSouth`, `NorthEurope`, `SouthAfricaNorth`, `SouthEastAsia`, `WestUs2`. Changing this forces a new resource to be created. Defaults to `Default`.
  late final pulumi.Output<String?> replicationRegion;
  /// The name of the Resource Group in which the Notification Hub Namespace should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The ServiceBus Endpoint for this Notification Hub Namespace.
  late final pulumi.Output<String> servicebusEndpoint;
  /// The name of the SKU to use for this Notification Hub Namespace. Possible values are `Free`, `Basic` or `Standard`.
  late final pulumi.Output<String> skuName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Is Zone Redundancy Enabled for the Notification Hub Namespace. Defaults to `false`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> zoneRedundancyEnabled;

  /// Creates a new [Namespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Namespace]. {@macro pulumi_notificationhub_namespace_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Namespace(
    String name, {
    NamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:notificationhub/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool?>('enabled');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.namespaceType = registerOutput<String>('namespaceType');
    this.replicationRegion = registerOutput<String?>('replicationRegion');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.servicebusEndpoint = registerOutput<String>('servicebusEndpoint');
    this.skuName = registerOutput<String>('skuName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.zoneRedundancyEnabled = registerOutput<bool?>('zoneRedundancyEnabled');
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
          'azure:notificationhub/namespace:Namespace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enabled = registerOutput<bool?>('enabled');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.namespaceType = registerOutput<String>('namespaceType');
    this.replicationRegion = registerOutput<String?>('replicationRegion');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.servicebusEndpoint = registerOutput<String>('servicebusEndpoint');
    this.skuName = registerOutput<String>('skuName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.zoneRedundancyEnabled = registerOutput<bool?>('zoneRedundancyEnabled');
  }
}
