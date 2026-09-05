// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_identity.dart';

/// Result data returned by getGroup.
class GetGroupResult {
  /// The FQDN of the Container Group instance derived from `dnsNameLabel`.
  final String? fqdn;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `identity` block as defined below.
  final List<GetGroupIdentity>? identities;
  /// The IP address allocated to the Container Group instance.
  final String? ipAddress;
  /// The Azure Region where the Container Group instance exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// The subnet resource IDs for a container group.
  final List<String>? subnetIds;
  /// A mapping of tags assigned to the Container Group instance.
  final Map<String, String>? tags;
  /// A list of Availability Zones in which this Container Group is located.
  final List<String>? zones;

  /// Creates a new [GetGroupResult].
  /// [fqdn] The FQDN of the Container Group instance derived from `dnsNameLabel`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [ipAddress] The IP address allocated to the Container Group instance.
  /// [location] The Azure Region where the Container Group instance exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [subnetIds] The subnet resource IDs for a container group.
  /// [tags] A mapping of tags assigned to the Container Group instance.
  /// [zones] A list of Availability Zones in which this Container Group is located.
  const GetGroupResult({
    this.fqdn,
    this.id,
    this.identities,
    this.ipAddress,
    this.location,
    this.name,
    this.resourceGroupName,
    this.subnetIds,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': ?fqdn,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetGroupIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ipAddress': ?ipAddress,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory GetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetGroupResult(
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetGroupIdentity>(guardedValue, (value) => GetGroupIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
