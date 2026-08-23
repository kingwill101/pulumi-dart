// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_shared_image_identifier.dart';
import 'get_shared_image_purchase_plan.dart';

/// Result data returned by getSharedImage.
class GetSharedImageResult {
  /// Specifies if the Shared Image supports Accelerated Network.
  final bool acceleratedNetworkSupportEnabled;
  final String architecture;
  /// Specifies if Confidential Virtual Machines enabled. It will enable all the features of trusted, with higher confidentiality features for isolate machines or encrypted data. Available for Gen2 machines.
  final bool confidentialVmEnabled;
  /// Specifies if supports creation of both Confidential virtual machines and Gen2 virtual machines with standard security from a compatible Gen2 OS disk VHD or Gen2 Managed image.
  final bool confidentialVmSupported;
  /// The description of this Shared Image.
  final String description;
  /// The End User Licence Agreement for the Shared Image.
  final String eula;
  final String galleryName;
  /// Specifies if the Shared Image supports hibernation.
  final bool hibernationEnabled;
  /// The generation of HyperV that the Virtual Machine used to create the Shared Image is based on.
  final String hyperVGeneration;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identifier` block as defined below.
  final List<GetSharedImageIdentifier> identifiers;
  /// The supported Azure location where the Shared Image Gallery exists.
  final String location;
  /// (Required) The Purchase Plan Name for this Shared Image.
  final String name;
  /// The type of Operating System present in this Shared Image.
  final String osType;
  /// The URI containing the Privacy Statement for this Shared Image.
  final String privacyStatementUri;
  /// (Optional) A `purchasePlan` block as defined below.
  final List<GetSharedImagePurchasePlan> purchasePlans;
  /// The URI containing the Release Notes for this Shared Image.
  final String releaseNoteUri;
  final String resourceGroupName;
  /// Specifies that the Operating System used inside this Image has not been Generalized (for example, `sysprep` on Windows has not been run).
  final bool specialized;
  /// A mapping of tags assigned to the Shared Image.
  final Map<String, String> tags;
  /// Specifies if Trusted Launch has to be enabled for the Virtual Machine created from the Shared Image.
  final bool trustedLaunchEnabled;
  /// Specifies if supports creation of both Trusted Launch virtual machines and Gen2 virtual machines with standard security created from the Shared Image.
  final bool trustedLaunchSupported;

  /// Creates a new [GetSharedImageResult].
  /// [acceleratedNetworkSupportEnabled] Specifies if the Shared Image supports Accelerated Network.
  /// [architecture] Required.
  /// [confidentialVmEnabled] Specifies if Confidential Virtual Machines enabled. It will enable all the features of trusted, with higher confidentiality features for isolate machines or encrypted data. Available for Gen2 machines.
  /// [confidentialVmSupported] Specifies if supports creation of both Confidential virtual machines and Gen2 virtual machines with standard security from a compatible Gen2 OS disk VHD or Gen2 Managed image.
  /// [description] The description of this Shared Image.
  /// [eula] The End User Licence Agreement for the Shared Image.
  /// [galleryName] Required.
  /// [hibernationEnabled] Specifies if the Shared Image supports hibernation.
  /// [hyperVGeneration] The generation of HyperV that the Virtual Machine used to create the Shared Image is based on.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identifiers] An `identifier` block as defined below.
  /// [location] The supported Azure location where the Shared Image Gallery exists.
  /// [name] (Required) The Purchase Plan Name for this Shared Image.
  /// [osType] The type of Operating System present in this Shared Image.
  /// [privacyStatementUri] The URI containing the Privacy Statement for this Shared Image.
  /// [purchasePlans] (Optional) A `purchasePlan` block as defined below.
  /// [releaseNoteUri] The URI containing the Release Notes for this Shared Image.
  /// [resourceGroupName] Required.
  /// [specialized] Specifies that the Operating System used inside this Image has not been Generalized (for example, `sysprep` on Windows has not been run).
  /// [tags] A mapping of tags assigned to the Shared Image.
  /// [trustedLaunchEnabled] Specifies if Trusted Launch has to be enabled for the Virtual Machine created from the Shared Image.
  /// [trustedLaunchSupported] Specifies if supports creation of both Trusted Launch virtual machines and Gen2 virtual machines with standard security created from the Shared Image.
  const GetSharedImageResult({
    required this.acceleratedNetworkSupportEnabled,
    required this.architecture,
    required this.confidentialVmEnabled,
    required this.confidentialVmSupported,
    required this.description,
    required this.eula,
    required this.galleryName,
    required this.hibernationEnabled,
    required this.hyperVGeneration,
    required this.id,
    required this.identifiers,
    required this.location,
    required this.name,
    required this.osType,
    required this.privacyStatementUri,
    required this.purchasePlans,
    required this.releaseNoteUri,
    required this.resourceGroupName,
    required this.specialized,
    required this.tags,
    required this.trustedLaunchEnabled,
    required this.trustedLaunchSupported,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratedNetworkSupportEnabled': acceleratedNetworkSupportEnabled,
      'architecture': architecture,
      'confidentialVmEnabled': confidentialVmEnabled,
      'confidentialVmSupported': confidentialVmSupported,
      'description': description,
      'eula': eula,
      'galleryName': galleryName,
      'hibernationEnabled': hibernationEnabled,
      'hyperVGeneration': hyperVGeneration,
      'id': id,
      'identifiers': pulumi.Input.encodeList<GetSharedImageIdentifier, Map<String, dynamic>>(identifiers, (value) => value.toMap()),
      'location': location,
      'name': name,
      'osType': osType,
      'privacyStatementUri': privacyStatementUri,
      'purchasePlans': pulumi.Input.encodeList<GetSharedImagePurchasePlan, Map<String, dynamic>>(purchasePlans, (value) => value.toMap()),
      'releaseNoteUri': releaseNoteUri,
      'resourceGroupName': resourceGroupName,
      'specialized': specialized,
      'tags': tags,
      'trustedLaunchEnabled': trustedLaunchEnabled,
      'trustedLaunchSupported': trustedLaunchSupported,
    };
  }

  factory GetSharedImageResult.fromMap(Map<String, dynamic> map) {
    return GetSharedImageResult(
      acceleratedNetworkSupportEnabled: map['acceleratedNetworkSupportEnabled'] as bool,
      architecture: map['architecture'] as String,
      confidentialVmEnabled: map['confidentialVmEnabled'] as bool,
      confidentialVmSupported: map['confidentialVmSupported'] as bool,
      description: map['description'] as String,
      eula: map['eula'] as String,
      galleryName: map['galleryName'] as String,
      hibernationEnabled: map['hibernationEnabled'] as bool,
      hyperVGeneration: map['hyperVGeneration'] as String,
      id: map['id'] as String,
      identifiers: pulumi.Input.decodeList<GetSharedImageIdentifier>(map['identifiers']!, (value) => GetSharedImageIdentifier.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      osType: map['osType'] as String,
      privacyStatementUri: map['privacyStatementUri'] as String,
      purchasePlans: pulumi.Input.decodeList<GetSharedImagePurchasePlan>(map['purchasePlans']!, (value) => GetSharedImagePurchasePlan.fromMap((value as Map).cast<String, dynamic>())),
      releaseNoteUri: map['releaseNoteUri'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      specialized: map['specialized'] as bool,
      tags: (map['tags'] as Map).cast<String, String>(),
      trustedLaunchEnabled: map['trustedLaunchEnabled'] as bool,
      trustedLaunchSupported: map['trustedLaunchSupported'] as bool,
    );
  }
}
