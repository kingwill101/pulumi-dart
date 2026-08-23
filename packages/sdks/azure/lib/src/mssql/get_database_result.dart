// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_identity.dart';

/// Result data returned by getDatabase.
class GetDatabaseResult {
  /// The collation of the database.
  final String collation;
  /// The id of the elastic pool containing this database.
  final String elasticPoolId;
  /// The type of enclave being used by the database.
  final String enclaveType;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A `identity` block as defined below.
  final List<GetDatabaseIdentity> identities;
  /// The license type to apply for this database.
  final String licenseType;
  /// The max size of the database in gigabytes.
  final int maxSizeGb;
  final String name;
  /// The number of readonly secondary replicas associated with the database to which readonly application intent connections may be routed.
  final int readReplicaCount;
  /// If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica.
  final bool readScale;
  final String serverId;
  /// The name of the SKU of the database.
  final String skuName;
  /// The storage account type used to store backups for this database.
  final String storageAccountType;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// Whether or not Transparent Data Encryption is enabled.
  final bool transparentDataEncryptionEnabled;
  /// Whether or not TDE automatically rotates the encryption Key to latest version.
  final bool transparentDataEncryptionKeyAutomaticRotationEnabled;
  /// The Key Vault key URI to be used as the `Customer Managed Key`(CMK/BYOK) for the `Transparent Data Encryption`(TDE) layer.
  final String transparentDataEncryptionKeyVaultKeyId;
  /// Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones.
  final bool zoneRedundant;

  /// Creates a new [GetDatabaseResult].
  /// [collation] The collation of the database.
  /// [elasticPoolId] The id of the elastic pool containing this database.
  /// [enclaveType] The type of enclave being used by the database.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [licenseType] The license type to apply for this database.
  /// [maxSizeGb] The max size of the database in gigabytes.
  /// [name] Required.
  /// [readReplicaCount] The number of readonly secondary replicas associated with the database to which readonly application intent connections may be routed.
  /// [readScale] If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica.
  /// [serverId] Required.
  /// [skuName] The name of the SKU of the database.
  /// [storageAccountType] The storage account type used to store backups for this database.
  /// [tags] A mapping of tags to assign to the resource.
  /// [transparentDataEncryptionEnabled] Whether or not Transparent Data Encryption is enabled.
  /// [transparentDataEncryptionKeyAutomaticRotationEnabled] Whether or not TDE automatically rotates the encryption Key to latest version.
  /// [transparentDataEncryptionKeyVaultKeyId] The Key Vault key URI to be used as the `Customer Managed Key`(CMK/BYOK) for the `Transparent Data Encryption`(TDE) layer.
  /// [zoneRedundant] Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones.
  const GetDatabaseResult({
    required this.collation,
    required this.elasticPoolId,
    required this.enclaveType,
    required this.id,
    required this.identities,
    required this.licenseType,
    required this.maxSizeGb,
    required this.name,
    required this.readReplicaCount,
    required this.readScale,
    required this.serverId,
    required this.skuName,
    required this.storageAccountType,
    required this.tags,
    required this.transparentDataEncryptionEnabled,
    required this.transparentDataEncryptionKeyAutomaticRotationEnabled,
    required this.transparentDataEncryptionKeyVaultKeyId,
    required this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collation': collation,
      'elasticPoolId': elasticPoolId,
      'enclaveType': enclaveType,
      'id': id,
      'identities': pulumi.Input.encodeList<GetDatabaseIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'licenseType': licenseType,
      'maxSizeGb': maxSizeGb,
      'name': name,
      'readReplicaCount': readReplicaCount,
      'readScale': readScale,
      'serverId': serverId,
      'skuName': skuName,
      'storageAccountType': storageAccountType,
      'tags': tags,
      'transparentDataEncryptionEnabled': transparentDataEncryptionEnabled,
      'transparentDataEncryptionKeyAutomaticRotationEnabled': transparentDataEncryptionKeyAutomaticRotationEnabled,
      'transparentDataEncryptionKeyVaultKeyId': transparentDataEncryptionKeyVaultKeyId,
      'zoneRedundant': zoneRedundant,
    };
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      collation: map['collation'] as String,
      elasticPoolId: map['elasticPoolId'] as String,
      enclaveType: map['enclaveType'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetDatabaseIdentity>(map['identities']!, (value) => GetDatabaseIdentity.fromMap((value as Map).cast<String, dynamic>())),
      licenseType: map['licenseType'] as String,
      maxSizeGb: map['maxSizeGb'] as int,
      name: map['name'] as String,
      readReplicaCount: map['readReplicaCount'] as int,
      readScale: map['readScale'] as bool,
      serverId: map['serverId'] as String,
      skuName: map['skuName'] as String,
      storageAccountType: map['storageAccountType'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transparentDataEncryptionEnabled: map['transparentDataEncryptionEnabled'] as bool,
      transparentDataEncryptionKeyAutomaticRotationEnabled: map['transparentDataEncryptionKeyAutomaticRotationEnabled'] as bool,
      transparentDataEncryptionKeyVaultKeyId: map['transparentDataEncryptionKeyVaultKeyId'] as String,
      zoneRedundant: map['zoneRedundant'] as bool,
    );
  }
}
