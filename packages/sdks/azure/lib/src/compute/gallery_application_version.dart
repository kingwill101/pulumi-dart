import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_application_version_args.dart';
import 'gallery_application_version_manage_action.dart';
import 'gallery_application_version_source.dart';
import 'gallery_application_version_state.dart';
import 'gallery_application_version_target_region.dart';

/// Manages a Gallery Application Version.
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
/// const exampleSharedImageGallery = new azure.compute.SharedImageGallery("example", {
///     name: "examplegallery",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleGalleryApplication = new azure.compute.GalleryApplication("example", {
///     name: "example-app",
///     galleryId: exampleSharedImageGallery.id,
///     location: example.location,
///     supportedOsType: "Linux",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestorage",
///     resourceGroupName: example.name,
///     location: example.location,
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_shared_image_gallery = azure.compute.SharedImageGallery("example",
///     name="examplegallery",
///     resource_group_name=example.name,
///     location=example.location)
/// example_gallery_application = azure.compute.GalleryApplication("example",
///     name="example-app",
///     gallery_id=example_shared_image_gallery.id,
///     location=example.location,
///     supported_os_type="Linux")
/// example_account = azure.storage.Account("example",
///     name="examplestorage",
///     resource_group_name=example.name,
///     location=example.location,
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
///     var exampleSharedImageGallery = new Azure.Compute.SharedImageGallery("example", new()
///     {
///         Name = "examplegallery",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleGalleryApplication = new Azure.Compute.GalleryApplication("example", new()
///     {
///         Name = "example-app",
///         GalleryId = exampleSharedImageGallery.Id,
///         Location = example.Location,
///         SupportedOsType = "Linux",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorage",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
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
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSharedImageGallery, err := compute.NewSharedImageGallery(ctx, "example", &compute.SharedImageGalleryArgs{
/// 			Name:              pulumi.String("examplegallery"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGalleryApplication, err := compute.NewGalleryApplication(ctx, "example", &compute.GalleryApplicationArgs{
/// 			Name:            pulumi.String("example-app"),
/// 			GalleryId:       exampleSharedImageGallery.ID().ToIDOutput().ToStringOutput(),
/// 			Location:        example.Location,
/// 			SupportedOsType: pulumi.String("Linux"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorage"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
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
/// 		_, err = compute.NewGalleryApplicationVersion(ctx, "example", &compute.GalleryApplicationVersionArgs{
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
///   name     = "example-rg"
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
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
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
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleSharedImageGallery = new SharedImageGallery("exampleSharedImageGallery", SharedImageGalleryArgs.builder()
///             .name("examplegallery")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleGalleryApplication = new GalleryApplication("exampleGalleryApplication", GalleryApplicationArgs.builder()
///             .name("example-app")
///             .galleryId(exampleSharedImageGallery.id())
///             .location(example.location())
///             .supportedOsType("Linux")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorage")
///             .resourceGroupName(example.name())
///             .location(example.location())
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
///   exampleSharedImageGallery:
///     type: azure:compute:SharedImageGallery
///     name: example
///     properties:
///       name: examplegallery
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleGalleryApplication:
///     type: azure:compute:GalleryApplication
///     name: example
///     properties:
///       name: example-app
///       galleryId: ${exampleSharedImageGallery.id}
///       location: ${example.location}
///       supportedOsType: Linux
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorage
///       resourceGroupName: ${example.name}
///       location: ${example.location}
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
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2022-03-03
///
/// ## Import
///
/// Gallery Application Versions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/galleryApplicationVersion:GalleryApplicationVersion example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Compute/galleries/gallery1/applications/galleryApplication1/versions/galleryApplicationVersion1
/// ```
class GalleryApplicationVersion extends pulumi.CustomResource {
  /// Specifies the name of the config file on the VM. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> configFile;
  /// Should the Gallery Application reports health. Defaults to `false`.
  late final pulumi.Output<bool?> enableHealthCheck;
  /// The end of life date in RFC3339 format of the Gallery Application Version.
  late final pulumi.Output<String?> endOfLifeDate;
  /// Should the Gallery Application Version be excluded from the `latest` filter? If set to `true` this Gallery Application Version won't be returned for the `latest` version. Defaults to `false`.
  late final pulumi.Output<bool?> excludeFromLatest;
  /// The ID of the Gallery Application. Changing this forces a new resource to be created.
  late final pulumi.Output<String> galleryApplicationId;
  /// The Azure Region where the Gallery Application Version exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// A `manageAction` block as defined below.
  late final pulumi.Output<GalleryApplicationVersionManageAction> manageAction;
  /// The version name of the Gallery Application Version, such as `1.0.0`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the package file on the VM. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> packageFile;
  /// A `source` block as defined below.
  late final pulumi.Output<GalleryApplicationVersionSource> source;
  /// A mapping of tags to assign to the Gallery Application Version.
  late final pulumi.Output<Map<String, String>?> tags;
  /// One or more `targetRegion` blocks as defined below.
  late final pulumi.Output<List<GalleryApplicationVersionTargetRegion>> targetRegions;

  /// Creates a new [GalleryApplicationVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GalleryApplicationVersion]. {@macro pulumi_compute_gallery_application_version_gallery_application_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GalleryApplicationVersion(
    String name, {
    GalleryApplicationVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/galleryApplicationVersion:GalleryApplicationVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    configFile = registerOutput<String?>('configFile');
    enableHealthCheck = registerOutput<bool?>('enableHealthCheck');
    endOfLifeDate = registerOutput<String?>('endOfLifeDate');
    excludeFromLatest = registerOutput<bool?>('excludeFromLatest');
    galleryApplicationId = registerOutput<String>('galleryApplicationId');
    location = registerOutput<String>('location');
    manageAction = registerOutput<GalleryApplicationVersionManageAction>('manageAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GalleryApplicationVersionManageAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    packageFile = registerOutput<String?>('packageFile');
    source = registerOutput<GalleryApplicationVersionSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GalleryApplicationVersionSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetRegions = registerOutput<List<GalleryApplicationVersionTargetRegion>>('targetRegions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GalleryApplicationVersionTargetRegion>(guardedValue, (value) => GalleryApplicationVersionTargetRegion.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [GalleryApplicationVersion] resource's state with the given [name] and [id].
  static GalleryApplicationVersion get(
    String name,
    pulumi.Input<String> id, {
    GalleryApplicationVersionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GalleryApplicationVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GalleryApplicationVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/galleryApplicationVersion:GalleryApplicationVersion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configFile = registerOutput<String?>('configFile');
    enableHealthCheck = registerOutput<bool?>('enableHealthCheck');
    endOfLifeDate = registerOutput<String?>('endOfLifeDate');
    excludeFromLatest = registerOutput<bool?>('excludeFromLatest');
    galleryApplicationId = registerOutput<String>('galleryApplicationId');
    location = registerOutput<String>('location');
    manageAction = registerOutput<GalleryApplicationVersionManageAction>('manageAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GalleryApplicationVersionManageAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    packageFile = registerOutput<String?>('packageFile');
    source = registerOutput<GalleryApplicationVersionSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GalleryApplicationVersionSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetRegions = registerOutput<List<GalleryApplicationVersionTargetRegion>>('targetRegions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GalleryApplicationVersionTargetRegion>(guardedValue, (value) => GalleryApplicationVersionTargetRegion.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [GalleryApplicationVersion] resource.
  GalleryApplicationVersion.reference(String urn)
    : super(
        'azure:compute/galleryApplicationVersion:GalleryApplicationVersion',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    configFile = registerOutput<String?>('configFile');
    enableHealthCheck = registerOutput<bool?>('enableHealthCheck');
    endOfLifeDate = registerOutput<String?>('endOfLifeDate');
    excludeFromLatest = registerOutput<bool?>('excludeFromLatest');
    galleryApplicationId = registerOutput<String>('galleryApplicationId');
    location = registerOutput<String>('location');
    manageAction = registerOutput<GalleryApplicationVersionManageAction>('manageAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GalleryApplicationVersionManageAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    packageFile = registerOutput<String?>('packageFile');
    source = registerOutput<GalleryApplicationVersionSource>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GalleryApplicationVersionSource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetRegions = registerOutput<List<GalleryApplicationVersionTargetRegion>>('targetRegions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GalleryApplicationVersionTargetRegion>(guardedValue, (value) => GalleryApplicationVersionTargetRegion.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
