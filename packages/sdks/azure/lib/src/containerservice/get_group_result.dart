// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_identity.dart';

/// Result data returned by getGroup.
class GetGroupResult {
  /// The FQDN of the Container Group instance derived from `dns_name_label`.
  final String fqdn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A `identity` block as defined below.
  final List<GetGroupIdentity> identities;

  /// The IP address allocated to the Container Group instance.
  final String ipAddress;

  /// The Azure Region where the Container Group instance exists.
  final String location;
  final String name;
  final String resourceGroupName;

  /// The subnet resource IDs for a container group.
  final List<String> subnetIds;

  /// A mapping of tags assigned to the Container Group instance.
  final Map<String, String> tags;

  /// A list of Availability Zones in which this Container Group is located.
  final List<String>? zones;

  /// Creates a new [GetGroupResult].
  /// [fqdn] The FQDN of the Container Group instance derived from `dns_name_label`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [ipAddress] The IP address allocated to the Container Group instance.
  /// [location] The Azure Region where the Container Group instance exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [subnetIds] The subnet resource IDs for a container group.
  /// [tags] A mapping of tags assigned to the Container Group instance.
  /// [zones] A list of Availability Zones in which this Container Group is located.
  GetGroupResult({
    required this.fqdn,
    required this.id,
    required this.identities,
    required this.ipAddress,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.subnetIds,
    required this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': fqdn,
      'id': id,
      'identities':
          pulumi.Input.encodeList<GetGroupIdentity, Map<String, dynamic>>(
            identities,
            (value) => value.toMap(),
          ),
      'ipAddress': ipAddress,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'subnetIds': subnetIds,
      'tags': tags,
      'zones': ?zones,
    };
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      fqdn: map['fqdn'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetGroupIdentity>(
        map['identities']!,
        (value) =>
            GetGroupIdentity.fromMap((value as Map).cast<String, dynamic>()),
      ),
      ipAddress: map['ipAddress'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      zones: (() {
        final guardedValue = map['zones'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
    );
  }
}
