// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_network.dart';
import 'server_public_net.dart';

/// {@template pulumi_index_server_server_args_doc}
/// The set of arguments for Server.
/// {@endtemplate}
/// {@macro pulumi_index_server_server_args_doc}
class ServerArgs {
  /// Enable the use of deprecated images (default: false). **Note** Deprecated images will be removed after three months. Using them is then no longer possible.
  final pulumi.Input<bool>? allowDeprecatedImages;
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
  /// Enable or disable rebuild protection (Needs to be the same as `delete_protection`).
  final pulumi.Input<bool>? rebuildProtection;
  /// Enable and boot in to the specified rescue system. This enables simple installation of custom operating systems. `linux64` or `linux32`
  final pulumi.Input<String>? rescue;
  /// Name of the server type this server should be created with.
  final pulumi.Input<String> serverType;
  /// Whether to try shutting the server down gracefully before deleting it.
  final pulumi.Input<bool>? shutdownBeforeDeletion;
  /// SSH key IDs or names which should be injected into the server at creation time. Once the server is created, you can not update the list of SSH Keys. If you do change this, you will be prompted to destroy and recreate the server. You can avoid this by setting lifecycle.ignore_changes to `[ ssh_keys ]`.
  final pulumi.Input<List<String>>? sshKeys;
  /// Cloud-Init user data to use during server creation
  final pulumi.Input<String>? userData;

  /// Creates a new [ServerArgs].
  /// [allowDeprecatedImages] Enable the use of deprecated images (default: false). **Note** Deprecated images will be removed after three months. Using them is then no longer possible.
  /// [backups] Enable or disable backups.
  /// [datacenter] The datacenter name to create the server in. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  /// [deleteProtection] Enable or disable delete protection (Needs to be the same as `rebuild_protection`). See "Delete Protection" in the Provider Docs for details.
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
  /// [rebuildProtection] Enable or disable rebuild protection (Needs to be the same as `delete_protection`).
  /// [rescue] Enable and boot in to the specified rescue system. This enables simple installation of custom operating systems. `linux64` or `linux32`
  /// [serverType] Name of the server type this server should be created with.
  /// [shutdownBeforeDeletion] Whether to try shutting the server down gracefully before deleting it.
  /// [sshKeys] SSH key IDs or names which should be injected into the server at creation time. Once the server is created, you can not update the list of SSH Keys. If you do change this, you will be prompted to destroy and recreate the server. You can avoid this by setting lifecycle.ignore_changes to `[ ssh_keys ]`.
  /// [userData] Cloud-Init user data to use during server creation
  ServerArgs({
    pulumi.Output<bool>? allowDeprecatedImages,
    pulumi.Output<bool>? backups,
    pulumi.Output<String>? datacenter,
    pulumi.Output<bool>? deleteProtection,
    pulumi.Output<List<int>>? firewallIds,
    pulumi.Output<bool>? ignoreRemoteFirewallIds,
    pulumi.Output<String>? image,
    pulumi.Output<String>? iso,
    pulumi.Output<bool>? keepDisk,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<List<ServerNetwork>>? networks,
    pulumi.Output<int>? placementGroupId,
    pulumi.Output<List<ServerPublicNet>>? publicNets,
    pulumi.Output<bool>? rebuildProtection,
    pulumi.Output<String>? rescue,
    required pulumi.Output<String> serverType,
    pulumi.Output<bool>? shutdownBeforeDeletion,
    pulumi.Output<List<String>>? sshKeys,
    pulumi.Output<String>? userData,
  }) :
      allowDeprecatedImages = pulumi.Input.asOptionalInput<bool>(allowDeprecatedImages),
      backups = pulumi.Input.asOptionalInput<bool>(backups),
      datacenter = pulumi.Input.asOptionalInput<String>(datacenter),
      deleteProtection = pulumi.Input.asOptionalInput<bool>(deleteProtection),
      firewallIds = pulumi.Input.asOptionalInput<List<int>>(firewallIds),
      ignoreRemoteFirewallIds = pulumi.Input.asOptionalInput<bool>(ignoreRemoteFirewallIds),
      image = pulumi.Input.asOptionalInput<String>(image),
      iso = pulumi.Input.asOptionalInput<String>(iso),
      keepDisk = pulumi.Input.asOptionalInput<bool>(keepDisk),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networks = pulumi.Input.asOptionalInput<List<ServerNetwork>>(networks),
      placementGroupId = pulumi.Input.asOptionalInput<int>(placementGroupId),
      publicNets = pulumi.Input.asOptionalInput<List<ServerPublicNet>>(publicNets),
      rebuildProtection = pulumi.Input.asOptionalInput<bool>(rebuildProtection),
      rescue = pulumi.Input.asOptionalInput<String>(rescue),
      serverType = pulumi.Input.asInput<String>(serverType),
      shutdownBeforeDeletion = pulumi.Input.asOptionalInput<bool>(shutdownBeforeDeletion),
      sshKeys = pulumi.Input.asOptionalInput<List<String>>(sshKeys),
      userData = pulumi.Input.asOptionalInput<String>(userData);

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
      allowDeprecatedImages: map['allowDeprecatedImages'] == null ? null : pulumi.Output.create<bool>(map['allowDeprecatedImages'] as bool),
      backups: map['backups'] == null ? null : pulumi.Output.create<bool>(map['backups'] as bool),
      datacenter: map['datacenter'] == null ? null : pulumi.Output.create<String>(map['datacenter'] as String),
      deleteProtection: map['deleteProtection'] == null ? null : pulumi.Output.create<bool>(map['deleteProtection'] as bool),
      firewallIds: map['firewallIds'] == null ? null : pulumi.Output.create<List<int>>((map['firewallIds'] as List).cast<int>()),
      ignoreRemoteFirewallIds: map['ignoreRemoteFirewallIds'] == null ? null : pulumi.Output.create<bool>(map['ignoreRemoteFirewallIds'] as bool),
      image: map['image'] == null ? null : pulumi.Output.create<String>(map['image'] as String),
      iso: map['iso'] == null ? null : pulumi.Output.create<String>(map['iso'] as String),
      keepDisk: map['keepDisk'] == null ? null : pulumi.Output.create<bool>(map['keepDisk'] as bool),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networks: map['networks'] == null ? null : pulumi.Output.create<List<ServerNetwork>>(pulumi.Input.decodeList<ServerNetwork>(map['networks'], (value) => ServerNetwork.fromMap((value as Map).cast<String, dynamic>()))),
      placementGroupId: map['placementGroupId'] == null ? null : pulumi.Output.create<int>(map['placementGroupId'] as int),
      publicNets: map['publicNets'] == null ? null : pulumi.Output.create<List<ServerPublicNet>>(pulumi.Input.decodeList<ServerPublicNet>(map['publicNets'], (value) => ServerPublicNet.fromMap((value as Map).cast<String, dynamic>()))),
      rebuildProtection: map['rebuildProtection'] == null ? null : pulumi.Output.create<bool>(map['rebuildProtection'] as bool),
      rescue: map['rescue'] == null ? null : pulumi.Output.create<String>(map['rescue'] as String),
      serverType: pulumi.Output.create<String>(map['serverType'] as String),
      shutdownBeforeDeletion: map['shutdownBeforeDeletion'] == null ? null : pulumi.Output.create<bool>(map['shutdownBeforeDeletion'] as bool),
      sshKeys: map['sshKeys'] == null ? null : pulumi.Output.create<List<String>>((map['sshKeys'] as List).cast<String>()),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
    );
  }
}

