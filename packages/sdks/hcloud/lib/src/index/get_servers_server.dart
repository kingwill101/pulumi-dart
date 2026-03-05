// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_servers_server_network.dart';

class GetServersServer {
  final pulumi.Input<String> backupWindow;
  final pulumi.Input<bool> backups;
  final pulumi.Input<String> datacenter;
  final pulumi.Input<bool> deleteProtection;
  final pulumi.Input<List<int>> firewallIds;
  final pulumi.Input<int> id;
  final pulumi.Input<String> image;
  final pulumi.Input<String> ipv4Address;
  final pulumi.Input<String> ipv6Address;
  final pulumi.Input<String> ipv6Network;
  final pulumi.Input<String> iso;
  final pulumi.Input<Map<String, String>> labels;
  final pulumi.Input<String> location;
  final pulumi.Input<String> name;
  final pulumi.Input<List<GetServersServerNetwork>>? networks;
  final pulumi.Input<int>? placementGroupId;
  final pulumi.Input<int> primaryDiskSize;
  final pulumi.Input<bool> rebuildProtection;
  final pulumi.Input<String> rescue;
  final pulumi.Input<String> serverType;
  final pulumi.Input<String> status;

  /// Creates a new [GetServersServer].
  /// [backupWindow] Required.
  /// [backups] Required.
  /// [datacenter] Required.
  /// [deleteProtection] Required.
  /// [firewallIds] Required.
  /// [id] Required.
  /// [image] Required.
  /// [ipv4Address] Required.
  /// [ipv6Address] Required.
  /// [ipv6Network] Required.
  /// [iso] Required.
  /// [labels] Required.
  /// [location] Required.
  /// [name] Required.
  /// [networks] Optional.
  /// [placementGroupId] Optional.
  /// [primaryDiskSize] Required.
  /// [rebuildProtection] Required.
  /// [rescue] Required.
  /// [serverType] Required.
  /// [status] Required.
  GetServersServer({
    required this.backupWindow,
    required this.backups,
    required this.datacenter,
    required this.deleteProtection,
    required this.firewallIds,
    required this.id,
    required this.image,
    required this.ipv4Address,
    required this.ipv6Address,
    required this.ipv6Network,
    required this.iso,
    required this.labels,
    required this.location,
    required this.name,
    this.networks,
    this.placementGroupId,
    required this.primaryDiskSize,
    required this.rebuildProtection,
    required this.rescue,
    required this.serverType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupWindow': backupWindow,
      'backups': backups,
      'datacenter': datacenter,
      'deleteProtection': deleteProtection,
      'firewallIds': firewallIds,
      'id': id,
      'image': image,
      'ipv4Address': ipv4Address,
      'ipv6Address': ipv6Address,
      'ipv6Network': ipv6Network,
      'iso': iso,
      'labels': labels,
      'location': location,
      'name': name,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<GetServersServerNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<GetServersServerNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placementGroupId': ?placementGroupId,
      'primaryDiskSize': primaryDiskSize,
      'rebuildProtection': rebuildProtection,
      'rescue': rescue,
      'serverType': serverType,
      'status': status,
    };
  }

  factory GetServersServer.fromMap(Map<String, dynamic> map) {
    return GetServersServer(
      backupWindow: pulumi.Input.fromValue(map['backupWindow'] as String),
      backups: pulumi.Input.fromValue(map['backups'] as bool),
      datacenter: pulumi.Input.fromValue(map['datacenter'] as String),
      deleteProtection: pulumi.Input.fromValue(map['deleteProtection'] as bool),
      firewallIds: pulumi.Input.fromValue((map['firewallIds'] as List).cast<int>()),
      id: pulumi.Input.fromValue(map['id'] as int),
      image: pulumi.Input.fromValue(map['image'] as String),
      ipv4Address: pulumi.Input.fromValue(map['ipv4Address'] as String),
      ipv6Address: pulumi.Input.fromValue(map['ipv6Address'] as String),
      ipv6Network: pulumi.Input.fromValue(map['ipv6Network'] as String),
      iso: pulumi.Input.fromValue(map['iso'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetServersServerNetwork>(guardedValue, (value) => GetServersServerNetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
      placementGroupId: (() { final guardedValue = map['placementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      primaryDiskSize: pulumi.Input.fromValue(map['primaryDiskSize'] as int),
      rebuildProtection: pulumi.Input.fromValue(map['rebuildProtection'] as bool),
      rescue: pulumi.Input.fromValue(map['rescue'] as String),
      serverType: pulumi.Input.fromValue(map['serverType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

