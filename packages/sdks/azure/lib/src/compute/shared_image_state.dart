// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_image_identifier.dart';
import 'shared_image_purchase_plan.dart';

/// Input properties used for looking up and filtering SharedImage resources.
class SharedImageState {
  /// Specifies if the Shared Image supports Accelerated Network. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? acceleratedNetworkSupportEnabled;
  /// CPU architecture supported by an OS. Possible values are `x64` and `Arm64`. Defaults to `x64`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? architecture;
  /// Specifies if Confidential Virtual Machines enabled. It will enable all the features of trusted, with higher confidentiality features for isolate machines or encrypted data. Available for Gen2 machines. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Only one of `trusted_launch_supported`, `trusted_launch_enabled`, `confidential_vm_supported` and `confidential_vm_enabled` can be specified.
  final pulumi.Input<bool>? confidentialVmEnabled;
  /// Specifies if supports creation of both Confidential virtual machines and Gen2 virtual machines with standard security from a compatible Gen2 OS disk VHD or Gen2 Managed image. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? confidentialVmSupported;
  /// A description of this Shared Image.
  final pulumi.Input<String>? description;
  /// Specifies if the Shared Image supports NVMe disks. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? diskControllerTypeNvmeEnabled;
  /// One or more Disk Types not allowed for the Image. Possible values include `Standard_LRS` and `Premium_LRS`.
  final pulumi.Input<List<String>>? diskTypesNotAlloweds;
  /// The end of life date in RFC3339 format of the Image.
  final pulumi.Input<String>? endOfLifeDate;
  /// The End User Licence Agreement for the Shared Image. Changing this forces a new resource to be created.
  final pulumi.Input<String>? eula;
  /// Specifies the name of the Shared Image Gallery in which this Shared Image should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? galleryName;
  /// Specifies if the Shared Image supports hibernation. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? hibernationEnabled;
  /// The generation of HyperV that the Virtual Machine used to create the Shared Image is based on. Possible values are `V1` and `V2`. Defaults to `V1`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hyperVGeneration;
  /// An `identifier` block as defined below.
  final pulumi.Input<SharedImageIdentifier>? identifier;
  /// Specifies the supported Azure location where the Shared Image Gallery exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Maximum memory in GB recommended for the Image.
  final pulumi.Input<int>? maxRecommendedMemoryInGb;
  /// Maximum count of vCPUs recommended for the Image.
  final pulumi.Input<int>? maxRecommendedVcpuCount;
  /// Minimum memory in GB recommended for the Image.
  final pulumi.Input<int>? minRecommendedMemoryInGb;
  /// Minimum count of vCPUs recommended for the Image.
  final pulumi.Input<int>? minRecommendedVcpuCount;
  /// Specifies the name of the Shared Image. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The type of Operating System present in this Shared Image. Possible values are `Linux` and `Windows`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? osType;
  /// The URI containing the Privacy Statement associated with this Shared Image. Changing this forces a new resource to be created.
  final pulumi.Input<String>? privacyStatementUri;
  /// A `purchase_plan` block as defined below.
  final pulumi.Input<SharedImagePurchasePlan>? purchasePlan;
  /// The URI containing the Release Notes associated with this Shared Image.
  final pulumi.Input<String>? releaseNoteUri;
  /// The name of the resource group in which the Shared Image Gallery exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies that the Operating System used inside this Image has not been Generalized (for example, `sysprep` on Windows has not been run). Changing this forces a new resource to be created.
  ///
  /// !> **Note:** It's recommended to Generalize images where possible - Specialized Images reuse the same UUID internally within each Virtual Machine, which can have unintended side-effects.
  final pulumi.Input<bool>? specialized;
  /// A mapping of tags to assign to the Shared Image.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies if Trusted Launch has to be enabled for the Virtual Machine created from the Shared Image. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? trustedLaunchEnabled;
  /// Specifies if supports creation of both Trusted Launch virtual machines and Gen2 virtual machines with standard security created from the Shared Image. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? trustedLaunchSupported;

