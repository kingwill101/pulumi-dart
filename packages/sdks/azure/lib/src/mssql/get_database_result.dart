// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_identity.dart';

/// Result data returned by getDatabase.
class GetDatabaseResult {
  /// The collation of the database.
  final String? collation;
  /// The id of the elastic pool containing this database.
  final String? elasticPoolId;
  /// The type of enclave being used by the database.
  final String? enclaveType;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `identity` block as defined below.
  final List<GetDatabaseIdentity>? identities;
  /// The license type to apply for this database.
  final String? licenseType;
  /// The max size of the database in gigabytes.
  final int? maxSizeGb;
  final String? name;
  /// The number of readonly secondary replicas associated with the database to which readonly application intent connections may be routed.
  final int? readReplicaCount;
  /// If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica.
  final bool? readScale;
  final String? serverId;
  /// The name of the SKU of the database.
  final String? skuName;
  /// The storage account type used to store backups for this database.
  final String? storageAccountType;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  /// Whether or not Transparent Data Encryption is enabled.
  final bool? transparentDataEncryptionEnabled;
  /// Whether or not TDE automatically rotates the encryption Key to latest version.
  final bool? transparentDataEncryptionKeyAutomaticRotationEnabled;
  /// The Key Vault key URI to be used as the `Customer Managed Key`(CMK/BYOK) for the `Transparent Data Encryption`(TDE) layer.
  final String? transparentDataEncryptionKeyVaultKeyId;
  /// Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones.
  final bool? zoneRedundant;

  /// Creates a new [GetDatabaseResult].
  /// [collation] The collation of the database.
  /// [elasticPoolId] The id of the elastic pool containing this database.
  /// [enclaveType] The type of enclave being used by the database.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [licenseType] The license type to apply for this database.
  /// [maxSizeGb] The max size of the database in gigabytes.
  /// [name] Optional.
  /// [readReplicaCount] The number of readonly secondary replicas associated with the database to which readonly application intent connections may be routed.
  /// [readScale] If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica.
  /// [serverId] Optional.
  /// [skuName] The name of the SKU of the database.
  /// [storageAccountType] The storage account type used to store backups for this database.
  /// [tags] A mapping of tags to assign to the resource.
  /// [transparentDataEncryptionEnabled] Whether or not Transparent Data Encryption is enabled.
  /// [transparentDataEncryptionKeyAutomaticRotationEnabled] Whether or not TDE automatically rotates the encryption Key to latest version.
  /// [transparentDataEncryptionKeyVaultKeyId] The Key Vault key URI to be used as the `Customer Managed Key`(CMK/BYOK) for the `Transparent Data Encryption`(TDE) layer.
  /// [zoneRedundant] Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones.
  const GetDatabaseResult({
    this.collation,
    this.elasticPoolId,
    this.enclaveType,
    this.id,
    this.identities,
    this.licenseType,
    this.maxSizeGb,
    this.name,
    this.readReplicaCount,
    this.readScale,
    this.serverId,
    this.skuName,
    this.storageAccountType,
    this.tags,
    this.transparentDataEncryptionEnabled,
    this.transparentDataEncryptionKeyAutomaticRotationEnabled,
    this.transparentDataEncryptionKeyVaultKeyId,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collation': ?collation,
      'elasticPoolId': ?elasticPoolId,
      'enclaveType': ?enclaveType,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatabaseIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'licenseType': ?licenseType,
      'maxSizeGb': ?maxSizeGb,
      'name': ?name,
      'readReplicaCount': ?readReplicaCount,
      'readScale': ?readScale,
      'serverId': ?serverId,
      'skuName': ?skuName,
      'storageAccountType': ?storageAccountType,
      'tags': ?tags,
      'transparentDataEncryptionEnabled': ?transparentDataEncryptionEnabled,
      'transparentDataEncryptionKeyAutomaticRotationEnabled': ?transparentDataEncryptionKeyAutomaticRotationEnabled,
      'transparentDataEncryptionKeyVaultKeyId': ?transparentDataEncryptionKeyVaultKeyId,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory GetDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseResult(
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      elasticPoolId: (() { final guardedValue = map['elasticPoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enclaveType: (() { final guardedValue = map['enclaveType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatabaseIdentity>(guardedValue, (value) => GetDatabaseIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxSizeGb: (() { final guardedValue = map['maxSizeGb']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      readReplicaCount: (() { final guardedValue = map['readReplicaCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      readScale: (() { final guardedValue = map['readScale']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      transparentDataEncryptionEnabled: (() { final guardedValue = map['transparentDataEncryptionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      transparentDataEncryptionKeyAutomaticRotationEnabled: (() { final guardedValue = map['transparentDataEncryptionKeyAutomaticRotationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      transparentDataEncryptionKeyVaultKeyId: (() { final guardedValue = map['transparentDataEncryptionKeyVaultKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
