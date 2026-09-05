// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_encryption.dart';
import 'get_identity.dart';

/// Result data returned by get.
class GetResult {
  /// Resource data plane URI.
  final String? dataPlaneUri;
  /// Description of the resource.
  final String? description;
  /// An `encryption` block as defined below.
  final List<GetEncryption>? encryptions;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetIdentity>? identities;
  /// The Azure Region where the Load Test exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Load Test Service.
  final Map<String, String>? tags;

  /// Creates a new [GetResult].
  /// [dataPlaneUri] Resource data plane URI.
  /// [description] Description of the resource.
  /// [encryptions] An `encryption` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Load Test exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Load Test Service.
  const GetResult({
    this.dataPlaneUri,
    this.description,
    this.encryptions,
    this.id,
    this.identities,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPlaneUri': ?dataPlaneUri,
      'description': ?description,
      'encryptions': ?(() { final guardedValue = encryptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEncryption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetResult.fromMap(Map<String, dynamic> map) {
    return GetResult(
      dataPlaneUri: (() { final guardedValue = map['dataPlaneUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptions: (() { final guardedValue = map['encryptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEncryption>(guardedValue, (value) => GetEncryption.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetIdentity>(guardedValue, (value) => GetIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
