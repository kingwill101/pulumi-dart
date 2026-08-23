// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryGeoreplication {
  /// A location where the container registry should be geo-replicated.
  final pulumi.Input<String> location;
  /// Whether regional endpoint is enabled for this Container Registry?
  final pulumi.Input<bool>? regionalEndpointEnabled;
  /// A mapping of tags to assign to this replication location.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether zone redundancy is enabled for this replication location? Defaults to `false`.
  ///
  /// &gt; **Note:** Changing the `zoneRedundancyEnabled` forces an underlying replication to be created.
  final pulumi.Input<bool>? zoneRedundancyEnabled;

  /// Creates a new [RegistryGeoreplication].
  /// [location] A location where the container registry should be geo-replicated.
  /// [regionalEndpointEnabled] Whether regional endpoint is enabled for this Container Registry?
  /// [tags] A mapping of tags to assign to this replication location.
  /// [zoneRedundancyEnabled] Whether zone redundancy is enabled for this replication location? Defaults to `false`.
  const RegistryGeoreplication({
    required this.location,
    this.regionalEndpointEnabled,
    this.tags,
    this.zoneRedundancyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'regionalEndpointEnabled': ?regionalEndpointEnabled,
      'tags': ?tags,
      'zoneRedundancyEnabled': ?zoneRedundancyEnabled,
    };
  }

  factory RegistryGeoreplication.fromMap(Map<String, dynamic> map) {
    return RegistryGeoreplication(
      location: pulumi.Input.fromValue(map['location'] as String),
      regionalEndpointEnabled: (() { final guardedValue = map['regionalEndpointEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zoneRedundancyEnabled: (() { final guardedValue = map['zoneRedundancyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
