// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_network.dart';
import 'server_public_net.dart';

/// {@template pulumi_index_server_server_args_doc}
/// The set of arguments for Server.
/// {@endtemplate}
/// {@macro pulumi_index_server_server_args_doc}
class ServerArgs {
  /// Unused attribute, consider removing it from your configuration.
  final pulumi.Input<bool>? allowDeprecatedImages;
  /// Enable or disable backups.
  final pulumi.Input<bool>? backups;
  /// The datacenter name to create the server in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  final pulumi.Input<String>? datacenter;
  /// Enable or disable delete protection (Needs to be the same as `rebuildProtection`). See "Delete Protection" in the Provider Docs for details.
  final pulumi.Input<bool>? deleteProtection;
  /// Firewall IDs the server should be attached to on creation.
  final pulumi.Input<List<int>>? firewallIds;
  /// Ignores any updates
  /// to the `firewallIds` argument which were received from the server.
  /// This should not be used in normal cases. See the documentation of the
  /// `hcloud.FirewallAttachment` resource for a reason to use this
  /// argument.
  final pulumi.Input<bool>? ignoreRemoteFirewallIds;
  /// Name or ID of the image the server is created from. **Note** the `image` property is only required when using the resource to create servers. As the Hetzner Cloud API may return servers without an image ID set it is not marked as required in the Terraform Provider itself. Thus, users will get an error from the underlying client library if they forget to set the property and try to create a server.
  final pulumi.Input<String>? image;
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
  /// In this block you can either enable / disable ipv4 and ipv6 or link existing primary IPs (checkout the examples).
  /// If this block is not defined, two primary (ipv4 & ipv6) ips getting auto generated.
  final pulumi.Input<List<ServerPublicNet>>? publicNets;
  /// Enable or disable rebuild protection (Needs to be the same as `deleteProtection`).
  final pulumi.Input<bool>? rebuildProtection;
  /// Enable and boot in to the specified rescue system. This enables simple installation of custom operating systems. `linux64` or `linux32`
  final pulumi.Input<String>? rescue;
  /// Name of the server type this server should be created with.
  final pulumi.Input<String> serverType;
  /// Whether to try shutting the server down gracefully before deleting it.
  final pulumi.Input<bool>? shutdownBeforeDeletion;
  /// SSH key IDs or names which should be injected into the server at creation time. Once the server is created, you can not update the list of SSH Keys. If you do change this, you will be prompted to destroy and recreate the server. You can avoid this by setting lifecycle.ignore_changes to `[ sshKeys ]`.
  final pulumi.Input<List<String>>? sshKeys;
  /// Cloud-Init user data to use during server creation. This field is limited to 32KiB.
  final pulumi.Input<String>? userData;

  /// Creates a new [ServerArgs].
  /// [allowDeprecatedImages] Unused attribute, consider removing it from your configuration.
  /// [backups] Enable or disable backups.
  /// [datacenter] The datacenter name to create the server in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  /// [deleteProtection] Enable or disable delete protection (Needs to be the same as `rebuildProtection`). See "Delete Protection" in the Provider Docs for details.
  /// [firewallIds] Firewall IDs the server should be attached to on creation.
  /// [ignoreRemoteFirewallIds] Ignores any updates
  /// [image] Name or ID of the image the server is created from. **Note** the `image` property is only required when using the resource to create servers. As the Hetzner Cloud API may return servers without an image ID set it is not marked as required in the Terraform Provider itself. Thus, users will get an error from the underlying client library if they forget to set the property and try to create a server.
  /// [iso] ID or Name of an ISO image to mount.
  /// [keepDisk] If true, do not upgrade the disk. This allows downgrading the server type later.
  /// [labels] User-defined labels (key-value pairs) should be created with.
  /// [location] The location name to create the server in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] Name of the server to create (must be unique per project and a valid hostname as per RFC 1123).
  /// [networks] Network the server should be attached to on creation. (Can be specified multiple times)
  /// [placementGroupId] Placement Group ID the server added to on creation.
  /// [publicNets] In this block you can either enable / disable ipv4 and ipv6 or link existing primary IPs (checkout the examples).
  /// [rebuildProtection] Enable or disable rebuild protection (Needs to be the same as `deleteProtection`).
  /// [rescue] Enable and boot in to the specified rescue system. This enables simple installation of custom operating systems. `linux64` or `linux32`
  /// [serverType] Name of the server type this server should be created with.
  /// [shutdownBeforeDeletion] Whether to try shutting the server down gracefully before deleting it.
  /// [sshKeys] SSH key IDs or names which should be injected into the server at creation time. Once the server is created, you can not update the list of SSH Keys. If you do change this, you will be prompted to destroy and recreate the server. You can avoid this by setting lifecycle.ignore_changes to `[ sshKeys ]`.
  /// [userData] Cloud-Init user data to use during server creation. This field is limited to 32KiB.
  const ServerArgs({
    this.allowDeprecatedImages,
    this.backups,
    this.datacenter,
    this.deleteProtection,
    this.firewallIds,
    this.ignoreRemoteFirewallIds,
    this.image,
    this.iso,
    this.keepDisk,
    this.labels,
    this.location,
    this.name,
    this.networks,
    this.placementGroupId,
    this.publicNets,
    this.rebuildProtection,
    this.rescue,
    required this.serverType,
    this.shutdownBeforeDeletion,
    this.sshKeys,
    this.userData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowDeprecatedImages': ?allowDeprecatedImages,
      'backups': ?backups,
      'datacenter': ?datacenter,
      'deleteProtection': ?deleteProtection,
      'firewallIds': ?firewallIds,
      'ignoreRemoteFirewallIds': ?ignoreRemoteFirewallIds,
      'image': ?image,
      'iso': ?iso,
      'keepDisk': ?keepDisk,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<ServerNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<ServerNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'placementGroupId': ?placementGroupId,
      'publicNets': ?pulumi.Input.mapOptionalInputValue<List<ServerPublicNet>, List<Map<String, dynamic>>>(publicNets, (value) => pulumi.Input.encodeList<ServerPublicNet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rebuildProtection': ?rebuildProtection,
      'rescue': ?rescue,
      'serverType': serverType,
      'shutdownBeforeDeletion': ?shutdownBeforeDeletion,
      'sshKeys': ?sshKeys,
      'userData': ?userData,
    };
  }

  factory ServerArgs.fromMap(Map<String, dynamic> map) {
    return ServerArgs(
      allowDeprecatedImages: (() { final guardedValue = map['allowDeprecatedImages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      backups: (() { final guardedValue = map['backups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      datacenter: (() { final guardedValue = map['datacenter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteProtection: (() { final guardedValue = map['deleteProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      firewallIds: (() { final guardedValue = map['firewallIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      ignoreRemoteFirewallIds: (() { final guardedValue = map['ignoreRemoteFirewallIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iso: (() { final guardedValue = map['iso']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keepDisk: (() { final guardedValue = map['keepDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServerNetwork>(guardedValue, (value) => ServerNetwork.fromMap((value as Map).cast<String, dynamic>()))); })(),
      placementGroupId: (() { final guardedValue = map['placementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      publicNets: (() { final guardedValue = map['publicNets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServerPublicNet>(guardedValue, (value) => ServerPublicNet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rebuildProtection: (() { final guardedValue = map['rebuildProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rescue: (() { final guardedValue = map['rescue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverType: pulumi.Input.fromValue(map['serverType'] as String),
      shutdownBeforeDeletion: (() { final guardedValue = map['shutdownBeforeDeletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sshKeys: (() { final guardedValue = map['sshKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
