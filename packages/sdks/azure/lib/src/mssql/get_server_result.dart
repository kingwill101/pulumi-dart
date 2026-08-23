// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_identity.dart';

/// Result data returned by getServer.
class GetServerResult {
  /// The administrator login name of the Microsoft SQL Server.
  final String administratorLogin;
  /// Whether the Express Vulnerability Assessment Configuration is enabled.
  final bool expressVulnerabilityAssessmentEnabled;
  /// The fully qualified domain name of the Microsoft SQL Server.
  final String fullyQualifiedDomainName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetServerIdentity> identities;
  /// The Azure Region where the Microsoft SQL Server exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A list of dropped restorable database IDs on the Microsoft SQL Server.
  final List<String> restorableDroppedDatabaseIds;
  /// A mapping of tags assigned to this Microsoft SQL Server.
  final Map<String, String> tags;
  /// The Key Vault Key URI to be used as the `Customer Managed Key` (CMK/BYOK) for the `Transparent Data Encryption` (TDE) layer.
  final String transparentDataEncryptionKeyVaultKeyId;
  /// The version of the Microsoft SQL Server.
  final String version;

  /// Creates a new [GetServerResult].
  /// [administratorLogin] The administrator login name of the Microsoft SQL Server.
  /// [expressVulnerabilityAssessmentEnabled] Whether the Express Vulnerability Assessment Configuration is enabled.
  /// [fullyQualifiedDomainName] The fully qualified domain name of the Microsoft SQL Server.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Microsoft SQL Server exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [restorableDroppedDatabaseIds] A list of dropped restorable database IDs on the Microsoft SQL Server.
  /// [tags] A mapping of tags assigned to this Microsoft SQL Server.
  /// [transparentDataEncryptionKeyVaultKeyId] The Key Vault Key URI to be used as the `Customer Managed Key` (CMK/BYOK) for the `Transparent Data Encryption` (TDE) layer.
  /// [version] The version of the Microsoft SQL Server.
  const GetServerResult({
    required this.administratorLogin,
    required this.expressVulnerabilityAssessmentEnabled,
    required this.fullyQualifiedDomainName,
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.restorableDroppedDatabaseIds,
    required this.tags,
    required this.transparentDataEncryptionKeyVaultKeyId,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': administratorLogin,
      'expressVulnerabilityAssessmentEnabled': expressVulnerabilityAssessmentEnabled,
      'fullyQualifiedDomainName': fullyQualifiedDomainName,
      'id': id,
      'identities': pulumi.Input.encodeList<GetServerIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'restorableDroppedDatabaseIds': restorableDroppedDatabaseIds,
      'tags': tags,
      'transparentDataEncryptionKeyVaultKeyId': transparentDataEncryptionKeyVaultKeyId,
      'version': version,
    };
  }

  factory GetServerResult.fromMap(Map<String, dynamic> map) {
    return GetServerResult(
      administratorLogin: map['administratorLogin'] as String,
      expressVulnerabilityAssessmentEnabled: map['expressVulnerabilityAssessmentEnabled'] as bool,
      fullyQualifiedDomainName: map['fullyQualifiedDomainName'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetServerIdentity>(map['identities']!, (value) => GetServerIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      restorableDroppedDatabaseIds: (map['restorableDroppedDatabaseIds'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      transparentDataEncryptionKeyVaultKeyId: map['transparentDataEncryptionKeyVaultKeyId'] as String,
      version: map['version'] as String,
    );
  }
}
