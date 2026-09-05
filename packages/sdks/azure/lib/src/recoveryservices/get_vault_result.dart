// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vault_identity.dart';

/// Result data returned by getVault.
class GetVaultResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// (Optional) An `identity` block as defined below.
  final List<GetVaultIdentity>? identities;
  /// The Azure location where the resource resides.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// The vault's current SKU.
  final String? sku;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetVaultResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] (Optional) An `identity` block as defined below.
  /// [location] The Azure location where the resource resides.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [sku] The vault's current SKU.
  /// [tags] A mapping of tags assigned to the resource.
  const GetVaultResult({
    this.id,
    this.identities,
    this.location,
    this.name,
    this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVaultIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory GetVaultResult.fromMap(Map<String, dynamic> map) {
    return GetVaultResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVaultIdentity>(guardedValue, (value) => GetVaultIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
