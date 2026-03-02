// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_network.dart';
import 'server_public_net.dart';

/// Input properties used for looking up and filtering Server resources.
class ServerState {
  /// Enable the use of deprecated images (default: false). **Note** Deprecated images will be removed after three months. Using them is then no longer possible.
  final pulumi.Input<bool>? allowDeprecatedImages;
  /// (string) The backup window of the server, if enabled.
  final pulumi.Input<String>? backupWindow;
  /// Enable or disable backups.
  final pulumi.Input<bool>? backups;
  /// The datacenter name to create the server in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  final pulumi.Input<String>? datacenter;
  /// Enable or disable delete protection (Needs to be the same as `rebuild_protection`). See "Delete Protection" in the Provider Docs for details.
  final pulumi.Input<bool>? deleteProtection;
  /// Firewall IDs the server should be attached to on creation.
  final pulumi.Input<List<int>>? firewallIds;
  /// Ignores any updates
  /// to the `firewall_ids` argument which were received from the server.
  /// This should not be used in normal cases. See the documentation of the
  /// `hcloud.FirewallAttachment` resource for a reason to use this
  /// argument.
  final pulumi.Input<bool>? ignoreRemoteFirewallIds;
  /// Name or ID of the image the server is created from. **Note** the `image` property is only required when using the resource to create servers. As the Hetzner Cloud API may return servers without an image ID set it is not marked as required in the Terraform Provider itself. Thus, users will get an error from the underlying client library if they forget to set the property and try to create a server.
  final pulumi.Input<String>? image;
  /// (string) The IPv4 address.
  final pulumi.Input<String>? ipv4Address;
  /// (string) The first IPv6 address of the assigned network.
  final pulumi.Input<String>? ipv6Address;
  /// (string) The IPv6 network.
  final pulumi.Input<String>? ipv6Network;
  /// ID or Name of an ISO image to mount.
  final pulumi.Input<String>? iso;
  /// If true, do not upgrade the disk. This allows downgrading the server type later.
  final pulumi.Input<bool>? keepDisk;
  /// User-defined labels (key-value pairs) should be created with.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location name to create the server in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final pulumi.Input<String>? location;
  /// Name of the server to create (must be unique per project and a valid hostname as per RFC 1123).
  final pulumi.Input<String>? name;
  /// Network the server should be attached to on creation. (Can be specified multiple times)
  final pulumi.Input<List<ServerNetwork>>? networks;
  /// Placement Group ID the server added to on creation.
  final pulumi.Input<int>? placementGroupId;
  /// (int) The size of the primary disk in GB.
  final pulumi.Input<int>? primaryDiskSize;
  /// In this block you can either enable / disable ipv4 and ipv6 or link existing primary IPs (checkout the examples).
  /// If this block is not defined, two primary (ipv4 & ipv6) ips getting auto generated.
  final pulumi.Input<List<ServerPublicNet>>? publicNets;
  /// Enable or disable rebuild protection (Needs to be the same as `delete_protection`).
  final pulumi.Input<bool>? rebuildProtection;
  /// Enable and boot in to the specified rescue system. This enables simple installation of custom operating systems. `linux64` or `linux32`
  final pulumi.Input<String>? rescue;
  /// Name of the server type this server should be created with.
  final pulumi.Input<String>? serverType;
  /// Whether to try shutting the server down gracefully before deleting it.
  final pulumi.Input<bool>? shutdownBeforeDeletion;
  /// SSH key IDs or names which should be injected into the server at creation time. Once the server is created, you can not update the list of SSH Keys. If you do change this, you will be prompted to destroy and recreate the server. You can avoid this by setting lifecycle.ignore_changes to `[ ssh_keys ]`.
  final pulumi.Input<List<String>>? sshKeys;
  /// (string) The status of the server.
  final pulumi.Input<String>? status;
  /// Cloud-Init user data to use during server creation
  final pulumi.Input<String>? userData;

