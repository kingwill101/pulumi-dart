// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_identity.dart';

/// Result data returned by get.
class GetResult {
  /// The URI of the Dev Center.
  final String devCenterUri;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetIdentity> identities;
  /// The Azure Region where the Dev Center exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Dev Center.
  final Map<String, String> tags;

  /// Creates a new [GetResult].
  /// [devCenterUri] The URI of the Dev Center.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Dev Center exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Dev Center.
  const GetResult({
    required this.devCenterUri,
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterUri': devCenterUri,
      'id': id,
      'identities': pulumi.Input.encodeList<GetIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetResult.fromMap(Map<String, dynamic> map) {
    return GetResult(
      devCenterUri: map['devCenterUri'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetIdentity>(map['identities']!, (value) => GetIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

