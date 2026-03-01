// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DedicatedHost resources.
class DedicatedHostState {
  /// Should the Dedicated Host automatically be replaced in case of a Hardware Failure? Defaults to `true`.
  final pulumi.Input<bool>? autoReplaceOnFailure;
  /// Specifies the ID of the Dedicated Host Group where the Dedicated Host should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? dedicatedHostGroupId;
  /// Specifies the software license type that will be applied to the VMs deployed on the Dedicated Host. Possible values are `None`, `Windows_Server_Hybrid` and `Windows_Server_Perpetual`. Defaults to `None`.
  final pulumi.Input<String>? licenseType;
  /// Specify the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Dedicated Host. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specify the fault domain of the Dedicated Host Group in which to create the Dedicated Host. Changing this forces a new resource to be created.
  final pulumi.Input<int>? platformFaultDomain;
  /// Specify the SKU name of the Dedicated Host. Possible values are `DADSv5-Type1`, `DASv4-Type1`, `DASv4-Type2`, `DASv5-Type1`, `DCSv2-Type1`, `DDSv4-Type1`, `DDSv4-Type2`, `DDSv5-Type1`, `DSv3-Type1`, `DSv3-Type2`, `DSv3-Type3`, `DSv3-Type4`, `DSv4-Type1`, `DSv4-Type2`, `DSv5-Type1`, `EADSv5-Type1`, `EASv4-Type1`, `EASv4-Type2`, `EASv5-Type1`, `EDSv4-Type1`, `EDSv4-Type2`, `EDSv5-Type1`, `ESv3-Type1`, `ESv3-Type2`, `ESv3-Type3`, `ESv3-Type4`, `ESv4-Type1`, `ESv4-Type2`, `ESv5-Type1`, `FSv2-Type2`, `FSv2-Type3`, `FSv2-Type4`, `FXmds-Type1`, `LSv2-Type1`, `LSv3-Type1`, `MDMSv2MedMem-Type1`, `MDSv2MedMem-Type1`, `MMSv2MedMem-Type1`, `MS-Type1`, `MSm-Type1`, `MSmv2-Type1`, `MSv2-Type1`, `MSv2MedMem-Type1`, `NVASv4-Type1` and `NVSv3-Type1`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? skuName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DedicatedHostState].
  /// [autoReplaceOnFailure] Should the Dedicated Host automatically be replaced in case of a Hardware Failure? Defaults to `true`.
  /// [dedicatedHostGroupId] Specifies the ID of the Dedicated Host Group where the Dedicated Host should exist. Changing this forces a new resource to be created.
  /// [licenseType] Specifies the software license type that will be applied to the VMs deployed on the Dedicated Host. Possible values are `None`, `Windows_Server_Hybrid` and `Windows_Server_Perpetual`. Defaults to `None`.
  /// [location] Specify the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Dedicated Host. Changing this forces a new resource to be created.
  /// [platformFaultDomain] Specify the fault domain of the Dedicated Host Group in which to create the Dedicated Host. Changing this forces a new resource to be created.
  /// [skuName] Specify the SKU name of the Dedicated Host. Possible values are `DADSv5-Type1`, `DASv4-Type1`, `DASv4-Type2`, `DASv5-Type1`, `DCSv2-Type1`, `DDSv4-Type1`, `DDSv4-Type2`, `DDSv5-Type1`, `DSv3-Type1`, `DSv3-Type2`, `DSv3-Type3`, `DSv3-Type4`, `DSv4-Type1`, `DSv4-Type2`, `DSv5-Type1`, `EADSv5-Type1`, `EASv4-Type1`, `EASv4-Type2`, `EASv5-Type1`, `EDSv4-Type1`, `EDSv4-Type2`, `EDSv5-Type1`, `ESv3-Type1`, `ESv3-Type2`, `ESv3-Type3`, `ESv3-Type4`, `ESv4-Type1`, `ESv4-Type2`, `ESv5-Type1`, `FSv2-Type2`, `FSv2-Type3`, `FSv2-Type4`, `FXmds-Type1`, `LSv2-Type1`, `LSv3-Type1`, `MDMSv2MedMem-Type1`, `MDSv2MedMem-Type1`, `MMSv2MedMem-Type1`, `MS-Type1`, `MSm-Type1`, `MSmv2-Type1`, `MSv2-Type1`, `MSv2MedMem-Type1`, `NVASv4-Type1` and `NVSv3-Type1`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  DedicatedHostState({
    pulumi.Output<bool>? autoReplaceOnFailure,
    pulumi.Output<String>? dedicatedHostGroupId,
    pulumi.Output<String>? licenseType,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<int>? platformFaultDomain,
    pulumi.Output<String>? skuName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      autoReplaceOnFailure = pulumi.Input.asOptionalInput<bool>(autoReplaceOnFailure),
      dedicatedHostGroupId = pulumi.Input.asOptionalInput<String>(dedicatedHostGroupId),
      licenseType = pulumi.Input.asOptionalInput<String>(licenseType),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      platformFaultDomain = pulumi.Input.asOptionalInput<int>(platformFaultDomain),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoReplaceOnFailure': ?autoReplaceOnFailure,
      'dedicatedHostGroupId': ?dedicatedHostGroupId,
      'licenseType': ?licenseType,
      'location': ?location,
      'name': ?name,
      'platformFaultDomain': ?platformFaultDomain,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory DedicatedHostState.fromMap(Map<String, dynamic> map) {
    return DedicatedHostState(
      autoReplaceOnFailure: map['autoReplaceOnFailure'] == null ? null : pulumi.Output.create<bool>(map['autoReplaceOnFailure'] as bool),
      dedicatedHostGroupId: map['dedicatedHostGroupId'] == null ? null : pulumi.Output.create<String>(map['dedicatedHostGroupId'] as String),
      licenseType: map['licenseType'] == null ? null : pulumi.Output.create<String>(map['licenseType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      platformFaultDomain: map['platformFaultDomain'] == null ? null : pulumi.Output.create<int>(map['platformFaultDomain'] as int),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

