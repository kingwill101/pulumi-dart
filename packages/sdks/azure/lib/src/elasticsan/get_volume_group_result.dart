// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_group_encryption.dart';
import 'get_volume_group_identity.dart';
import 'get_volume_group_network_rule.dart';

/// Result data returned by getVolumeGroup.
class GetVolumeGroupResult {
  final String? elasticSanId;
  /// The type of the key used to encrypt the data of the disk.
  final String? encryptionType;
  /// An `encryption` block as defined below.
  final List<GetVolumeGroupEncryption>? encryptions;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetVolumeGroupIdentity>? identities;
  final String? name;
  /// One or more `networkRule` blocks as defined below.
  final List<GetVolumeGroupNetworkRule>? networkRules;
  /// The type of the storage target.
  final String? protocolType;

  /// Creates a new [GetVolumeGroupResult].
  /// [elasticSanId] Optional.
  /// [encryptionType] The type of the key used to encrypt the data of the disk.
  /// [encryptions] An `encryption` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [name] Optional.
  /// [networkRules] One or more `networkRule` blocks as defined below.
  /// [protocolType] The type of the storage target.
  const GetVolumeGroupResult({
    this.elasticSanId,
    this.encryptionType,
    this.encryptions,
    this.id,
    this.identities,
    this.name,
    this.networkRules,
    this.protocolType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticSanId': ?elasticSanId,
      'encryptionType': ?encryptionType,
      'encryptions': ?(() { final guardedValue = encryptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVolumeGroupEncryption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVolumeGroupIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'networkRules': ?(() { final guardedValue = networkRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVolumeGroupNetworkRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'protocolType': ?protocolType,
    };
  }

  factory GetVolumeGroupResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupResult(
      elasticSanId: (() { final guardedValue = map['elasticSanId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionType: (() { final guardedValue = map['encryptionType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptions: (() { final guardedValue = map['encryptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVolumeGroupEncryption>(guardedValue, (value) => GetVolumeGroupEncryption.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVolumeGroupIdentity>(guardedValue, (value) => GetVolumeGroupIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkRules: (() { final guardedValue = map['networkRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVolumeGroupNetworkRule>(guardedValue, (value) => GetVolumeGroupNetworkRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      protocolType: (() { final guardedValue = map['protocolType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
