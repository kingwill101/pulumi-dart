// ignore_for_file: unused_element, unnecessary_cast

import 'in_mage_disk_exclusion_input.dart';

/// VMware Azure specific enable protection input.
class InMageEnableProtectionInput {
  /// The target datastore name.
  final String? datastoreName;
  /// The enable disk exclusion input.
  final InMageDiskExclusionInput? diskExclusionInput;
  /// The disks to include list.
  final List<String>? disksToInclude;
  /// The class type.
  /// Expected value is 'InMage'.
  final String instanceType;
  /// The Master Target Id.
  final String masterTargetId;
  /// The multi VM group Id.
  final String multiVmGroupId;
  /// The multi VM group name.
  final String multiVmGroupName;
  /// The Process Server Id.
  final String processServerId;
  /// The retention drive to use on the MT.
  final String retentionDrive;
  /// The CS account Id.
  final String? runAsAccountId;
  /// The VM Name.
  final String? vmFriendlyName;

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
      'diskExclusionInput': ?diskExclusionInput == null ? null : diskExclusionInput!.toMap(),
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
      datastoreName: map['datastoreName'] == null ? null : map['datastoreName'] as String,
      diskExclusionInput: map['diskExclusionInput'] == null ? null : InMageDiskExclusionInput.fromMap((map['diskExclusionInput'] as Map).cast<String, dynamic>()),
      disksToInclude: map['disksToInclude'] == null ? null : (map['disksToInclude'] as List).cast<String>(),
      instanceType: map['instanceType'] as String,
      masterTargetId: map['masterTargetId'] as String,
      multiVmGroupId: map['multiVmGroupId'] as String,
      multiVmGroupName: map['multiVmGroupName'] as String,
      processServerId: map['processServerId'] as String,
      retentionDrive: map['retentionDrive'] as String,
      runAsAccountId: map['runAsAccountId'] == null ? null : map['runAsAccountId'] as String,
      vmFriendlyName: map['vmFriendlyName'] == null ? null : map['vmFriendlyName'] as String,
    );
  }
}

