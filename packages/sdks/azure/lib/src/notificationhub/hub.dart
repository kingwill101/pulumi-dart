import 'package:pulumi/pulumi.dart' as pulumi;
import 'hub_apns_credential.dart';
import 'hub_args.dart';
import 'hub_browser_credential.dart';
import 'hub_gcm_credential.dart';
import 'hub_state.dart';

/// Manages a Notification Hub within a Notification Hub Namespace.
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
/// const exampleHub = new azure.notificationhub.Hub("example", {
///     name: "mynotificationhub",
///     namespaceName: exampleNamespace.name,
///     resourceGroupName: example.name,
///     location: example.location,
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
/// example_hub = azure.notificationhub.Hub("example",
///     name="mynotificationhub",
///     namespace_name=example_namespace.name,
///     resource_group_name=example.name,
///     location=example.location)
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
///     var exampleHub = new Azure.NotificationHub.Hub("example", new()
///     {
///         Name = "mynotificationhub",
///         NamespaceName = exampleNamespace.Name,
///         ResourceGroupName = example.Name,
///         Location = example.Location,
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
/// 		exampleNamespace, err := notificationhub.NewNamespace(ctx, "example", &notificationhub.NamespaceArgs{
/// 			Name:              pulumi.String("myappnamespace"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			NamespaceType:     pulumi.String("NotificationHub"),
/// 			SkuName:           pulumi.String("Free"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = notificationhub.NewHub(ctx, "example", &notificationhub.HubArgs{
/// 			Name:              pulumi.String("mynotificationhub"),
/// 			NamespaceName:     exampleNamespace.Name,
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
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
/// import com.pulumi.azure.notificationhub.Hub;
/// import com.pulumi.azure.notificationhub.HubArgs;
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
///         var exampleHub = new Hub("exampleHub", HubArgs.builder()
///             .name("mynotificationhub")
///             .namespaceName(exampleNamespace.name())
///             .resourceGroupName(example.name())
///             .location(example.location())
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
///   exampleHub:
///     type: azure:notificationhub:Hub
///     name: example
///     properties:
///       name: mynotificationhub
///       namespaceName: ${exampleNamespace.name}
///       resourceGroupName: ${example.name}
///       location: ${example.location}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.NotificationHubs` - 2023-09-01
///
/// ## Import
///
/// Notification Hubs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:notificationhub/hub:Hub hub1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.NotificationHubs/namespaces/namespace1/notificationHubs/hub1
/// ```
class Hub extends pulumi.CustomResource {
  /// A `apns_credential` block as defined below.
  ///
  /// &gt; **Note:** Removing the `apns_credential` block will currently force a recreation of this resource [due to this bug in the Azure SDK for Go](https://github.com/Azure/azure-sdk-for-go/issues/2246) - we'll remove this limitation when the SDK bug is fixed.
  late final pulumi.Output<HubApnsCredential?> apnsCredential;

  /// A `browser_credential` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<HubBrowserCredential?> browserCredential;

  /// A `gcm_credential` block as defined below.
  ///
  /// &gt; **Note:** Removing the `gcm_credential` block will currently force a recreation of this resource [due to this bug in the Azure SDK for Go](https://github.com/Azure/azure-sdk-for-go/issues/2246) - we'll remove this limitation when the SDK bug is fixed.
  late final pulumi.Output<HubGcmCredential?> gcmCredential;

  /// The Azure Region in which this Notification Hub Namespace exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The name to use for this Notification Hub. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the Notification Hub Namespace in which to create this Notification Hub. Changing this forces a new resource to be created.
  late final pulumi.Output<String> namespaceName;

  /// The name of the Resource Group in which the Notification Hub Namespace exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Hub].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Hub]. {@macro pulumi_notificationhub_hub_hub_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Hub(String name, {HubArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:notificationhub/hub:Hub',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    apnsCredential = registerOutput<HubApnsCredential?>('apnsCredential');
    browserCredential = registerOutput<HubBrowserCredential?>(
      'browserCredential',
    );
    gcmCredential = registerOutput<HubGcmCredential?>('gcmCredential');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    namespaceName = registerOutput<String>('namespaceName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Hub] resource's state with the given [name] and [id].
  static Hub get(String name, pulumi.Input<String> id, {HubState? state}) {
    return Hub._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Hub._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:notificationhub/hub:Hub',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apnsCredential = registerOutput<HubApnsCredential?>('apnsCredential');
    browserCredential = registerOutput<HubBrowserCredential?>(
      'browserCredential',
    );
    gcmCredential = registerOutput<HubGcmCredential?>('gcmCredential');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    namespaceName = registerOutput<String>('namespaceName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
