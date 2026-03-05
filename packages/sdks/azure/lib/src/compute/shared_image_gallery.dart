import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_image_gallery_args.dart';
import 'shared_image_gallery_sharing.dart';
import 'shared_image_gallery_state.dart';

/// Manages a Shared Image Gallery.
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
/// const exampleSharedImageGallery = new azure.compute.SharedImageGallery("example", {
///     name: "example_image_gallery",
///     resourceGroupName: example.name,
///     location: example.location,
///     description: "Shared images and things.",
///     tags: {
///         Hello: "There",
///         World: "Example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_shared_image_gallery = azure.compute.SharedImageGallery("example",
///     name="example_image_gallery",
///     resource_group_name=example.name,
///     location=example.location,
///     description="Shared images and things.",
///     tags={
///         "Hello": "There",
///         "World": "Example",
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleSharedImageGallery = new Azure.Compute.SharedImageGallery("example", new()
///     {
///         Name = "example_image_gallery",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Description = "Shared images and things.",
///         Tags =
///         {
///             { "Hello", "There" },
///             { "World", "Example" },
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
/// 		_, err = compute.NewSharedImageGallery(ctx, "example", &compute.SharedImageGalleryArgs{
/// 			Name:              pulumi.String("example_image_gallery"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Description:       pulumi.String("Shared images and things."),
/// 			Tags: pulumi.StringMap{
/// 				"Hello": pulumi.String("There"),
/// 				"World": pulumi.String("Example"),
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
/// import com.pulumi.azure.compute.SharedImageGallery;
/// import com.pulumi.azure.compute.SharedImageGalleryArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleSharedImageGallery = new SharedImageGallery("exampleSharedImageGallery", SharedImageGalleryArgs.builder()
///             .name("example_image_gallery")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .description("Shared images and things.")
///             .tags(Map.ofEntries(
///                 Map.entry("Hello", "There"),
///                 Map.entry("World", "Example")
///             ))
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
///   exampleSharedImageGallery:
///     type: azure:compute:SharedImageGallery
///     name: example
///     properties:
///       name: example_image_gallery
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       description: Shared images and things.
///       tags:
///         Hello: There
///         World: Example
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
/// Shared Image Galleries can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/sharedImageGallery:SharedImageGallery gallery1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/galleries/gallery1
/// ```
class SharedImageGallery extends pulumi.CustomResource {
  /// A description for this Shared Image Gallery.
  late final pulumi.Output<String?> description;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name of the Shared Image Gallery. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the resource group in which to create the Shared Image Gallery. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A `sharing` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<SharedImageGallerySharing?> sharing;

  /// A mapping of tags to assign to the Shared Image Gallery.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The Unique Name for this Shared Image Gallery.
  late final pulumi.Output<String> uniqueName;

  /// Creates a new [SharedImageGallery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SharedImageGallery]. {@macro pulumi_compute_shared_image_gallery_shared_image_gallery_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SharedImageGallery(
    String name, {
    SharedImageGalleryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:compute/sharedImageGallery:SharedImageGallery',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sharing = registerOutput<SharedImageGallerySharing?>(
      'sharing',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SharedImageGallerySharing.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    uniqueName = registerOutput<String>('uniqueName');
  }

  /// Gets an existing [SharedImageGallery] resource's state with the given [name] and [id].
  static SharedImageGallery get(
    String name,
    pulumi.Input<String> id, {
    SharedImageGalleryState? state,
  }) {
    return SharedImageGallery._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SharedImageGallery._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:compute/sharedImageGallery:SharedImageGallery',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String?>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sharing = registerOutput<SharedImageGallerySharing?>(
      'sharing',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SharedImageGallerySharing.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    uniqueName = registerOutput<String>('uniqueName');
  }
}