  /// Creates a new [ServerState].
  /// [allowDeprecatedImages] Enable the use of deprecated images (default: false). **Note** Deprecated images will be removed after three months. Using them is then no longer possible.
  /// [backupWindow] (string) The backup window of the server, if enabled.
  /// [backups] Enable or disable backups.
  /// [datacenter] The datacenter name to create the server in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  /// [deleteProtection] Enable or disable delete protection (Needs to be the same as `rebuild_protection`). See "Delete Protection" in the Provider Docs for details.
  /// [firewallIds] Firewall IDs the server should be attached to on creation.
  /// [ignoreRemoteFirewallIds] Ignores any updates
  /// [image] Name or ID of the image the server is created from. **Note** the `image` property is only required when using the resource to create servers. As the Hetzner Cloud API may return servers without an image ID set it is not marked as required in the Terraform Provider itself. Thus, users will get an error from the underlying client library if they forget to set the property and try to create a server.
  /// [ipv4Address] (string) The IPv4 address.
  /// [ipv6Address] (string) The first IPv6 address of the assigned network.
  /// [ipv6Network] (string) The IPv6 network.
  /// [iso] ID or Name of an ISO image to mount.
  /// [keepDisk] If true, do not upgrade the disk. This allows downgrading the server type later.
  /// [labels] User-defined labels (key-value pairs) should be created with.
  /// [location] The location name to create the server in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] Name of the server to create (must be unique per project and a valid hostname as per RFC 1123).
  /// [networks] Network the server should be attached to on creation. (Can be specified multiple times)
  /// [placementGroupId] Placement Group ID the server added to on creation.
  /// [primaryDiskSize] (int) The size of the primary disk in GB.
  /// [publicNets] In this block you can either enable / disable ipv4 and ipv6 or link existing primary IPs (checkout the examples).
  /// [rebuildProtection] Enable or disable rebuild protection (Needs to be the same as `delete_protection`).
  /// [rescue] Enable and boot in to the specified rescue system. This enables simple installation of custom operating systems. `linux64` or `linux32`
  /// [serverType] Name of the server type this server should be created with.
  /// [shutdownBeforeDeletion] Whether to try shutting the server down gracefully before deleting it.
  /// [sshKeys] SSH key IDs or names which should be injected into the server at creation time. Once the server is created, you can not update the list of SSH Keys. If you do change this, you will be prompted to destroy and recreate the server. You can avoid this by setting lifecycle.ignore_changes to `[ ssh_keys ]`.
  /// [status] (string) The status of the server.
  /// [userData] Cloud-Init user data to use during server creation
  ServerState({
    this.allowDeprecatedImages,
    this.backupWindow,
    this.backups,
    this.datacenter,
    this.deleteProtection,
    this.firewallIds,
    this.ignoreRemoteFirewallIds,
    this.image,
    this.ipv4Address,
    this.ipv6Address,
    this.ipv6Network,
    this.iso,
    this.keepDisk,
    this.labels,
    this.location,
    this.name,
    this.networks,
    this.placementGroupId,
    this.primaryDiskSize,
    this.publicNets,
    this.rebuildProtection,
    this.rescue,
    this.serverType,
    this.shutdownBeforeDeletion,
    this.sshKeys,
    this.status,
    this.userData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowDeprecatedImages': ?allowDeprecatedImages,
      'backupWindow': ?backupWindow,
      'backups': ?backups,
      'datacenter': ?datacenter,
      'deleteProtection': ?deleteProtection,
      'firewallIds': ?firewallIds,
      'ignoreRemoteFirewallIds': ?ignoreRemoteFirewallIds,
      'image': ?image,
      'ipv4Address': ?ipv4Address,
      'ipv6Address': ?ipv6Address,
      'ipv6Network': ?ipv6Network,
      'iso': ?iso,
      'keepDisk': ?keepDisk,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<ServerNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<ServerNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placementGroupId': ?placementGroupId,
      'primaryDiskSize': ?primaryDiskSize,
      'publicNets': ?pulumi.Input.mapOptionalInputValue<List<ServerPublicNet>, List<Map<String, dynamic>>>(publicNets, (value) => pulumi.Input.encodeList<ServerPublicNet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rebuildProtection': ?rebuildProtection,
      'rescue': ?rescue,
      'serverType': ?serverType,
      'shutdownBeforeDeletion': ?shutdownBeforeDeletion,
      'sshKeys': ?sshKeys,
      'status': ?status,
      'userData': ?userData,
    };
  }

  factory ServerState.fromMap(Map<String, dynamic> map) {
    return ServerState(
      allowDeprecatedImages: map['allowDeprecatedImages'] == null ? null : (map['allowDeprecatedImages']! as bool).input(),
      backupWindow: map['backupWindow'] == null ? null : (map['backupWindow']! as String).input(),
      backups: map['backups'] == null ? null : (map['backups']! as bool).input(),
      datacenter: map['datacenter'] == null ? null : (map['datacenter']! as String).input(),
      deleteProtection: map['deleteProtection'] == null ? null : (map['deleteProtection']! as bool).input(),
      firewallIds: map['firewallIds'] == null ? null : ((map['firewallIds']! as List).cast<int>()).input(),
      ignoreRemoteFirewallIds: map['ignoreRemoteFirewallIds'] == null ? null : (map['ignoreRemoteFirewallIds']! as bool).input(),
      image: map['image'] == null ? null : (map['image']! as String).input(),
      ipv4Address: map['ipv4Address'] == null ? null : (map['ipv4Address']! as String).input(),
      ipv6Address: map['ipv6Address'] == null ? null : (map['ipv6Address']! as String).input(),
      ipv6Network: map['ipv6Network'] == null ? null : (map['ipv6Network']! as String).input(),
      iso: map['iso'] == null ? null : (map['iso']! as String).input(),
      keepDisk: map['keepDisk'] == null ? null : (map['keepDisk']! as bool).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networks: map['networks'] == null ? null : (pulumi.Input.decodeList<ServerNetwork>(map['networks']!, (value) => ServerNetwork.fromMap((value as Map).cast<String, dynamic>()))).input(),
      placementGroupId: map['placementGroupId'] == null ? null : (map['placementGroupId']! as int).input(),
      primaryDiskSize: map['primaryDiskSize'] == null ? null : (map['primaryDiskSize']! as int).input(),
      publicNets: map['publicNets'] == null ? null : (pulumi.Input.decodeList<ServerPublicNet>(map['publicNets']!, (value) => ServerPublicNet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      rebuildProtection: map['rebuildProtection'] == null ? null : (map['rebuildProtection']! as bool).input(),
      rescue: map['rescue'] == null ? null : (map['rescue']! as String).input(),
      serverType: map['serverType'] == null ? null : (map['serverType']! as String).input(),
      shutdownBeforeDeletion: map['shutdownBeforeDeletion'] == null ? null : (map['shutdownBeforeDeletion']! as bool).input(),
      sshKeys: map['sshKeys'] == null ? null : ((map['sshKeys']! as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      userData: map['userData'] == null ? null : (map['userData']! as String).input(),
    );
  }
}