  /// Creates a new [SharedImageState].
  /// [acceleratedNetworkSupportEnabled] Specifies if the Shared Image supports Accelerated Network. Changing this forces a new resource to be created.
  /// [architecture] CPU architecture supported by an OS. Possible values are `x64` and `Arm64`. Defaults to `x64`. Changing this forces a new resource to be created.
  /// [confidentialVmEnabled] Specifies if Confidential Virtual Machines enabled. It will enable all the features of trusted, with higher confidentiality features for isolate machines or encrypted data. Available for Gen2 machines. Changing this forces a new resource to be created.
  /// [confidentialVmSupported] Specifies if supports creation of both Confidential virtual machines and Gen2 virtual machines with standard security from a compatible Gen2 OS disk VHD or Gen2 Managed image. Changing this forces a new resource to be created.
  /// [description] A description of this Shared Image.
  /// [diskControllerTypeNvmeEnabled] Specifies if the Shared Image supports NVMe disks. Changing this forces a new resource to be created.
  /// [diskTypesNotAlloweds] One or more Disk Types not allowed for the Image. Possible values include `Standard_LRS` and `Premium_LRS`.
  /// [endOfLifeDate] The end of life date in RFC3339 format of the Image.
  /// [eula] The End User Licence Agreement for the Shared Image. Changing this forces a new resource to be created.
  /// [galleryName] Specifies the name of the Shared Image Gallery in which this Shared Image should exist. Changing this forces a new resource to be created.
  /// [hibernationEnabled] Specifies if the Shared Image supports hibernation. Changing this forces a new resource to be created.
  /// [hyperVGeneration] The generation of HyperV that the Virtual Machine used to create the Shared Image is based on. Possible values are `V1` and `V2`. Defaults to `V1`. Changing this forces a new resource to be created.
  /// [identifier] An `identifier` block as defined below.
  /// [location] Specifies the supported Azure location where the Shared Image Gallery exists. Changing this forces a new resource to be created.
  /// [maxRecommendedMemoryInGb] Maximum memory in GB recommended for the Image.
  /// [maxRecommendedVcpuCount] Maximum count of vCPUs recommended for the Image.
  /// [minRecommendedMemoryInGb] Minimum memory in GB recommended for the Image.
  /// [minRecommendedVcpuCount] Minimum count of vCPUs recommended for the Image.
  /// [name] Specifies the name of the Shared Image. Changing this forces a new resource to be created.
  /// [osType] The type of Operating System present in this Shared Image. Possible values are `Linux` and `Windows`. Changing this forces a new resource to be created.
  /// [privacyStatementUri] The URI containing the Privacy Statement associated with this Shared Image. Changing this forces a new resource to be created.
  /// [purchasePlan] A `purchase_plan` block as defined below.
  /// [releaseNoteUri] The URI containing the Release Notes associated with this Shared Image.
  /// [resourceGroupName] The name of the resource group in which the Shared Image Gallery exists. Changing this forces a new resource to be created.
  /// [specialized] Specifies that the Operating System used inside this Image has not been Generalized (for example, `sysprep` on Windows has not been run). Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Shared Image.
  /// [trustedLaunchEnabled] Specifies if Trusted Launch has to be enabled for the Virtual Machine created from the Shared Image. Changing this forces a new resource to be created.
  /// [trustedLaunchSupported] Specifies if supports creation of both Trusted Launch virtual machines and Gen2 virtual machines with standard security created from the Shared Image. Changing this forces a new resource to be created.
  SharedImageState({
    this.acceleratedNetworkSupportEnabled,
    this.architecture,
    this.confidentialVmEnabled,
    this.confidentialVmSupported,
    this.description,
    this.diskControllerTypeNvmeEnabled,
    this.diskTypesNotAlloweds,
    this.endOfLifeDate,
    this.eula,
    this.galleryName,
    this.hibernationEnabled,
    this.hyperVGeneration,
    this.identifier,
    this.location,
    this.maxRecommendedMemoryInGb,
    this.maxRecommendedVcpuCount,
    this.minRecommendedMemoryInGb,
    this.minRecommendedVcpuCount,
    this.name,
    this.osType,
    this.privacyStatementUri,
    this.purchasePlan,
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
      'diskControllerTypeNvmeEnabled': ?diskControllerTypeNvmeEnabled,
      'diskTypesNotAlloweds': ?diskTypesNotAlloweds,
      'endOfLifeDate': ?endOfLifeDate,
      'eula': ?eula,
      'galleryName': ?galleryName,
      'hibernationEnabled': ?hibernationEnabled,
      'hyperVGeneration': ?hyperVGeneration,
      'identifier': ?pulumi.Input.mapOptionalInputValue<SharedImageIdentifier, Map<String, dynamic>>(identifier, (value) => value.toMap()),
      'location': ?location,
      'maxRecommendedMemoryInGb': ?maxRecommendedMemoryInGb,
      'maxRecommendedVcpuCount': ?maxRecommendedVcpuCount,
      'minRecommendedMemoryInGb': ?minRecommendedMemoryInGb,
      'minRecommendedVcpuCount': ?minRecommendedVcpuCount,
      'name': ?name,
      'osType': ?osType,
      'privacyStatementUri': ?privacyStatementUri,
      'purchasePlan': ?pulumi.Input.mapOptionalInputValue<SharedImagePurchasePlan, Map<String, dynamic>>(purchasePlan, (value) => value.toMap()),
      'releaseNoteUri': ?releaseNoteUri,
      'resourceGroupName': ?resourceGroupName,
      'specialized': ?specialized,
      'tags': ?tags,
      'trustedLaunchEnabled': ?trustedLaunchEnabled,
      'trustedLaunchSupported': ?trustedLaunchSupported,
    };
  }

