// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_mage_disk_exclusion_input.dart';

/// VMware Azure specific enable protection input.
class InMageEnableProtectionInput {
  /// The target datastore name.
  final pulumi.Input<String>? datastoreName;
  /// The enable disk exclusion input.
  final pulumi.Input<InMageDiskExclusionInput>? diskExclusionInput;
  /// The disks to include list.
  final pulumi.Input<List<String>>? disksToInclude;
  /// The class type.
  /// Expected value is 'InMage'.
  final pulumi.Input<String> instanceType;
  /// The Master Target Id.
  final pulumi.Input<String> masterTargetId;
  /// The multi VM group Id.
  final pulumi.Input<String> multiVmGroupId;
  /// The multi VM group name.
  final pulumi.Input<String> multiVmGroupName;
  /// The Process Server Id.
  final pulumi.Input<String> processServerId;
  /// The retention drive to use on the MT.
  final pulumi.Input<String> retentionDrive;
  /// The CS account Id.
  final pulumi.Input<String>? runAsAccountId;
  /// The VM Name.
  final pulumi.Input<String>? vmFriendlyName;

  /// Creates a new [InMageEnableProtectionInput].
  /// [datastoreName] The target datastore name.
  /// [diskExclusionInput] The enable disk exclusion input.
  /// [disksToInclude] The disks to include list.
  /// [instanceType] The class type.
  /// [masterTargetId] The Master Target Id.
  /// [multiVmGroupId] The multi VM group Id.
  /// [multiVmGroupName] The multi VM group name.
  /// [processServerId] The Process Server Id.
  /// [retentionDrive] The retention drive to use on the MT.
  /// [runAsAccountId] The CS account Id.
  /// [vmFriendlyName] The VM Name.
  InMageEnableProtectionInput({
    this.datastoreName,
    this.diskExclusionInput,
    this.disksToInclude,
    required this.instanceType,
    required this.masterTargetId,
    required this.multiVmGroupId,
    required this.multiVmGroupName,
    required this.processServerId,
    required this.retentionDrive,
    this.runAsAccountId,
    this.vmFriendlyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastoreName': ?datastoreName,
      'diskExclusionInput': ?pulumi.Input.mapOptionalInputValue<InMageDiskExclusionInput, Map<String, dynamic>>(diskExclusionInput, (value) => value.toMap()),
      'disksToInclude': ?disksToInclude,
      'instanceType': instanceType,
      'masterTargetId': masterTargetId,
      'multiVmGroupId': multiVmGroupId,
      'multiVmGroupName': multiVmGroupName,
      'processServerId': processServerId,
      'retentionDrive': retentionDrive,
      'runAsAccountId': ?runAsAccountId,
      'vmFriendlyName': ?vmFriendlyName,
    };
  }

  factory InMageEnableProtectionInput.fromMap(Map<String, dynamic> map) {
    return InMageEnableProtectionInput(
      datastoreName: map['datastoreName'] == null ? null : (map['datastoreName'] as String).input(),
      diskExclusionInput: map['diskExclusionInput'] == null ? null : (InMageDiskExclusionInput.fromMap((map['diskExclusionInput'] as Map).cast<String, dynamic>())).input(),
      disksToInclude: map['disksToInclude'] == null ? null : ((map['disksToInclude'] as List).cast<String>()).input(),
      instanceType: (map['instanceType'] as String).input(),
      masterTargetId: (map['masterTargetId'] as String).input(),
      multiVmGroupId: (map['multiVmGroupId'] as String).input(),
      multiVmGroupName: (map['multiVmGroupName'] as String).input(),
      processServerId: (map['processServerId'] as String).input(),
      retentionDrive: (map['retentionDrive'] as String).input(),
      runAsAccountId: map['runAsAccountId'] == null ? null : (map['runAsAccountId'] as String).input(),
      vmFriendlyName: map['vmFriendlyName'] == null ? null : (map['vmFriendlyName'] as String).input(),
    );
  }
}

