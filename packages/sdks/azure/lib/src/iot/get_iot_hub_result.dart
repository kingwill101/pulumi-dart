// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_iot_hub_identity.dart';

/// Result data returned by getIotHub.
class GetIotHubResult {
  /// The Hostname of the IoTHub.
  final String? hostname;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `identity` block as defined below.
  final List<GetIotHubIdentity>? identities;
  final String? name;
  final String? resourceGroupName;
  final Map<String, String>? tags;

  /// Creates a new [GetIotHubResult].
  /// [hostname] The Hostname of the IoTHub.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] Optional.
  const GetIotHubResult({
    this.hostname,
    this.id,
    this.identities,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?hostname,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetIotHubIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetIotHubResult.fromMap(Map<String, dynamic> map) {
    return GetIotHubResult(
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetIotHubIdentity>(guardedValue, (value) => GetIotHubIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
