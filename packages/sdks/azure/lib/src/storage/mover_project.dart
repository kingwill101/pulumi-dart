import 'package:pulumi/pulumi.dart' as pulumi;
import 'mover_project_args.dart';
import 'mover_project_state.dart';

/// Manages a Storage Mover Project.
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
///     location: example.location,
/// });
/// const exampleMoverProject = new azure.storage.MoverProject("example", {
///     name: "example-sp",
///     storageMoverId: exampleMover.id,
///     description: "Example Project Description",
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
///     location=example.location)
/// example_mover_project = azure.storage.MoverProject("example",
///     name="example-sp",
///     storage_mover_id=example_mover.id,
///     description="Example Project Description")
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
///         Location = example.Location,
///     });
///
///     var exampleMoverProject = new Azure.Storage.MoverProject("example", new()
///     {
///         Name = "example-sp",
///         StorageMoverId = exampleMover.Id,
///         Description = "Example Project Description",
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
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewMoverProject(ctx, "example", &storage.MoverProjectArgs{
/// 			Name:           pulumi.String("example-sp"),
/// 			StorageMoverId: exampleMover.ID(),
/// 			Description:    pulumi.String("Example Project Description"),
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
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_storage_moverproject" "example" {
///   name             = "example-sp"
///   storage_mover_id = azure_storage_mover.example.id
///   description      = "Example Project Description"
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
/// import com.pulumi.azure.storage.MoverProject;
/// import com.pulumi.azure.storage.MoverProjectArgs;
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
///             .location(example.location())
///             .build());
///
///         var exampleMoverProject = new MoverProject("exampleMoverProject", MoverProjectArgs.builder()
///             .name("example-sp")
///             .storageMoverId(exampleMover.id())
///             .description("Example Project Description")
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
///       location: ${example.location}
///   exampleMoverProject:
///     type: azure:storage:MoverProject
///     name: example
///     properties:
///       name: example-sp
///       storageMoverId: ${exampleMover.id}
///       description: Example Project Description
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
/// Storage Mover Project can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:storage/moverProject:MoverProject example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.StorageMover/storageMovers/storageMover1/projects/project1
/// ```
class MoverProject extends pulumi.CustomResource {
  /// Specifies a description for this Storage Mover Project.
  late final pulumi.Output<String?> description;
  /// Specifies the name which should be used for this Storage Mover Project. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the ID of the storage mover for this Storage Mover Project. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageMoverId;

  /// Creates a new [MoverProject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MoverProject]. {@macro pulumi_storage_mover_project_mover_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MoverProject(
    String name, {
    MoverProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/moverProject:MoverProject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    storageMoverId = registerOutput<String>('storageMoverId');
  }

  /// Gets an existing [MoverProject] resource's state with the given [name] and [id].
  static MoverProject get(
    String name,
    pulumi.Input<String> id, {
    MoverProjectState? state,
  }) {
    return MoverProject._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MoverProject._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:storage/moverProject:MoverProject',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    storageMoverId = registerOutput<String>('storageMoverId');
  }
}
