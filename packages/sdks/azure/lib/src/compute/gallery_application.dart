import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_application_args.dart';
import 'gallery_application_state.dart';

/// Manages a Gallery Application.
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
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
/// 		_, err = compute.NewGalleryApplication(ctx, "example", &compute.GalleryApplicationArgs{
/// 			Name:            pulumi.String("example-app"),
/// 			GalleryId:       exampleSharedImageGallery.ID(),
/// 			Location:        example.Location,
/// 			SupportedOsType: pulumi.String("Linux"),
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
/// Gallery Applications can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/galleryApplication:GalleryApplication example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Compute/galleries/gallery1/applications/galleryApplication1
/// ```
class GalleryApplication extends pulumi.CustomResource {
  /// A description of the Gallery Application.
  late final pulumi.Output<String?> description;
  /// The end of life date in RFC3339 format of the Gallery Application.
  late final pulumi.Output<String?> endOfLifeDate;
  /// The End User Licence Agreement of the Gallery Application.
  late final pulumi.Output<String?> eula;
  /// The ID of the Shared Image Gallery. Changing this forces a new resource to be created.
  late final pulumi.Output<String> galleryId;
  /// The Azure Region where the Gallery Application exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the Gallery Application. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The URI containing the Privacy Statement associated with the Gallery Application.
  late final pulumi.Output<String?> privacyStatementUri;
  /// The URI containing the Release Notes associated with the Gallery Application.
  late final pulumi.Output<String?> releaseNoteUri;
  /// The type of the Operating System supported for the Gallery Application. Possible values are `Linux` and `Windows`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> supportedOsType;
  /// A mapping of tags to assign to the Gallery Application.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [GalleryApplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GalleryApplication]. {@macro pulumi_compute_gallery_application_gallery_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GalleryApplication(
    String name, {
    GalleryApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/galleryApplication:GalleryApplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    endOfLifeDate = registerOutput<String?>('endOfLifeDate');
    eula = registerOutput<String?>('eula');
    galleryId = registerOutput<String>('galleryId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privacyStatementUri = registerOutput<String?>('privacyStatementUri');
    releaseNoteUri = registerOutput<String?>('releaseNoteUri');
    supportedOsType = registerOutput<String>('supportedOsType');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [GalleryApplication] resource's state with the given [name] and [id].
  static GalleryApplication get(
    String name,
    pulumi.Input<String> id, {
    GalleryApplicationState? state,
  }) {
    return GalleryApplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GalleryApplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/galleryApplication:GalleryApplication',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    endOfLifeDate = registerOutput<String?>('endOfLifeDate');
    eula = registerOutput<String?>('eula');
    galleryId = registerOutput<String>('galleryId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privacyStatementUri = registerOutput<String?>('privacyStatementUri');
    releaseNoteUri = registerOutput<String?>('releaseNoteUri');
    supportedOsType = registerOutput<String>('supportedOsType');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
