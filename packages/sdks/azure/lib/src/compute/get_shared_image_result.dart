// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_shared_image_identifier.dart';
import 'get_shared_image_purchase_plan.dart';

/// Result data returned by getSharedImage.
class GetSharedImageResult {
  /// Specifies if the Shared Image supports Accelerated Network.
  final bool? acceleratedNetworkSupportEnabled;
  final String? architecture;
  /// Specifies if Confidential Virtual Machines enabled. It will enable all the features of trusted, with higher confidentiality features for isolate machines or encrypted data. Available for Gen2 machines.
  final bool? confidentialVmEnabled;
  /// Specifies if supports creation of both Confidential virtual machines and Gen2 virtual machines with standard security from a compatible Gen2 OS disk VHD or Gen2 Managed image.
  final bool? confidentialVmSupported;
  /// The description of this Shared Image.
  final String? description;
  /// The End User Licence Agreement for the Shared Image.
  final String? eula;
  final String? galleryName;
  /// Specifies if the Shared Image supports hibernation.
  final bool? hibernationEnabled;
  /// The generation of HyperV that the Virtual Machine used to create the Shared Image is based on.
  final String? hyperVGeneration;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identifier` block as defined below.
  final List<GetSharedImageIdentifier>? identifiers;
  /// The supported Azure location where the Shared Image Gallery exists.
  final String? location;
  /// (Required) The Purchase Plan Name for this Shared Image.
  final String? name;
  /// The type of Operating System present in this Shared Image.
  final String? osType;
  /// The URI containing the Privacy Statement for this Shared Image.
  final String? privacyStatementUri;
  /// (Optional) A `purchasePlan` block as defined below.
  final List<GetSharedImagePurchasePlan>? purchasePlans;
  /// The URI containing the Release Notes for this Shared Image.
  final String? releaseNoteUri;
  final String? resourceGroupName;
  /// Specifies that the Operating System used inside this Image has not been Generalized (for example, `sysprep` on Windows has not been run).
  final bool? specialized;
  /// A mapping of tags assigned to the Shared Image.
  final Map<String, String>? tags;
  /// Specifies if Trusted Launch has to be enabled for the Virtual Machine created from the Shared Image.
  final bool? trustedLaunchEnabled;
  /// Specifies if supports creation of both Trusted Launch virtual machines and Gen2 virtual machines with standard security created from the Shared Image.
  final bool? trustedLaunchSupported;

  /// Creates a new [GetSharedImageResult].
  /// [acceleratedNetworkSupportEnabled] Specifies if the Shared Image supports Accelerated Network.
  /// [architecture] Optional.
  /// [confidentialVmEnabled] Specifies if Confidential Virtual Machines enabled. It will enable all the features of trusted, with higher confidentiality features for isolate machines or encrypted data. Available for Gen2 machines.
  /// [confidentialVmSupported] Specifies if supports creation of both Confidential virtual machines and Gen2 virtual machines with standard security from a compatible Gen2 OS disk VHD or Gen2 Managed image.
  /// [description] The description of this Shared Image.
  /// [eula] The End User Licence Agreement for the Shared Image.
  /// [galleryName] Optional.
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
  /// [resourceGroupName] Optional.
  /// [specialized] Specifies that the Operating System used inside this Image has not been Generalized (for example, `sysprep` on Windows has not been run).
  /// [tags] A mapping of tags assigned to the Shared Image.
  /// [trustedLaunchEnabled] Specifies if Trusted Launch has to be enabled for the Virtual Machine created from the Shared Image.
  /// [trustedLaunchSupported] Specifies if supports creation of both Trusted Launch virtual machines and Gen2 virtual machines with standard security created from the Shared Image.
  const GetSharedImageResult({
    this.acceleratedNetworkSupportEnabled,
    this.architecture,
    this.confidentialVmEnabled,
    this.confidentialVmSupported,
    this.description,
    this.eula,
    this.galleryName,
    this.hibernationEnabled,
    this.hyperVGeneration,
    this.id,
    this.identifiers,
    this.location,
    this.name,
    this.osType,
    this.privacyStatementUri,
    this.purchasePlans,
    this.releaseNoteUri,
    this.resourceGroupName,
    this.specialized,
    this.tags,
    this.trustedLaunchEnabled,
    this.trustedLaunchSupported,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratedNetworkSupportEnabled': ?acceleratedNetworkSupportEnabled,
      'architecture': ?architecture,
      'confidentialVmEnabled': ?confidentialVmEnabled,
      'confidentialVmSupported': ?confidentialVmSupported,
      'description': ?description,
      'eula': ?eula,
      'galleryName': ?galleryName,
      'hibernationEnabled': ?hibernationEnabled,
      'hyperVGeneration': ?hyperVGeneration,
      'id': ?id,
      'identifiers': ?(() { final guardedValue = identifiers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSharedImageIdentifier, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'osType': ?osType,
      'privacyStatementUri': ?privacyStatementUri,
      'purchasePlans': ?(() { final guardedValue = purchasePlans; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSharedImagePurchasePlan, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'releaseNoteUri': ?releaseNoteUri,
      'resourceGroupName': ?resourceGroupName,
      'specialized': ?specialized,
      'tags': ?tags,
      'trustedLaunchEnabled': ?trustedLaunchEnabled,
      'trustedLaunchSupported': ?trustedLaunchSupported,
    };
  }

  factory GetSharedImageResult.fromMap(Map<String, dynamic> map) {
    return GetSharedImageResult(
      acceleratedNetworkSupportEnabled: (() { final guardedValue = map['acceleratedNetworkSupportEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return guardedValue as String; })(),
      confidentialVmEnabled: (() { final guardedValue = map['confidentialVmEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      confidentialVmSupported: (() { final guardedValue = map['confidentialVmSupported']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eula: (() { final guardedValue = map['eula']; if (guardedValue == null) return null; return guardedValue as String; })(),
      galleryName: (() { final guardedValue = map['galleryName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hibernationEnabled: (() { final guardedValue = map['hibernationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hyperVGeneration: (() { final guardedValue = map['hyperVGeneration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identifiers: (() { final guardedValue = map['identifiers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSharedImageIdentifier>(guardedValue, (value) => GetSharedImageIdentifier.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privacyStatementUri: (() { final guardedValue = map['privacyStatementUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      purchasePlans: (() { final guardedValue = map['purchasePlans']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSharedImagePurchasePlan>(guardedValue, (value) => GetSharedImagePurchasePlan.fromMap((value as Map).cast<String, dynamic>())); })(),
      releaseNoteUri: (() { final guardedValue = map['releaseNoteUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      specialized: (() { final guardedValue = map['specialized']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      trustedLaunchEnabled: (() { final guardedValue = map['trustedLaunchEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      trustedLaunchSupported: (() { final guardedValue = map['trustedLaunchSupported']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
