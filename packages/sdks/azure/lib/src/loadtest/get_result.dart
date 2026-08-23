// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_encryption.dart';
import 'get_identity.dart';

/// Result data returned by get.
class GetResult {
  /// Resource data plane URI.
  final String dataPlaneUri;
  /// Description of the resource.
  final String description;
  /// An `encryption` block as defined below.
  final List<GetEncryption> encryptions;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetIdentity> identities;
  /// The Azure Region where the Load Test exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// A mapping of tags assigned to the Load Test Service.
  final Map<String, String> tags;

  /// Creates a new [GetResult].
  /// [dataPlaneUri] Resource data plane URI.
  /// [description] Description of the resource.
  /// [encryptions] An `encryption` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Load Test exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] A mapping of tags assigned to the Load Test Service.
  const GetResult({
    required this.dataPlaneUri,
    required this.description,
    required this.encryptions,
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPlaneUri': dataPlaneUri,
      'description': description,
      'encryptions': pulumi.Input.encodeList<GetEncryption, Map<String, dynamic>>(encryptions, (value) => value.toMap()),
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
      dataPlaneUri: map['dataPlaneUri'] as String,
      description: map['description'] as String,
      encryptions: pulumi.Input.decodeList<GetEncryption>(map['encryptions']!, (value) => GetEncryption.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetIdentity>(map['identities']!, (value) => GetIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
