import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_image_args.dart';
import 'shared_image_identifier.dart';
import 'shared_image_purchase_plan.dart';
import 'shared_image_state.dart';

/// Manages a Shared Image within a Shared Image Gallery.
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
/// const exampleSharedImage = new azure.compute.SharedImage("example", {
///     name: "my-image",
///     galleryName: exampleSharedImageGallery.name,
///     resourceGroupName: example.name,
///     location: example.location,
///     osType: "Linux",
///     identifier: {
///         publisher: "PublisherName",
///         offer: "OfferName",
///         sku: "ExampleSku",
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
/// example_shared_image = azure.compute.SharedImage("example",
///     name="my-image",
///     gallery_name=example_shared_image_gallery.name,
///     resource_group_name=example.name,
///     location=example.location,
///     os_type="Linux",
///     identifier={
///         "publisher": "PublisherName",
///         "offer": "OfferName",
///         "sku": "ExampleSku",
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
///     var exampleSharedImage = new Azure.Compute.SharedImage("example", new()
///     {
///         Name = "my-image",
///         GalleryName = exampleSharedImageGallery.Name,
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         OsType = "Linux",
///         Identifier = new Azure.Compute.Inputs.SharedImageIdentifierArgs
///         {
///             Publisher = "PublisherName",
///             Offer = "OfferName",
///             Sku = "ExampleSku",
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
/// 		exampleSharedImageGallery, err := compute.NewSharedImageGallery(ctx, "example", &compute.SharedImageGalleryArgs{
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
/// 		_, err = compute.NewSharedImage(ctx, "example", &compute.SharedImageArgs{
/// 			Name:              pulumi.String("my-image"),
/// 			GalleryName:       exampleSharedImageGallery.Name,
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			OsType:            pulumi.String("Linux"),
/// 			Identifier: &compute.SharedImageIdentifierArgs{
/// 				Publisher: pulumi.String("PublisherName"),
/// 				Offer:     pulumi.String("OfferName"),
/// 				Sku:       pulumi.String("ExampleSku"),
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
/// import com.pulumi.azure.compute.SharedImage;
/// import com.pulumi.azure.compute.SharedImageArgs;
/// import com.pulumi.azure.compute.inputs.SharedImageIdentifierArgs;
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
///         var exampleSharedImage = new SharedImage("exampleSharedImage", SharedImageArgs.builder()
///             .name("my-image")
///             .galleryName(exampleSharedImageGallery.name())
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .osType("Linux")
///             .identifier(SharedImageIdentifierArgs.builder()
///                 .publisher("PublisherName")
///                 .offer("OfferName")
///                 .sku("ExampleSku")
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
///   exampleSharedImage:
///     type: azure:compute:SharedImage
///     name: example
///     properties:
///       name: my-image
///       galleryName: ${exampleSharedImageGallery.name}
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       osType: Linux
///       identifier:
///         publisher: PublisherName
///         offer: OfferName
///         sku: ExampleSku
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
/// Shared Images can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/sharedImage:SharedImage image1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/galleries/gallery1/images/image1
/// ```
class SharedImage extends pulumi.CustomResource {
  /// Specifies if the Shared Image supports Accelerated Network. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> acceleratedNetworkSupportEnabled;

  /// CPU architecture supported by an OS. Possible values are `x64` and `Arm64`. Defaults to `x64`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> architecture;

  /// Specifies if Confidential Virtual Machines enabled. It will enable all the features of trusted, with higher confidentiality features for isolate machines or encrypted data. Available for Gen2 machines. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Only one of `trusted_launch_supported`, `trusted_launch_enabled`, `confidential_vm_supported` and `confidential_vm_enabled` can be specified.
  late final pulumi.Output<bool?> confidentialVmEnabled;

  /// Specifies if supports creation of both Confidential virtual machines and Gen2 virtual machines with standard security from a compatible Gen2 OS disk VHD or Gen2 Managed image. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> confidentialVmSupported;

  /// A description of this Shared Image.
  late final pulumi.Output<String?> description;

  /// Specifies if the Shared Image supports NVMe disks. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> diskControllerTypeNvmeEnabled;

  /// One or more Disk Types not allowed for the Image. Possible values include `Standard_LRS` and `Premium_LRS`.
  late final pulumi.Output<List<String>?> diskTypesNotAlloweds;

  /// The end of life date in RFC3339 format of the Image.
  late final pulumi.Output<String?> endOfLifeDate;

  /// The End User Licence Agreement for the Shared Image. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> eula;

  /// Specifies the name of the Shared Image Gallery in which this Shared Image should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> galleryName;

  /// Specifies if the Shared Image supports hibernation. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> hibernationEnabled;

  /// The generation of HyperV that the Virtual Machine used to create the Shared Image is based on. Possible values are `V1` and `V2`. Defaults to `V1`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> hyperVGeneration;

  /// An `identifier` block as defined below.
  late final pulumi.Output<SharedImageIdentifier> identifier;

  /// Specifies the supported Azure location where the Shared Image Gallery exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Maximum memory in GB recommended for the Image.
  late final pulumi.Output<int?> maxRecommendedMemoryInGb;

  /// Maximum count of vCPUs recommended for the Image.
  late final pulumi.Output<int?> maxRecommendedVcpuCount;

  /// Minimum memory in GB recommended for the Image.
  late final pulumi.Output<int?> minRecommendedMemoryInGb;

  /// Minimum count of vCPUs recommended for the Image.
  late final pulumi.Output<int?> minRecommendedVcpuCount;

  /// Specifies the name of the Shared Image. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The type of Operating System present in this Shared Image. Possible values are `Linux` and `Windows`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> osType;

  /// The URI containing the Privacy Statement associated with this Shared Image. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> privacyStatementUri;

