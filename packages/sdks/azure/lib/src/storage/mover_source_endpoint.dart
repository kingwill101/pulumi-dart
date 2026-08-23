import 'package:pulumi/pulumi.dart' as pulumi;
import 'mover_source_endpoint_args.dart';
import 'mover_source_endpoint_state.dart';

/// Manages a Storage Mover Source Endpoint.
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
/// const exampleMover = new azure.storage.Mover("example", {
///     name: "example-ssm",
///     resourceGroupName: example.name,
///     location: "West Europe",
/// });
/// const exampleMoverSourceEndpoint = new azure.storage.MoverSourceEndpoint("example", {
///     name: "example-se",
///     storageMoverId: exampleMover.id,
///     "export": "/",
///     host: "192.168.0.1",
///     nfsVersion: "NFSv3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_mover = azure.storage.Mover("example",
///     name="example-ssm",
///     resource_group_name=example.name,
///     location="West Europe")
/// example_mover_source_endpoint = azure.storage.MoverSourceEndpoint("example",
///     name="example-se",
///     storage_mover_id=example_mover.id,
///     export="/",
///     host="192.168.0.1",
///     nfs_version="NFSv3")
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
///     var exampleMover = new Azure.Storage.Mover("example", new()
///     {
///         Name = "example-ssm",
///         ResourceGroupName = example.Name,
///         Location = "West Europe",
///     });
///
///     var exampleMoverSourceEndpoint = new Azure.Storage.MoverSourceEndpoint("example", new()
///     {
///         Name = "example-se",
///         StorageMoverId = exampleMover.Id,
///         Export = "/",
///         Host = "192.168.0.1",
///         NfsVersion = "NFSv3",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 		exampleMover, err := storage.NewMover(ctx, "example", &storage.MoverArgs{
/// 			Name:              pulumi.String("example-ssm"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewMoverSourceEndpoint(ctx, "example", &storage.MoverSourceEndpointArgs{
/// 			Name:           pulumi.String("example-se"),
/// 			StorageMoverId: exampleMover.ID(),
/// 			Export:         pulumi.String("/"),
/// 			Host:           pulumi.String("192.168.0.1"),
/// 			NfsVersion:     pulumi.String("NFSv3"),
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
/// resource "azure_storage_mover" "example" {
///   name                = "example-ssm"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = "West Europe"
/// }
/// resource "azure_storage_moversourceendpoint" "example" {
///   name             = "example-se"
///   storage_mover_id = azure_storage_mover.example.id
///   export           = "/"
///   host             = "192.168.0.1"
///   nfs_version      = "NFSv3"
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
/// import com.pulumi.azure.storage.Mover;
/// import com.pulumi.azure.storage.MoverArgs;
/// import com.pulumi.azure.storage.MoverSourceEndpoint;
/// import com.pulumi.azure.storage.MoverSourceEndpointArgs;
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
///         var exampleMover = new Mover("exampleMover", MoverArgs.builder()
///             .name("example-ssm")
///             .resourceGroupName(example.name())
///             .location("West Europe")
///             .build());
///
///         var exampleMoverSourceEndpoint = new MoverSourceEndpoint("exampleMoverSourceEndpoint", MoverSourceEndpointArgs.builder()
///             .name("example-se")
///             .storageMoverId(exampleMover.id())
///             .export("/")
///             .host("192.168.0.1")
///             .nfsVersion("NFSv3")
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
///   exampleMover:
///     type: azure:storage:Mover
///     name: example
///     properties:
///       name: example-ssm
///       resourceGroupName: ${example.name}
///       location: West Europe
///   exampleMoverSourceEndpoint:
///     type: azure:storage:MoverSourceEndpoint
///     name: example
///     properties:
///       name: example-se
///       storageMoverId: ${exampleMover.id}
///       export: /
///       host: 192.168.0.1
///       nfsVersion: NFSv3
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.StorageMover` - 2025-07-01
///
/// ## Import
///
/// Storage Mover Source Endpoint can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/moverSourceEndpoint:MoverSourceEndpoint example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.StorageMover/storageMovers/storageMover1/endpoints/endpoint1
/// ```
class MoverSourceEndpoint extends pulumi.CustomResource {
  /// Specifies a description for the Storage Mover Source Endpoint.
  late final pulumi.Output<String?> description;
  /// Specifies the directory being exported from the server. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> export;
  /// Specifies the host name or IP address of the server exporting the file system. Changing this forces a new resource to be created.
  late final pulumi.Output<String> host;
  /// Specifies the name which should be used for this Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the NFS protocol version. Possible values are `NFSauto`, `NFSv3` and `NFSv4`. Defaults to `NFSauto`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> nfsVersion;
  /// Specifies the ID of the Storage Mover for this Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageMoverId;

  /// Creates a new [MoverSourceEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MoverSourceEndpoint]. {@macro pulumi_storage_mover_source_endpoint_mover_source_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MoverSourceEndpoint(
    String name, {
    MoverSourceEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/moverSourceEndpoint:MoverSourceEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    export = registerOutput<String?>('export');
    host = registerOutput<String>('host');
    this.name = registerOutput<String>('name');
    nfsVersion = registerOutput<String?>('nfsVersion');
    storageMoverId = registerOutput<String>('storageMoverId');
  }

  /// Gets an existing [MoverSourceEndpoint] resource's state with the given [name] and [id].
  static MoverSourceEndpoint get(
    String name,
    pulumi.Input<String> id, {
    MoverSourceEndpointState? state,
  }) {
    return MoverSourceEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MoverSourceEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/moverSourceEndpoint:MoverSourceEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    export = registerOutput<String?>('export');
    host = registerOutput<String>('host');
    this.name = registerOutput<String>('name');
    nfsVersion = registerOutput<String?>('nfsVersion');
    storageMoverId = registerOutput<String>('storageMoverId');
  }
}
