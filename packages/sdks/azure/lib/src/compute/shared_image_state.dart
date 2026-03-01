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
    pulumi.Output<bool>? acceleratedNetworkSupportEnabled,
    pulumi.Output<String>? architecture,
    pulumi.Output<bool>? confidentialVmEnabled,
    pulumi.Output<bool>? confidentialVmSupported,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? diskControllerTypeNvmeEnabled,
    pulumi.Output<List<String>>? diskTypesNotAlloweds,
    pulumi.Output<String>? endOfLifeDate,
    pulumi.Output<String>? eula,
    pulumi.Output<String>? galleryName,
    pulumi.Output<bool>? hibernationEnabled,
    pulumi.Output<String>? hyperVGeneration,
    pulumi.Output<SharedImageIdentifier>? identifier,
    pulumi.Output<String>? location,
    pulumi.Output<int>? maxRecommendedMemoryInGb,
    pulumi.Output<int>? maxRecommendedVcpuCount,
    pulumi.Output<int>? minRecommendedMemoryInGb,
    pulumi.Output<int>? minRecommendedVcpuCount,
    pulumi.Output<String>? name,
    pulumi.Output<String>? osType,
    pulumi.Output<String>? privacyStatementUri,
    pulumi.Output<SharedImagePurchasePlan>? purchasePlan,
    pulumi.Output<String>? releaseNoteUri,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<bool>? specialized,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? trustedLaunchEnabled,
    pulumi.Output<bool>? trustedLaunchSupported,
  }) :
      acceleratedNetworkSupportEnabled = pulumi.Input.asOptionalInput<bool>(acceleratedNetworkSupportEnabled),
      architecture = pulumi.Input.asOptionalInput<String>(architecture),
      confidentialVmEnabled = pulumi.Input.asOptionalInput<bool>(confidentialVmEnabled),
      confidentialVmSupported = pulumi.Input.asOptionalInput<bool>(confidentialVmSupported),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskControllerTypeNvmeEnabled = pulumi.Input.asOptionalInput<bool>(diskControllerTypeNvmeEnabled),
      diskTypesNotAlloweds = pulumi.Input.asOptionalInput<List<String>>(diskTypesNotAlloweds),
      endOfLifeDate = pulumi.Input.asOptionalInput<String>(endOfLifeDate),
      eula = pulumi.Input.asOptionalInput<String>(eula),
      galleryName = pulumi.Input.asOptionalInput<String>(galleryName),
      hibernationEnabled = pulumi.Input.asOptionalInput<bool>(hibernationEnabled),
      hyperVGeneration = pulumi.Input.asOptionalInput<String>(hyperVGeneration),
      identifier = pulumi.Input.asOptionalInput<SharedImageIdentifier>(identifier),
      location = pulumi.Input.asOptionalInput<String>(location),
      maxRecommendedMemoryInGb = pulumi.Input.asOptionalInput<int>(maxRecommendedMemoryInGb),
      maxRecommendedVcpuCount = pulumi.Input.asOptionalInput<int>(maxRecommendedVcpuCount),
      minRecommendedMemoryInGb = pulumi.Input.asOptionalInput<int>(minRecommendedMemoryInGb),
      minRecommendedVcpuCount = pulumi.Input.asOptionalInput<int>(minRecommendedVcpuCount),
      name = pulumi.Input.asOptionalInput<String>(name),
      osType = pulumi.Input.asOptionalInput<String>(osType),
      privacyStatementUri = pulumi.Input.asOptionalInput<String>(privacyStatementUri),
      purchasePlan = pulumi.Input.asOptionalInput<SharedImagePurchasePlan>(purchasePlan),
      releaseNoteUri = pulumi.Input.asOptionalInput<String>(releaseNoteUri),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      specialized = pulumi.Input.asOptionalInput<bool>(specialized),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trustedLaunchEnabled = pulumi.Input.asOptionalInput<bool>(trustedLaunchEnabled),
      trustedLaunchSupported = pulumi.Input.asOptionalInput<bool>(trustedLaunchSupported);

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
      acceleratedNetworkSupportEnabled: map['acceleratedNetworkSupportEnabled'] == null ? null : pulumi.Output.create<bool>(map['acceleratedNetworkSupportEnabled'] as bool),
      architecture: map['architecture'] == null ? null : pulumi.Output.create<String>(map['architecture'] as String),
      confidentialVmEnabled: map['confidentialVmEnabled'] == null ? null : pulumi.Output.create<bool>(map['confidentialVmEnabled'] as bool),
      confidentialVmSupported: map['confidentialVmSupported'] == null ? null : pulumi.Output.create<bool>(map['confidentialVmSupported'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      diskControllerTypeNvmeEnabled: map['diskControllerTypeNvmeEnabled'] == null ? null : pulumi.Output.create<bool>(map['diskControllerTypeNvmeEnabled'] as bool),
      diskTypesNotAlloweds: map['diskTypesNotAlloweds'] == null ? null : pulumi.Output.create<List<String>>((map['diskTypesNotAlloweds'] as List).cast<String>()),
      endOfLifeDate: map['endOfLifeDate'] == null ? null : pulumi.Output.create<String>(map['endOfLifeDate'] as String),
      eula: map['eula'] == null ? null : pulumi.Output.create<String>(map['eula'] as String),
      galleryName: map['galleryName'] == null ? null : pulumi.Output.create<String>(map['galleryName'] as String),
      hibernationEnabled: map['hibernationEnabled'] == null ? null : pulumi.Output.create<bool>(map['hibernationEnabled'] as bool),
      hyperVGeneration: map['hyperVGeneration'] == null ? null : pulumi.Output.create<String>(map['hyperVGeneration'] as String),
      identifier: map['identifier'] == null ? null : pulumi.Output.create<SharedImageIdentifier>(SharedImageIdentifier.fromMap((map['identifier'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maxRecommendedMemoryInGb: map['maxRecommendedMemoryInGb'] == null ? null : pulumi.Output.create<int>(map['maxRecommendedMemoryInGb'] as int),
      maxRecommendedVcpuCount: map['maxRecommendedVcpuCount'] == null ? null : pulumi.Output.create<int>(map['maxRecommendedVcpuCount'] as int),
      minRecommendedMemoryInGb: map['minRecommendedMemoryInGb'] == null ? null : pulumi.Output.create<int>(map['minRecommendedMemoryInGb'] as int),
      minRecommendedVcpuCount: map['minRecommendedVcpuCount'] == null ? null : pulumi.Output.create<int>(map['minRecommendedVcpuCount'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      osType: map['osType'] == null ? null : pulumi.Output.create<String>(map['osType'] as String),
      privacyStatementUri: map['privacyStatementUri'] == null ? null : pulumi.Output.create<String>(map['privacyStatementUri'] as String),
      purchasePlan: map['purchasePlan'] == null ? null : pulumi.Output.create<SharedImagePurchasePlan>(SharedImagePurchasePlan.fromMap((map['purchasePlan'] as Map).cast<String, dynamic>())),
      releaseNoteUri: map['releaseNoteUri'] == null ? null : pulumi.Output.create<String>(map['releaseNoteUri'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      specialized: map['specialized'] == null ? null : pulumi.Output.create<bool>(map['specialized'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trustedLaunchEnabled: map['trustedLaunchEnabled'] == null ? null : pulumi.Output.create<bool>(map['trustedLaunchEnabled'] as bool),
      trustedLaunchSupported: map['trustedLaunchSupported'] == null ? null : pulumi.Output.create<bool>(map['trustedLaunchSupported'] as bool),
    );
  }
}

