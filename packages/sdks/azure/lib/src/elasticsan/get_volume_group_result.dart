// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_volume_group_encryption.dart';
import 'get_volume_group_identity.dart';
import 'get_volume_group_network_rule.dart';

/// Result data returned by getVolumeGroup.
class GetVolumeGroupResult {
  final String elasticSanId;
  /// The type of the key used to encrypt the data of the disk.
  final String encryptionType;
  /// An `encryption` block as defined below.
  final List<GetVolumeGroupEncryption> encryptions;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetVolumeGroupIdentity> identities;
  final String name;
  /// One or more `network_rule` blocks as defined below.
  final List<GetVolumeGroupNetworkRule> networkRules;
  /// The type of the storage target.
  final String protocolType;

  /// Creates a new [GetVolumeGroupResult].
  /// [elasticSanId] Required.
  /// [encryptionType] The type of the key used to encrypt the data of the disk.
  /// [encryptions] An `encryption` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [name] Required.
  /// [networkRules] One or more `network_rule` blocks as defined below.
  /// [protocolType] The type of the storage target.
  GetVolumeGroupResult({
    required this.elasticSanId,
    required this.encryptionType,
    required this.encryptions,
    required this.id,
    required this.identities,
    required this.name,
    required this.networkRules,
    required this.protocolType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticSanId': elasticSanId,
      'encryptionType': encryptionType,
      'encryptions': pulumi.Input.encodeList<GetVolumeGroupEncryption, Map<String, dynamic>>(encryptions, (value) => value.toMap()),
      'id': id,
      'identities': pulumi.Input.encodeList<GetVolumeGroupIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'name': name,
      'networkRules': pulumi.Input.encodeList<GetVolumeGroupNetworkRule, Map<String, dynamic>>(networkRules, (value) => value.toMap()),
      'protocolType': protocolType,
    };
  }

  factory GetVolumeGroupResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupResult(
      elasticSanId: map['elasticSanId'] as String,
      encryptionType: map['encryptionType'] as String,
      encryptions: pulumi.Input.decodeList<GetVolumeGroupEncryption>(map['encryptions'], (value) => GetVolumeGroupEncryption.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetVolumeGroupIdentity>(map['identities'], (value) => GetVolumeGroupIdentity.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      networkRules: pulumi.Input.decodeList<GetVolumeGroupNetworkRule>(map['networkRules'], (value) => GetVolumeGroupNetworkRule.fromMap((value as Map).cast<String, dynamic>())),
      protocolType: map['protocolType'] as String,
    );
  }
}

