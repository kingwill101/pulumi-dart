// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_group_encryption.dart';
import 'volume_group_identity.dart';
import 'volume_group_network_rule.dart';

/// Input properties used for looking up and filtering VolumeGroup resources.
class VolumeGroupState {
  /// Specifies the Elastic SAN ID within which this Elastic SAN Volume Group should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? elasticSanId;
  /// An `encryption` block as defined below.
  ///
  /// > **Note:** The `encryption` block can only be set when `encryption_type` is set to `EncryptionAtRestWithCustomerManagedKey`.
  final pulumi.Input<VolumeGroupEncryption>? encryption;
  /// Specifies the type of the key used to encrypt the data of the disk. Possible values are `EncryptionAtRestWithCustomerManagedKey` and `EncryptionAtRestWithPlatformKey`. Defaults to `EncryptionAtRestWithPlatformKey`.
  final pulumi.Input<String>? encryptionType;
  /// An `identity` block as defined below. Specifies the Managed Identity which should be assigned to this Elastic SAN Volume Group.
  final pulumi.Input<VolumeGroupIdentity>? identity;
  /// Specifies the name of this Elastic SAN Volume Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `network_rule` blocks as defined below.
  final pulumi.Input<List<VolumeGroupNetworkRule>>? networkRules;
  /// Specifies the type of the storage target. The only possible value is `Iscsi`. Defaults to `Iscsi`.
  final pulumi.Input<String>? protocolType;

  /// Creates a new [VolumeGroupState].
  /// [elasticSanId] Specifies the Elastic SAN ID within which this Elastic SAN Volume Group should exist. Changing this forces a new resource to be created.
  /// [encryption] An `encryption` block as defined below.
  /// [encryptionType] Specifies the type of the key used to encrypt the data of the disk. Possible values are `EncryptionAtRestWithCustomerManagedKey` and `EncryptionAtRestWithPlatformKey`. Defaults to `EncryptionAtRestWithPlatformKey`.
  /// [identity] An `identity` block as defined below. Specifies the Managed Identity which should be assigned to this Elastic SAN Volume Group.
  /// [name] Specifies the name of this Elastic SAN Volume Group. Changing this forces a new resource to be created.
  /// [networkRules] One or more `network_rule` blocks as defined below.
  /// [protocolType] Specifies the type of the storage target. The only possible value is `Iscsi`. Defaults to `Iscsi`.
  VolumeGroupState({
    this.elasticSanId,
    this.encryption,
    this.encryptionType,
    this.identity,
    this.name,
    this.networkRules,
    this.protocolType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticSanId': ?elasticSanId,
      'encryption': ?pulumi.Input.mapOptionalInputValue<VolumeGroupEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'encryptionType': ?encryptionType,
      'identity': ?pulumi.Input.mapOptionalInputValue<VolumeGroupIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'name': ?name,
      'networkRules': ?pulumi.Input.mapOptionalInputValue<List<VolumeGroupNetworkRule>, List<Map<String, dynamic>>>(networkRules, (value) => pulumi.Input.encodeList<VolumeGroupNetworkRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocolType': ?protocolType,
    };
  }

  factory VolumeGroupState.fromMap(Map<String, dynamic> map) {
    return VolumeGroupState(
      elasticSanId: map['elasticSanId'] == null ? null : (map['elasticSanId'] as String).input(),
      encryption: map['encryption'] == null ? null : (VolumeGroupEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())).input(),
      encryptionType: map['encryptionType'] == null ? null : (map['encryptionType'] as String).input(),
      identity: map['identity'] == null ? null : (VolumeGroupIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkRules: map['networkRules'] == null ? null : (pulumi.Input.decodeList<VolumeGroupNetworkRule>(map['networkRules'], (value) => VolumeGroupNetworkRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      protocolType: map['protocolType'] == null ? null : (map['protocolType'] as String).input(),
    );
  }
}

