import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_access_args.dart';
import 'disk_access_state.dart';

/// Manages a Disk Access.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.compute.DiskAccess("example", {
///     name: "example",
///     resourceGroupName: "example",
///     location: "West Europe",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.DiskAccess("example",
///     name="example",
///     resource_group_name="example",
///     location="West Europe")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Compute.DiskAccess("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = "example",
///         Location = "West Europe",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewDiskAccess(ctx, "example", &compute.DiskAccessArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: pulumi.String("example"),
/// 			Location:          pulumi.String("West Europe"),
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
/// import com.pulumi.azure.compute.DiskAccess;
/// import com.pulumi.azure.compute.DiskAccessArgs;
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
///         var example = new DiskAccess("example", DiskAccessArgs.builder()
///             .name("example")
///             .resourceGroupName("example")
///             .location("West Europe")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:compute:DiskAccess
///     properties:
///       name: example
///       resourceGroupName: example
///       location: West Europe
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2022-03-02
///
/// ## Import
///
/// Disk Access resource can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/diskAccess:DiskAccess example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Compute/diskAccesses/diskAccess1
/// ```
class DiskAccess extends pulumi.CustomResource {
  /// The Azure Region where the Disk Access should exist. Changing this forces a new Disk to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Disk Access. Changing this forces a new Disk Access to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Disk Access should exist. Changing this forces a new Disk Access to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Disk Access.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [DiskAccess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiskAccess]. {@macro pulumi_compute_disk_access_disk_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiskAccess(
    String name, {
    DiskAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/diskAccess:DiskAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [DiskAccess] resource's state with the given [name] and [id].
  static DiskAccess get(
    String name,
    pulumi.Input<String> id, {
    DiskAccessState? state,
  }) {
    return DiskAccess._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DiskAccess._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/diskAccess:DiskAccess',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
