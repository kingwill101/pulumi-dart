// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_iot_hub_identity.dart';

/// Result data returned by getIotHub.
class GetIotHubResult {
  /// The Hostname of the IoTHub.
  final String hostname;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A `identity` block as defined below.
  final List<GetIotHubIdentity> identities;
  final String name;
  final String resourceGroupName;
  final Map<String, String>? tags;

  /// Creates a new [GetIotHubResult].
  /// [hostname] The Hostname of the IoTHub.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] Optional.
  GetIotHubResult({
    required this.hostname,
    required this.id,
    required this.identities,
    required this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'id': id,
      'identities':
          pulumi.Input.encodeList<GetIotHubIdentity, Map<String, dynamic>>(
            identities,
            (value) => value.toMap(),
          ),
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetIotHubResult.fromMap(Map<String, dynamic> map) {
    return GetIotHubResult(
      hostname: map['hostname'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetIotHubIdentity>(
        map['identities']!,
        (value) =>
            GetIotHubIdentity.fromMap((value as Map).cast<String, dynamic>()),
      ),
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
    );
  }
}
