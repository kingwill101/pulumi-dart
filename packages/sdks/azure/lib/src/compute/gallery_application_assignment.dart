import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_application_assignment_args.dart';
import 'gallery_application_assignment_state.dart';

/// Manages a Virtual Machine Gallery Application Assignment.
///
/// &gt; **Note:** Gallery Application Assignments can be defined either directly on `azure.compute.LinuxVirtualMachine` and `azure.compute.WindowsVirtualMachine` resources, or using the `azure.compute.GalleryApplicationAssignment` resource - but the two approaches cannot be used together. If both are used with the same Virtual Machine, spurious changes will occur. It's recommended to use `ignoreChanges` for the `galleryApplication` block on the associated virtual machine resources, to avoid a persistent diff when using this resource.
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.compute.getVirtualMachine({
///     name: "example-vm",
///     resourceGroupName: "example-resources-vm",
/// });
/// const exampleResourceGroup = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleSharedImageGallery = new azure.compute.SharedImageGallery("example", {
///     name: "examplegallery",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
/// });
/// const exampleGalleryApplication = new azure.compute.GalleryApplication("example", {
///     name: "example-app",
///     galleryId: exampleSharedImageGallery.id,
///     location: exampleResourceGroup.location,
///     supportedOsType: "Linux",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestorage",
///     resourceGroupName: exampleResourceGroup.name,
///     location: exampleResourceGroup.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "example-container",
///     storageAccountName: exampleAccount.name,
///     containerAccessType: "blob",
/// });
/// const exampleBlob = new azure.storage.Blob("example", {
///     name: "scripts",
///     storageAccountName: exampleAccount.name,
///     storageContainerName: exampleContainer.name,
///     type: "Block",
///     sourceContent: "[scripts file content]",
/// });
/// const exampleGalleryApplicationVersion = new azure.compute.GalleryApplicationVersion("example", {
///     name: "0.0.1",
///     galleryApplicationId: exampleGalleryApplication.id,
///     location: exampleGalleryApplication.location,
///     manageAction: {
///         install: "[install command]",
///         remove: "[remove command]",
///     },
///     source: {
///         mediaLink: exampleBlob.id,
///     },
///     targetRegions: [{
///         name: exampleGalleryApplication.location,
///         regionalReplicaCount: 1,
///     }],
/// });
/// const exampleGalleryApplicationAssignment = new azure.compute.GalleryApplicationAssignment("example", {
///     galleryApplicationVersionId: exampleGalleryApplicationVersion.id,
///     virtualMachineId: example.then(example => example.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.compute.get_virtual_machine(name="example-vm",
///     resource_group_name="example-resources-vm")
/// example_resource_group = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_shared_image_gallery = azure.compute.SharedImageGallery("example",
///     name="examplegallery",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location)
/// example_gallery_application = azure.compute.GalleryApplication("example",
///     name="example-app",
///     gallery_id=example_shared_image_gallery.id,
///     location=example_resource_group.location,
///     supported_os_type="Linux")
/// example_account = azure.storage.Account("example",
///     name="examplestorage",
///     resource_group_name=example_resource_group.name,
///     location=example_resource_group.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_container = azure.storage.Container("example",
///     name="example-container",
///     storage_account_name=example_account.name,
///     container_access_type="blob")
/// example_blob = azure.storage.Blob("example",
///     name="scripts",
///     storage_account_name=example_account.name,
///     storage_container_name=example_container.name,
///     type="Block",
///     source_content="[scripts file content]")
/// example_gallery_application_version = azure.compute.GalleryApplicationVersion("example",
///     name="0.0.1",
///     gallery_application_id=example_gallery_application.id,
///     location=example_gallery_application.location,
///     manage_action={
///         "install": "[install command]",
///         "remove": "[remove command]",
///     },
///     source={
///         "media_link": example_blob.id,
///     },
///     target_regions=[{
///         "name": example_gallery_application.location,
///         "regional_replica_count": 1,
///     }])
/// example_gallery_application_assignment = azure.compute.GalleryApplicationAssignment("example",
///     gallery_application_version_id=example_gallery_application_version.id,
///     virtual_machine_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Compute.GetVirtualMachine.Invoke(new()
///     {
///         Name = "example-vm",
///         ResourceGroupName = "example-resources-vm",
///     });
///
///     var exampleResourceGroup = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleSharedImageGallery = new Azure.Compute.SharedImageGallery("example", new()
///     {
///         Name = "examplegallery",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///     });
///
///     var exampleGalleryApplication = new Azure.Compute.GalleryApplication("example", new()
///     {
///         Name = "example-app",
///         GalleryId = exampleSharedImageGallery.Id,
///         Location = exampleResourceGroup.Location,
///         SupportedOsType = "Linux",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorage",
///         ResourceGroupName = exampleResourceGroup.Name,
///         Location = exampleResourceGroup.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "example-container",
///         StorageAccountName = exampleAccount.Name,
///         ContainerAccessType = "blob",
///     });
///
///     var exampleBlob = new Azure.Storage.Blob("example", new()
///     {
///         Name = "scripts",
///         StorageAccountName = exampleAccount.Name,
///         StorageContainerName = exampleContainer.Name,
///         Type = "Block",
///         SourceContent = "[scripts file content]",
///     });
///
///     var exampleGalleryApplicationVersion = new Azure.Compute.GalleryApplicationVersion("example", new()
///     {
///         Name = "0.0.1",
///         GalleryApplicationId = exampleGalleryApplication.Id,
///         Location = exampleGalleryApplication.Location,
///         ManageAction = new Azure.Compute.Inputs.GalleryApplicationVersionManageActionArgs
///         {
///             Install = "[install command]",
///             Remove = "[remove command]",
///         },
///         Source = new Azure.Compute.Inputs.GalleryApplicationVersionSourceArgs
///         {
///             MediaLink = exampleBlob.Id,
///         },
///         TargetRegions = new[]
///         {
///             new Azure.Compute.Inputs.GalleryApplicationVersionTargetRegionArgs
///             {
///                 Name = exampleGalleryApplication.Location,
///                 RegionalReplicaCount = 1,
///             },
///         },
///     });
///
///     var exampleGalleryApplicationAssignment = new Azure.Compute.GalleryApplicationAssignment("example", new()
///     {
///         GalleryApplicationVersionId = exampleGalleryApplicationVersion.Id,
///         VirtualMachineId = example.Apply(getVirtualMachineResult => getVirtualMachineResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := compute.LookupVirtualMachine(ctx, &compute.LookupVirtualMachineArgs{
/// 			Name:              "example-vm",
/// 			ResourceGroupName: "example-resources-vm",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResourceGroup, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSharedImageGallery, err := compute.NewSharedImageGallery(ctx, "example", &compute.SharedImageGalleryArgs{
/// 			Name:              pulumi.String("examplegallery"),
/// 			ResourceGroupName: exampleResourceGroup.Name,
/// 			Location:          exampleResourceGroup.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGalleryApplication, err := compute.NewGalleryApplication(ctx, "example", &compute.GalleryApplicationArgs{
/// 			Name:            pulumi.String("example-app"),
/// 			GalleryId:       exampleSharedImageGallery.ID().ToIDOutput().ToStringOutput(),
/// 			Location:        exampleResourceGroup.Location,
/// 			SupportedOsType: pulumi.String("Linux"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorage"),
/// 			ResourceGroupName:      exampleResourceGroup.Name,
/// 			Location:               exampleResourceGroup.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("example-container"),
/// 			StorageAccountName:  exampleAccount.Name,
/// 			ContainerAccessType: pulumi.String("blob"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBlob, err := storage.NewBlob(ctx, "example", &storage.BlobArgs{
/// 			Name:                 pulumi.String("scripts"),
/// 			StorageAccountName:   exampleAccount.Name,
/// 			StorageContainerName: exampleContainer.Name,
/// 			Type:                 pulumi.String("Block"),
/// 			SourceContent:        pulumi.String("[scripts file content]"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGalleryApplicationVersion, err := compute.NewGalleryApplicationVersion(ctx, "example", &compute.GalleryApplicationVersionArgs{
/// 			Name:                 pulumi.String("0.0.1"),
/// 			GalleryApplicationId: exampleGalleryApplication.ID().ToIDOutput().ToStringOutput(),
/// 			Location:             exampleGalleryApplication.Location,
/// 			ManageAction: &compute.GalleryApplicationVersionManageActionArgs{
/// 				Install: pulumi.String("[install command]"),
/// 				Remove:  pulumi.String("[remove command]"),
/// 			},
/// 			Source: &compute.GalleryApplicationVersionSourceArgs{
/// 				MediaLink: exampleBlob.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			TargetRegions: compute.GalleryApplicationVersionTargetRegionArray{
/// 				&compute.GalleryApplicationVersionTargetRegionArgs{
/// 					Name:                 exampleGalleryApplication.Location,
/// 					RegionalReplicaCount: pulumi.Int(1),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewGalleryApplicationAssignment(ctx, "example", &compute.GalleryApplicationAssignmentArgs{
/// 			GalleryApplicationVersionId: exampleGalleryApplicationVersion.ID().ToIDOutput().ToStringOutput(),
/// 			VirtualMachineId:            pulumi.String(example.Id),
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
/// data "azure_compute_getvirtualmachine" "example" {
///   name                = "example-vm"
///   resource_group_name = "example-resources-vm"
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_compute_sharedimagegallery" "example" {
///   name                = "examplegallery"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_compute_galleryapplication" "example" {
///   name              = "example-app"
///   gallery_id        = azure_compute_sharedimagegallery.example.id
///   location          = azure_core_resourcegroup.example.location
///   supported_os_type = "Linux"
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "examplestorage"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_storage_container" "example" {
///   name                  = "example-container"
///   storage_account_name  = azure_storage_account.example.name
///   container_access_type = "blob"
/// }
/// resource "azure_storage_blob" "example" {
///   name                   = "scripts"
///   storage_account_name   = azure_storage_account.example.name
///   storage_container_name = azure_storage_container.example.name
///   type                   = "Block"
///   source_content         = "[scripts file content]"
/// }
/// resource "azure_compute_galleryapplicationversion" "example" {
///   name                   = "0.0.1"
///   gallery_application_id = azure_compute_galleryapplication.example.id
///   location               = azure_compute_galleryapplication.example.location
///   manage_action = {
///     install = "[install command]"
///     remove  = "[remove command]"
///   }
///   source = {
///     media_link = azure_storage_blob.example.id
///   }
///   target_regions {
///     name                   = azure_compute_galleryapplication.example.location
///     regional_replica_count = 1
///   }
/// }
/// resource "azure_compute_galleryapplicationassignment" "example" {
///   gallery_application_version_id = azure_compute_galleryapplicationversion.example.id
///   virtual_machine_id             = data.azure_compute_getvirtualmachine.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.compute.ComputeFunctions;
/// import com.pulumi.azure.compute.inputs.GetVirtualMachineArgs;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.compute.SharedImageGallery;
/// import com.pulumi.azure.compute.SharedImageGalleryArgs;
/// import com.pulumi.azure.compute.GalleryApplication;
/// import com.pulumi.azure.compute.GalleryApplicationArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.storage.Blob;
/// import com.pulumi.azure.storage.BlobArgs;
/// import com.pulumi.azure.compute.GalleryApplicationVersion;
/// import com.pulumi.azure.compute.GalleryApplicationVersionArgs;
/// import com.pulumi.azure.compute.inputs.GalleryApplicationVersionManageActionArgs;
/// import com.pulumi.azure.compute.inputs.GalleryApplicationVersionSourceArgs;
/// import com.pulumi.azure.compute.inputs.GalleryApplicationVersionTargetRegionArgs;
/// import com.pulumi.azure.compute.GalleryApplicationAssignment;
/// import com.pulumi.azure.compute.GalleryApplicationAssignmentArgs;
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
///         final var example = ComputeFunctions.getVirtualMachine(GetVirtualMachineArgs.builder()
///             .name("example-vm")
///             .resourceGroupName("example-resources-vm")
///             .build());
///
///         var exampleResourceGroup = new ResourceGroup("exampleResourceGroup", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleSharedImageGallery = new SharedImageGallery("exampleSharedImageGallery", SharedImageGalleryArgs.builder()
///             .name("examplegallery")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .build());
///
///         var exampleGalleryApplication = new GalleryApplication("exampleGalleryApplication", GalleryApplicationArgs.builder()
///             .name("example-app")
///             .galleryId(exampleSharedImageGallery.id())
///             .location(exampleResourceGroup.location())
///             .supportedOsType("Linux")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorage")
///             .resourceGroupName(exampleResourceGroup.name())
///             .location(exampleResourceGroup.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("example-container")
///             .storageAccountName(exampleAccount.name())
///             .containerAccessType("blob")
///             .build());
///
///         var exampleBlob = new Blob("exampleBlob", BlobArgs.builder()
///             .name("scripts")
///             .storageAccountName(exampleAccount.name())
///             .storageContainerName(exampleContainer.name())
///             .type("Block")
///             .sourceContent("[scripts file content]")
///             .build());
///
///         var exampleGalleryApplicationVersion = new GalleryApplicationVersion("exampleGalleryApplicationVersion", GalleryApplicationVersionArgs.builder()
///             .name("0.0.1")
///             .galleryApplicationId(exampleGalleryApplication.id())
///             .location(exampleGalleryApplication.location())
///             .manageAction(GalleryApplicationVersionManageActionArgs.builder()
///                 .install("[install command]")
///                 .remove("[remove command]")
///                 .build())
///             .source(GalleryApplicationVersionSourceArgs.builder()
///                 .mediaLink(exampleBlob.id())
///                 .build())
///             .targetRegions(GalleryApplicationVersionTargetRegionArgs.builder()
///                 .name(exampleGalleryApplication.location())
///                 .regionalReplicaCount(1)
///                 .build())
///             .build());
///
///         var exampleGalleryApplicationAssignment = new GalleryApplicationAssignment("exampleGalleryApplicationAssignment", GalleryApplicationAssignmentArgs.builder()
///             .galleryApplicationVersionId(exampleGalleryApplicationVersion.id())
///             .virtualMachineId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleResourceGroup:
///     type: azure:core:ResourceGroup
///     name: example
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleSharedImageGallery:
///     type: azure:compute:SharedImageGallery
///     name: example
///     properties:
///       name: examplegallery
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///   exampleGalleryApplication:
///     type: azure:compute:GalleryApplication
///     name: example
///     properties:
///       name: example-app
///       galleryId: ${exampleSharedImageGallery.id}
///       location: ${exampleResourceGroup.location}
///       supportedOsType: Linux
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorage
///       resourceGroupName: ${exampleResourceGroup.name}
///       location: ${exampleResourceGroup.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: example-container
///       storageAccountName: ${exampleAccount.name}
///       containerAccessType: blob
///   exampleBlob:
///     type: azure:storage:Blob
///     name: example
///     properties:
///       name: scripts
///       storageAccountName: ${exampleAccount.name}
///       storageContainerName: ${exampleContainer.name}
///       type: Block
///       sourceContent: '[scripts file content]'
///   exampleGalleryApplicationVersion:
///     type: azure:compute:GalleryApplicationVersion
///     name: example
///     properties:
///       name: 0.0.1
///       galleryApplicationId: ${exampleGalleryApplication.id}
///       location: ${exampleGalleryApplication.location}
///       manageAction:
///         install: '[install command]'
///         remove: '[remove command]'
///       source:
///         mediaLink: ${exampleBlob.id}
///       targetRegions:
///         - name: ${exampleGalleryApplication.location}
///           regionalReplicaCount: 1
///   exampleGalleryApplicationAssignment:
///     type: azure:compute:GalleryApplicationAssignment
///     name: example
///     properties:
///       galleryApplicationVersionId: ${exampleGalleryApplicationVersion.id}
///       virtualMachineId: ${example.id}
/// variables:
///   example:
///     fn::invoke:
///       function: azure:compute:getVirtualMachine
///       arguments:
///         name: example-vm
///         resourceGroupName: example-resources-vm
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-03-01
///
/// ## Import
///
/// Virtual Machine Gallery Application Assignments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/galleryApplicationAssignment:GalleryApplicationAssignment example subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/virtualMachines/machine1|/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Compute/galleries/gallery1/applications/galleryApplication1/versions/galleryApplicationVersion1
/// ```
class GalleryApplicationAssignment extends pulumi.CustomResource {
  /// Specifies the URI to an Azure Blob that will replace the default configuration for the package if provided. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> configurationBlobUri;
  /// The ID of the Gallery Application Version. Changing this forces a new resource to be created.
  late final pulumi.Output<String> galleryApplicationVersionId;
  /// Specifies the order in which the packages have to be installed. Possible values are between `0` and `2147483647`. Defaults to `0`.
  late final pulumi.Output<int?> order;
  /// Specifies a passthrough value for more generic context. This field can be any valid `string` value. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> tag;
  /// The ID of the Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualMachineId;

  /// Creates a new [GalleryApplicationAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GalleryApplicationAssignment]. {@macro pulumi_compute_gallery_application_assignment_gallery_application_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GalleryApplicationAssignment(
    String name, {
    GalleryApplicationAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/galleryApplicationAssignment:GalleryApplicationAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    configurationBlobUri = registerOutput<String?>('configurationBlobUri');
    galleryApplicationVersionId = registerOutput<String>('galleryApplicationVersionId');
    order = registerOutput<int?>('order');
    tag = registerOutput<String?>('tag');
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }

  /// Gets an existing [GalleryApplicationAssignment] resource's state with the given [name] and [id].
  static GalleryApplicationAssignment get(
    String name,
    pulumi.Input<String> id, {
    GalleryApplicationAssignmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GalleryApplicationAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GalleryApplicationAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/galleryApplicationAssignment:GalleryApplicationAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configurationBlobUri = registerOutput<String?>('configurationBlobUri');
    galleryApplicationVersionId = registerOutput<String>('galleryApplicationVersionId');
    order = registerOutput<int?>('order');
    tag = registerOutput<String?>('tag');
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }

  /// Creates a typed reference to an existing [GalleryApplicationAssignment] resource.
  GalleryApplicationAssignment.reference(String urn)
    : super(
        'azure:compute/galleryApplicationAssignment:GalleryApplicationAssignment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    configurationBlobUri = registerOutput<String?>('configurationBlobUri');
    galleryApplicationVersionId = registerOutput<String>('galleryApplicationVersionId');
    order = registerOutput<int?>('order');
    tag = registerOutput<String?>('tag');
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }
}
