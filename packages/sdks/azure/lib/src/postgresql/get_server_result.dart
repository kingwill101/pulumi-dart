// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_identity.dart';

/// Result data returned by getServer.
class GetServerResult {
  /// The administrator username of the PostgreSQL Server.
  final String administratorLogin;
  /// The fully qualified domain name of the PostgreSQL Server.
  final String fqdn;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetServerIdentity> identities;
  /// The location of the Resource Group in which the PostgreSQL Server exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// The SKU name of the PostgreSQL Server.
  final String skuName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;
  /// The version of the PostgreSQL Server.
  final String version;

  /// Creates a new [GetServerResult].
  /// [administratorLogin] The administrator username of the PostgreSQL Server.
  /// [fqdn] The fully qualified domain name of the PostgreSQL Server.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The location of the Resource Group in which the PostgreSQL Server exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [skuName] The SKU name of the PostgreSQL Server.
  /// [tags] A mapping of tags assigned to the resource.
  /// [version] The version of the PostgreSQL Server.
  const GetServerResult({
    required this.administratorLogin,
    required this.fqdn,
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.skuName,
    required this.tags,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': administratorLogin,
      'fqdn': fqdn,
      'id': id,
      'identities': pulumi.Input.encodeList<GetServerIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': tags,
      'version': version,
    };
  }

  factory GetServerResult.fromMap(Map<String, dynamic> map) {
    return GetServerResult(
      administratorLogin: map['administratorLogin'] as String,
      fqdn: map['fqdn'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetServerIdentity>(map['identities']!, (value) => GetServerIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as String,
    );
  }
}

