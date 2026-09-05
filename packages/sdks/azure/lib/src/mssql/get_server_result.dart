// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_identity.dart';

/// Result data returned by getServer.
class GetServerResult {
  /// The administrator login name of the Microsoft SQL Server.
  final String? administratorLogin;
  /// Whether the Express Vulnerability Assessment Configuration is enabled.
  final bool? expressVulnerabilityAssessmentEnabled;
  /// The fully qualified domain name of the Microsoft SQL Server.
  final String? fullyQualifiedDomainName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetServerIdentity>? identities;
  /// The Azure Region where the Microsoft SQL Server exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A list of dropped restorable database IDs on the Microsoft SQL Server.
  final List<String>? restorableDroppedDatabaseIds;
  /// A mapping of tags assigned to this Microsoft SQL Server.
  final Map<String, String>? tags;
  /// The Key Vault Key URI to be used as the `Customer Managed Key` (CMK/BYOK) for the `Transparent Data Encryption` (TDE) layer.
  final String? transparentDataEncryptionKeyVaultKeyId;
  /// The version of the Microsoft SQL Server.
  final String? version;

  /// Creates a new [GetServerResult].
  /// [administratorLogin] The administrator login name of the Microsoft SQL Server.
  /// [expressVulnerabilityAssessmentEnabled] Whether the Express Vulnerability Assessment Configuration is enabled.
  /// [fullyQualifiedDomainName] The fully qualified domain name of the Microsoft SQL Server.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Microsoft SQL Server exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [restorableDroppedDatabaseIds] A list of dropped restorable database IDs on the Microsoft SQL Server.
  /// [tags] A mapping of tags assigned to this Microsoft SQL Server.
  /// [transparentDataEncryptionKeyVaultKeyId] The Key Vault Key URI to be used as the `Customer Managed Key` (CMK/BYOK) for the `Transparent Data Encryption` (TDE) layer.
  /// [version] The version of the Microsoft SQL Server.
  const GetServerResult({
    this.administratorLogin,
    this.expressVulnerabilityAssessmentEnabled,
    this.fullyQualifiedDomainName,
    this.id,
    this.identities,
    this.location,
    this.name,
    this.resourceGroupName,
    this.restorableDroppedDatabaseIds,
    this.tags,
    this.transparentDataEncryptionKeyVaultKeyId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'expressVulnerabilityAssessmentEnabled': ?expressVulnerabilityAssessmentEnabled,
      'fullyQualifiedDomainName': ?fullyQualifiedDomainName,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServerIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'restorableDroppedDatabaseIds': ?restorableDroppedDatabaseIds,
      'tags': ?tags,
      'transparentDataEncryptionKeyVaultKeyId': ?transparentDataEncryptionKeyVaultKeyId,
      'version': ?version,
    };
  }

  factory GetServerResult.fromMap(Map<String, dynamic> map) {
    return GetServerResult(
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expressVulnerabilityAssessmentEnabled: (() { final guardedValue = map['expressVulnerabilityAssessmentEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      fullyQualifiedDomainName: (() { final guardedValue = map['fullyQualifiedDomainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServerIdentity>(guardedValue, (value) => GetServerIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restorableDroppedDatabaseIds: (() { final guardedValue = map['restorableDroppedDatabaseIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      transparentDataEncryptionKeyVaultKeyId: (() { final guardedValue = map['transparentDataEncryptionKeyVaultKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