  factory SharedImageState.fromMap(Map<String, dynamic> map) {
    return SharedImageState(
      acceleratedNetworkSupportEnabled: map['acceleratedNetworkSupportEnabled'] == null ? null : (map['acceleratedNetworkSupportEnabled']! as bool).input(),
      architecture: map['architecture'] == null ? null : (map['architecture']! as String).input(),
      confidentialVmEnabled: map['confidentialVmEnabled'] == null ? null : (map['confidentialVmEnabled']! as bool).input(),
      confidentialVmSupported: map['confidentialVmSupported'] == null ? null : (map['confidentialVmSupported']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      diskControllerTypeNvmeEnabled: map['diskControllerTypeNvmeEnabled'] == null ? null : (map['diskControllerTypeNvmeEnabled']! as bool).input(),
      diskTypesNotAlloweds: map['diskTypesNotAlloweds'] == null ? null : ((map['diskTypesNotAlloweds']! as List).cast<String>()).input(),
      endOfLifeDate: map['endOfLifeDate'] == null ? null : (map['endOfLifeDate']! as String).input(),
      eula: map['eula'] == null ? null : (map['eula']! as String).input(),
      galleryName: map['galleryName'] == null ? null : (map['galleryName']! as String).input(),
      hibernationEnabled: map['hibernationEnabled'] == null ? null : (map['hibernationEnabled']! as bool).input(),
      hyperVGeneration: map['hyperVGeneration'] == null ? null : (map['hyperVGeneration']! as String).input(),
      identifier: map['identifier'] == null ? null : (SharedImageIdentifier.fromMap((map['identifier']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maxRecommendedMemoryInGb: map['maxRecommendedMemoryInGb'] == null ? null : (map['maxRecommendedMemoryInGb']! as int).input(),
      maxRecommendedVcpuCount: map['maxRecommendedVcpuCount'] == null ? null : (map['maxRecommendedVcpuCount']! as int).input(),
      minRecommendedMemoryInGb: map['minRecommendedMemoryInGb'] == null ? null : (map['minRecommendedMemoryInGb']! as int).input(),
      minRecommendedVcpuCount: map['minRecommendedVcpuCount'] == null ? null : (map['minRecommendedVcpuCount']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      privacyStatementUri: map['privacyStatementUri'] == null ? null : (map['privacyStatementUri']! as String).input(),
      purchasePlan: map['purchasePlan'] == null ? null : (SharedImagePurchasePlan.fromMap((map['purchasePlan']! as Map).cast<String, dynamic>())).input(),
      releaseNoteUri: map['releaseNoteUri'] == null ? null : (map['releaseNoteUri']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      specialized: map['specialized'] == null ? null : (map['specialized']! as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      trustedLaunchEnabled: map['trustedLaunchEnabled'] == null ? null : (map['trustedLaunchEnabled']! as bool).input(),
      trustedLaunchSupported: map['trustedLaunchSupported'] == null ? null : (map['trustedLaunchSupported']! as bool).input(),
    );
  }
}