  /// A `purchase_plan` block as defined below.
  late final pulumi.Output<SharedImagePurchasePlan?> purchasePlan;

  /// The URI containing the Release Notes associated with this Shared Image.
  late final pulumi.Output<String?> releaseNoteUri;

  /// The name of the resource group in which the Shared Image Gallery exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Specifies that the Operating System used inside this Image has not been Generalized (for example, `sysprep` on Windows has not been run). Changing this forces a new resource to be created.
  ///
  /// !&gt; **Note:** It's recommended to Generalize images where possible - Specialized Images reuse the same UUID internally within each Virtual Machine, which can have unintended side-effects.
  late final pulumi.Output<bool?> specialized;

  /// A mapping of tags to assign to the Shared Image.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Specifies if Trusted Launch has to be enabled for the Virtual Machine created from the Shared Image. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> trustedLaunchEnabled;

  /// Specifies if supports creation of both Trusted Launch virtual machines and Gen2 virtual machines with standard security created from the Shared Image. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> trustedLaunchSupported;

  /// Creates a new [SharedImage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SharedImage]. {@macro pulumi_compute_shared_image_shared_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SharedImage(
    String name, {
    SharedImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:compute/sharedImage:SharedImage',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceleratedNetworkSupportEnabled = registerOutput<bool?>(
      'acceleratedNetworkSupportEnabled',
    );
    architecture = registerOutput<String?>('architecture');
    confidentialVmEnabled = registerOutput<bool?>('confidentialVmEnabled');
    confidentialVmSupported = registerOutput<bool?>('confidentialVmSupported');
    description = registerOutput<String?>('description');
    diskControllerTypeNvmeEnabled = registerOutput<bool?>(
      'diskControllerTypeNvmeEnabled',
    );
    diskTypesNotAlloweds = registerOutput<List<String>?>(
      'diskTypesNotAlloweds',
    );
    endOfLifeDate = registerOutput<String?>('endOfLifeDate');
    eula = registerOutput<String?>('eula');
    galleryName = registerOutput<String>('galleryName');
    hibernationEnabled = registerOutput<bool?>('hibernationEnabled');
    hyperVGeneration = registerOutput<String?>('hyperVGeneration');
    identifier = registerOutput<SharedImageIdentifier>(
      'identifier',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SharedImageIdentifier.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    maxRecommendedMemoryInGb = registerOutput<int?>('maxRecommendedMemoryInGb');
    maxRecommendedVcpuCount = registerOutput<int?>('maxRecommendedVcpuCount');
    minRecommendedMemoryInGb = registerOutput<int?>('minRecommendedMemoryInGb');
    minRecommendedVcpuCount = registerOutput<int?>('minRecommendedVcpuCount');
    this.name = registerOutput<String>('name');
    osType = registerOutput<String>('osType');
    privacyStatementUri = registerOutput<String?>('privacyStatementUri');
    purchasePlan = registerOutput<SharedImagePurchasePlan?>(
      'purchasePlan',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SharedImagePurchasePlan.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    releaseNoteUri = registerOutput<String?>('releaseNoteUri');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    specialized = registerOutput<bool?>('specialized');
    tags = registerOutput<Map<String, String>?>('tags');
    trustedLaunchEnabled = registerOutput<bool?>('trustedLaunchEnabled');
    trustedLaunchSupported = registerOutput<bool?>('trustedLaunchSupported');
  }

  /// Gets an existing [SharedImage] resource's state with the given [name] and [id].
  static SharedImage get(
    String name,
    pulumi.Input<String> id, {
    SharedImageState? state,
  }) {
    return SharedImage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SharedImage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:compute/sharedImage:SharedImage',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceleratedNetworkSupportEnabled = registerOutput<bool?>(
      'acceleratedNetworkSupportEnabled',
    );
    architecture = registerOutput<String?>('architecture');
    confidentialVmEnabled = registerOutput<bool?>('confidentialVmEnabled');
    confidentialVmSupported = registerOutput<bool?>('confidentialVmSupported');
    description = registerOutput<String?>('description');
    diskControllerTypeNvmeEnabled = registerOutput<bool?>(
      'diskControllerTypeNvmeEnabled',
    );
    diskTypesNotAlloweds = registerOutput<List<String>?>(
      'diskTypesNotAlloweds',
    );
    endOfLifeDate = registerOutput<String?>('endOfLifeDate');
    eula = registerOutput<String?>('eula');
    galleryName = registerOutput<String>('galleryName');
    hibernationEnabled = registerOutput<bool?>('hibernationEnabled');
    hyperVGeneration = registerOutput<String?>('hyperVGeneration');
    identifier = registerOutput<SharedImageIdentifier>(
      'identifier',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SharedImageIdentifier.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    maxRecommendedMemoryInGb = registerOutput<int?>('maxRecommendedMemoryInGb');
    maxRecommendedVcpuCount = registerOutput<int?>('maxRecommendedVcpuCount');
    minRecommendedMemoryInGb = registerOutput<int?>('minRecommendedMemoryInGb');
    minRecommendedVcpuCount = registerOutput<int?>('minRecommendedVcpuCount');
    this.name = registerOutput<String>('name');
    osType = registerOutput<String>('osType');
    privacyStatementUri = registerOutput<String?>('privacyStatementUri');
    purchasePlan = registerOutput<SharedImagePurchasePlan?>(
      'purchasePlan',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SharedImagePurchasePlan.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    releaseNoteUri = registerOutput<String?>('releaseNoteUri');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    specialized = registerOutput<bool?>('specialized');
    tags = registerOutput<Map<String, String>?>('tags');
    trustedLaunchEnabled = registerOutput<bool?>('trustedLaunchEnabled');
    trustedLaunchSupported = registerOutput<bool?>('trustedLaunchSupported');
  }
}
