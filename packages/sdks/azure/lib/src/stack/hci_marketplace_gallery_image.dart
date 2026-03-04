import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_marketplace_gallery_image_args.dart';
import 'hci_marketplace_gallery_image_identifier.dart';
import 'hci_marketplace_gallery_image_state.dart';

/// Manages an Azure Stack HCI Marketplace Gallery Image.
///
/// ## Import
///
/// Azure Stack HCI Marketplace Gallery Images can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:stack/hciMarketplaceGalleryImage:HciMarketplaceGalleryImage example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.AzureStackHCI/marketplaceGalleryImages/image1
/// ```
class HciMarketplaceGalleryImage extends pulumi.CustomResource {
  /// The ID of the Custom Location where the Azure Stack HCI Marketplace Gallery Image should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> customLocationId;

  /// The hypervisor generation of the Azure Stack HCI Marketplace Gallery Image. Possible values are `V1` and `V2`. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  late final pulumi.Output<String> hypervGeneration;

  /// An `identifier` block as defined below. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  late final pulumi.Output<HciMarketplaceGalleryImageIdentifier> identifier;

  /// The Azure Region where the Azure Stack HCI Marketplace Gallery Image should exist. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  late final pulumi.Output<String> location;

  /// The name which should be used for this Azure Stack HCI Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  late final pulumi.Output<String> name;

  /// The Operating System type of the Azure Stack HCI Marketplace Gallery Image. Possible values are `Windows` and `Linux`. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  late final pulumi.Output<String> osType;

  /// The name of the Resource Group where the Azure Stack HCI Marketplace Gallery Image should exist. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The ID of the Azure Stack HCI Storage Path used for this Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Virtual Hard Disk to be created.
  late final pulumi.Output<String?> storagePathId;

  /// A mapping of tags which should be assigned to the Azure Stack HCI Marketplace Gallery Image.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The version of the Azure Stack HCI Marketplace Gallery Image. Changing this forces a new Azure Stack HCI Marketplace Gallery Image to be created.
  late final pulumi.Output<String> version;

  /// Creates a new [HciMarketplaceGalleryImage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HciMarketplaceGalleryImage]. {@macro pulumi_stack_hci_marketplace_gallery_image_hci_marketplace_gallery_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HciMarketplaceGalleryImage(
    String name, {
    HciMarketplaceGalleryImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:stack/hciMarketplaceGalleryImage:HciMarketplaceGalleryImage',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customLocationId = registerOutput<String>('customLocationId');
    hypervGeneration = registerOutput<String>('hypervGeneration');
    identifier = registerOutput<HciMarketplaceGalleryImageIdentifier>(
      'identifier',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    osType = registerOutput<String>('osType');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    storagePathId = registerOutput<String?>('storagePathId');
    tags = registerOutput<Map<String, String>?>('tags');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [HciMarketplaceGalleryImage] resource's state with the given [name] and [id].
  static HciMarketplaceGalleryImage get(
    String name,
    pulumi.Input<String> id, {
    HciMarketplaceGalleryImageState? state,
  }) {
    return HciMarketplaceGalleryImage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HciMarketplaceGalleryImage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:stack/hciMarketplaceGalleryImage:HciMarketplaceGalleryImage',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customLocationId = registerOutput<String>('customLocationId');
    hypervGeneration = registerOutput<String>('hypervGeneration');
    identifier = registerOutput<HciMarketplaceGalleryImageIdentifier>(
      'identifier',
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    osType = registerOutput<String>('osType');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    storagePathId = registerOutput<String?>('storagePathId');
    tags = registerOutput<Map<String, String>?>('tags');
    version = registerOutput<String>('version');
  }
}
