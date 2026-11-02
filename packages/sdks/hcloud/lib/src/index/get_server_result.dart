// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_network.dart';

/// Result data returned by getServer.
class GetServerResult {
  /// (string) The backup window of the server, if enabled.
  final String? backupWindow;
  /// (bool) Whether backups are enabled.
  final bool? backups;
  /// (string, deprecated) The datacenter name. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  final String? datacenter;
  /// (bool) Whether delete protection is enabled.
  final bool? deleteProtection;
  /// (Optional, list) Firewall IDs the server is attached to.
  final List<int>? firewallIds;
  /// (int) Unique ID of the server.
  final int? id;
  /// (string) Name or ID of the image the server was created from.
  final String? image;
  /// (string) The IPv4 address.
  final String? ipv4Address;
  /// (string) The first IPv6 address of the assigned network.
  final String? ipv6Address;
  /// (string) The IPv6 network.
  final String? ipv6Network;
  /// (string) ID or Name of the mounted ISO image. Architecture of ISO must equal the server (type) architecture.
  final String? iso;
  /// (map) User-defined labels (key-value pairs)
  final Map<String, String>? labels;
  /// (string) The location name. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final String? location;
  /// (string) Name of the server.
  final String? name;
  /// (map) Private Network the server is attached to.
  final List<GetServerNetwork>? networks;
  /// (Optional, string) Placement Group ID the server is assigned to.
  final int? placementGroupId;
  /// (int) The size of the primary disk in GB.
  final int? primaryDiskSize;
  /// (bool) Whether rebuild protection is enabled.
  final bool? rebuildProtection;
  final String? rescue;
  final String? selector;
  /// (string) Name of the server type.
  final String? serverType;
  /// (string) The status of the server.
  final String? status;
  final String? withSelector;
  final List<String>? withStatuses;

  /// Creates a new [GetServerResult].
  /// [backupWindow] (string) The backup window of the server, if enabled.
  /// [backups] (bool) Whether backups are enabled.
  /// [datacenter] (string, deprecated) The datacenter name. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  /// [deleteProtection] (bool) Whether delete protection is enabled.
  /// [firewallIds] (Optional, list) Firewall IDs the server is attached to.
  /// [id] (int) Unique ID of the server.
  /// [image] (string) Name or ID of the image the server was created from.
  /// [ipv4Address] (string) The IPv4 address.
  /// [ipv6Address] (string) The first IPv6 address of the assigned network.
  /// [ipv6Network] (string) The IPv6 network.
  /// [iso] (string) ID or Name of the mounted ISO image. Architecture of ISO must equal the server (type) architecture.
  /// [labels] (map) User-defined labels (key-value pairs)
  /// [location] (string) The location name. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] (string) Name of the server.
  /// [networks] (map) Private Network the server is attached to.
  /// [placementGroupId] (Optional, string) Placement Group ID the server is assigned to.
  /// [primaryDiskSize] (int) The size of the primary disk in GB.
  /// [rebuildProtection] (bool) Whether rebuild protection is enabled.
  /// [rescue] Optional.
  /// [selector] Optional.
  /// [serverType] (string) Name of the server type.
  /// [status] (string) The status of the server.
  /// [withSelector] Optional.
  /// [withStatuses] Optional.
  const GetServerResult({
    this.backupWindow,
    this.backups,
    this.datacenter,
    this.deleteProtection,
    this.firewallIds,
    this.id,
    this.image,
    this.ipv4Address,
    this.ipv6Address,
    this.ipv6Network,
    this.iso,
    this.labels,
    this.location,
    this.name,
    this.networks,
    this.placementGroupId,
    this.primaryDiskSize,
    this.rebuildProtection,
    this.rescue,
    this.selector,
    this.serverType,
    this.status,
    this.withSelector,
    this.withStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupWindow': ?backupWindow,
      'backups': ?backups,
      'datacenter': ?datacenter,
      'deleteProtection': ?deleteProtection,
      'firewallIds': ?firewallIds,
      'id': ?id,
      'image': ?image,
      'ipv4Address': ?ipv4Address,
      'ipv6Address': ?ipv6Address,
      'ipv6Network': ?ipv6Network,
      'iso': ?iso,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'networks': ?(() { final guardedValue = networks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServerNetwork, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'placementGroupId': ?placementGroupId,
      'primaryDiskSize': ?primaryDiskSize,
      'rebuildProtection': ?rebuildProtection,
      'rescue': ?rescue,
      'selector': ?selector,
      'serverType': ?serverType,
      'status': ?status,
      'withSelector': ?withSelector,
      'withStatuses': ?withStatuses,
    };
  }

  factory GetServerResult.fromMap(Map<String, dynamic> map) {
    return GetServerResult(
      backupWindow: (() { final guardedValue = map['backupWindow']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backups: (() { final guardedValue = map['backups']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      datacenter: (() { final guardedValue = map['datacenter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteProtection: (() { final guardedValue = map['deleteProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      firewallIds: (() { final guardedValue = map['firewallIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<int>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv4Address: (() { final guardedValue = map['ipv4Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6Network: (() { final guardedValue = map['ipv6Network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iso: (() { final guardedValue = map['iso']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServerNetwork>(guardedValue, (value) => GetServerNetwork.fromMap((value as Map).cast<String, dynamic>())); })(),
      placementGroupId: (() { final guardedValue = map['placementGroupId']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      primaryDiskSize: (() { final guardedValue = map['primaryDiskSize']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      rebuildProtection: (() { final guardedValue = map['rebuildProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      rescue: (() { final guardedValue = map['rescue']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverType: (() { final guardedValue = map['serverType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withSelector: (() { final guardedValue = map['withSelector']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withStatuses: (() { final guardedValue = map['withStatuses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
