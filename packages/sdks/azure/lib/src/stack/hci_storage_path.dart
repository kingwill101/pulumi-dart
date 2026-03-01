import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_storage_path_args.dart';
import 'hci_storage_path_state.dart';

/// Manages an Azure Stack HCI Storage Path.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const exampleHciStoragePath = new azure.stack.HciStoragePath("example", {
///     name: "example-sp",
///     resourceGroupName: example.name,
///     location: example.location,
///     customLocationId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1",
///     path: "C:\\ClusterStorage\\UserStorage_2\\sp-example",
///     tags: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_hci_storage_path = azure.stack.HciStoragePath("example",
///     name="example-sp",
///     resource_group_name=example.name,
///     location=example.location,
///     custom_location_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1",
///     path="C:\\ClusterStorage\\UserStorage_2\\sp-example",
///     tags={
///         "foo": "bar",
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
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleHciStoragePath = new Azure.Stack.HciStoragePath("example", new()
///     {
///         Name = "example-sp",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         CustomLocationId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1",
///         Path = "C:\\ClusterStorage\\UserStorage_2\\sp-example",
///         Tags =
///         {
///             { "foo", "bar" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/stack"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = stack.NewHciStoragePath(ctx, "example", &stack.HciStoragePathArgs{
/// 			Name:              pulumi.String("example-sp"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			CustomLocationId:  pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1"),
/// 			Path:              pulumi.String("C:\\ClusterStorage\\UserStorage_2\\sp-example"),
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// import com.pulumi.azure.stack.HciStoragePath;
/// import com.pulumi.azure.stack.HciStoragePathArgs;
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
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleHciStoragePath = new HciStoragePath("exampleHciStoragePath", HciStoragePathArgs.builder()
///             .name("example-sp")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .customLocationId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1")
///             .path("C:\\ClusterStorage\\UserStorage_2\\sp-example")
///             .tags(Map.of("foo", "bar"))
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
///       name: example-rg
///       location: West Europe
///   exampleHciStoragePath:
///     type: azure:stack:HciStoragePath
///     name: example
///     properties:
///       name: example-sp
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       customLocationId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ExtendedLocation/customLocations/cl1
///       path: C:\ClusterStorage\UserStorage_2\sp-example
///       tags:
///         foo: bar
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.AzureStackHCI` - 2024-01-01
///
/// ## Import
///
/// Azure Stack HCI Storage Paths can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:stack/hciStoragePath:HciStoragePath example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.AzureStackHCI/storageContainers/storage1
/// ```
class HciStoragePath extends pulumi.CustomResource {
  /// The ID of Custom Location where the Azure Stack HCI Storage Path should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> customLocationId;
  /// The Azure Region where the Azure Stack HCI Storage Path should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Azure Stack HCI Storage Path. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The file path on the disk to create the Storage Path. Changing this forces a new resource to be created.
  late final pulumi.Output<String> path;
  /// The name of the Resource Group where the Azure Stack HCI Storage Path should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Azure Stack HCI Storage Path.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [HciStoragePath].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HciStoragePath]. {@macro pulumi_stack_hci_storage_path_hci_storage_path_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HciStoragePath(
    String name, {
    HciStoragePathArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:stack/hciStoragePath:HciStoragePath',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.customLocationId = registerOutput<String>('customLocationId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.path = registerOutput<String>('path');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [HciStoragePath] resource's state with the given [name] and [id].
  static HciStoragePath get(
    String name,
    pulumi.Input<String> id, {
    HciStoragePathState? state,
  }) {
    return HciStoragePath._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HciStoragePath._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:stack/hciStoragePath:HciStoragePath',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.customLocationId = registerOutput<String>('customLocationId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.path = registerOutput<String>('path');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
