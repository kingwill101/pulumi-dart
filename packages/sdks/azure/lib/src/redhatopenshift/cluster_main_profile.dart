// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMainProfile {
  /// The resource ID of an associated disk encryption set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? diskEncryptionSetId;

  /// Whether main virtual machines are encrypted at host. Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `encryption_at_host_enabled` is only available for certain VM sizes and the `EncryptionAtHost` feature must be enabled for your subscription. Please see the [Azure documentation](https://learn.microsoft.com/azure/virtual-machines/disks-enable-host-based-encryption-portal?tabs=azure-powershell) for more information.
  final pulumi.Input<bool>? encryptionAtHostEnabled;

  /// The ID of the subnet where main nodes will be hosted. Changing this forces a new resource to be created.
  final pulumi.Input<String> subnetId;

  /// The size of the Virtual Machines for the main nodes. Changing this forces a new resource to be created.
  final pulumi.Input<String> vmSize;

  /// Creates a new [ClusterMainProfile].
  /// [diskEncryptionSetId] The resource ID of an associated disk encryption set. Changing this forces a new resource to be created.
  /// [encryptionAtHostEnabled] Whether main virtual machines are encrypted at host. Defaults to `false`. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the subnet where main nodes will be hosted. Changing this forces a new resource to be created.
  /// [vmSize] The size of the Virtual Machines for the main nodes. Changing this forces a new resource to be created.
  ClusterMainProfile({
    this.diskEncryptionSetId,
    this.encryptionAtHostEnabled,
    required this.subnetId,
    required this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'encryptionAtHostEnabled': ?encryptionAtHostEnabled,
      'subnetId': subnetId,
      'vmSize': vmSize,
    };
  }

  factory ClusterMainProfile.fromMap(Map<String, dynamic> map) {
    return ClusterMainProfile(
      diskEncryptionSetId: (() {
        final guardedValue = map['diskEncryptionSetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptionAtHostEnabled: (() {
        final guardedValue = map['encryptionAtHostEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      vmSize: pulumi.Input.fromValue(map['vmSize'] as String),
    );
  }
}
