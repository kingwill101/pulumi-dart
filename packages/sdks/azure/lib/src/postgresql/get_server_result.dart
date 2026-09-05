// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_identity.dart';

/// Result data returned by getServer.
class GetServerResult {
  /// The administrator username of the PostgreSQL Server.
  final String? administratorLogin;
  /// The fully qualified domain name of the PostgreSQL Server.
  final String? fqdn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetServerIdentity>? identities;
  /// The location of the Resource Group in which the PostgreSQL Server exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// The SKU name of the PostgreSQL Server.
  final String? skuName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// The version of the PostgreSQL Server.
  final String? version;

  /// Creates a new [GetServerResult].
  /// [administratorLogin] The administrator username of the PostgreSQL Server.
  /// [fqdn] The fully qualified domain name of the PostgreSQL Server.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The location of the Resource Group in which the PostgreSQL Server exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [skuName] The SKU name of the PostgreSQL Server.
  /// [tags] A mapping of tags assigned to the resource.
  /// [version] The version of the PostgreSQL Server.
  const GetServerResult({
    this.administratorLogin,
    this.fqdn,
    this.id,
    this.identities,
    this.location,
    this.name,
    this.resourceGroupName,
    this.skuName,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'fqdn': ?fqdn,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServerIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory GetServerResult.fromMap(Map<String, dynamic> map) {
    return GetServerResult(
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServerIdentity>(guardedValue, (value) => GetServerIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
