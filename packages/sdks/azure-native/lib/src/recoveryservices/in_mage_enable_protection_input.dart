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
  const InMageEnableProtectionInput({
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
      datastoreName: (() { final guardedValue = map['datastoreName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskExclusionInput: (() { final guardedValue = map['diskExclusionInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InMageDiskExclusionInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disksToInclude: (() { final guardedValue = map['disksToInclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      masterTargetId: pulumi.Input.fromValue(map['masterTargetId'] as String),
      multiVmGroupId: pulumi.Input.fromValue(map['multiVmGroupId'] as String),
      multiVmGroupName: pulumi.Input.fromValue(map['multiVmGroupName'] as String),
      processServerId: pulumi.Input.fromValue(map['processServerId'] as String),
      retentionDrive: pulumi.Input.fromValue(map['retentionDrive'] as String),
      runAsAccountId: (() { final guardedValue = map['runAsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmFriendlyName: (() { final guardedValue = map['vmFriendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
