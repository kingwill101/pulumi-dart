// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance_alerts.dart';
import 'get_instances_instance_backup.dart';
import 'get_instances_instance_config.dart';
import 'get_instances_instance_disk.dart';
import 'get_instances_instance_placement_group.dart';
import 'get_instances_instance_spec.dart';

class GetInstancesInstance {
  final GetInstancesInstanceAlerts alerts;
  /// Information about this Linode's backups status.
  final List<GetInstancesInstanceBackup> backups;
  /// The Label of the Instance Config that should be used to boot the Linode instance.
  final String bootConfigLabel;
  /// A list of capabilities of this Linode instance.
  final List<String> capabilities;
  /// Configuration profiles define the VM settings and boot behavior of the Linode Instance.
  final List<GetInstancesInstanceConfig> configs;
  /// The disk encryption policy for this instance.
  final String diskEncryption;
  /// Disks associated with this Linode.
  final List<GetInstancesInstanceDisk> disks;
  /// The display group of the Linode instance.
  final String group;
  /// Whether this Instance was created with user-data.
  final bool hasUserData;
  /// The Linode’s host machine, as a UUID.
  final String hostUuid;
  /// The ID of the Placement Group in the Linode API.
  final int id;
  /// An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with `private/`. See [images](https://api.linode.com/v4/images) for more information on the Images available for you to use. Examples are `linode/debian12`, `linode/fedora39`, `linode/ubuntu22.04`, `linode/arch`, and `private/12345`. See all images [here](https://api.linode.com/v4/linode/images) (Requires a personal access token; docs [here](https://techdocs.akamai.com/linode-api/reference/get-images)). *This value can not be imported.* *Changing `image` forces the creation of a new Linode Instance.*
  final String image;
  /// The interface type for this Instance. (`linode`, `legacy_config`)
  final String interfaceGeneration;
  /// (Deprecated) A string containing the Linode's public IP address.
  final String ipAddress;
  /// This Linode's IPv4 Addresses. Each Linode is assigned a single public IPv4 address upon creation, and may get a single private IPv4 address if needed. You may need to open a support ticket to get additional IPv4 addresses.
  final List<String> ipv4s;
  /// This Linode's IPv6 SLAAC addresses. This address is specific to a Linode, and may not be shared.  The prefix (`/128`) is included in this attribute.
  final String ipv6;
  /// The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  final String label;
  /// If applicable, the ID of the LKE cluster this instance is a part of.
  final int lkeClusterId;
  /// A list of locks applied to this Linode.
  final List<String> locks;
  /// The maintenance policy of this Linode instance. (**Note: v4beta only.**)
  final String maintenancePolicy;
  final List<GetInstancesInstancePlacementGroup> placementGroups;
  /// This Linode's Private IPv4 Address, if enabled.  The regional private IP address range, 192.168.128.0/17, is shared by all Linode Instances in a region.
  final String privateIpAddress;
  /// This is the location where the Linode is deployed. Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc. See all regions [here](https://api.linode.com/v4/regions).
  final String region;
  final List<GetInstancesInstanceSpec> specs;
  /// The status of the instance, indicating the current readiness state. (`running`, `offline`, ...)
  final String status;
  /// When deploying from an Image, this field is optional with a Linode API default of 512mb, otherwise it is ignored. This is used to set the swap disk size for the newly-created Linode.
  final int swapSize;
  /// A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final List<String> tags;
  /// The Linode type defines the pricing, CPU, disk, and RAM specs of the instance. Examples are `"g6-nanode-1"`, `"g6-standard-2"`, `"g6-highmem-16"`, `"g6-dedicated-16"`, etc. See all types [here](https://api.linode.com/v4/linode/types).
  final String type;
  /// The watchdog, named Lassie, is a Shutdown Watchdog that monitors your Linode and will reboot it if it powers off unexpectedly. It works by issuing a boot job when your Linode powers off without a shutdown job being responsible. To prevent a loop, Lassie will give up if there have been more than 5 boot jobs issued within 15 minutes.
  final bool watchdogEnabled;

  /// Creates a new [GetInstancesInstance].
  /// [alerts] Required.
  /// [backups] Information about this Linode's backups status.
  /// [bootConfigLabel] The Label of the Instance Config that should be used to boot the Linode instance.
  /// [capabilities] A list of capabilities of this Linode instance.
  /// [configs] Configuration profiles define the VM settings and boot behavior of the Linode Instance.
  /// [diskEncryption] The disk encryption policy for this instance.
  /// [disks] Disks associated with this Linode.
  /// [group] The display group of the Linode instance.
  /// [hasUserData] Whether this Instance was created with user-data.
  /// [hostUuid] The Linode’s host machine, as a UUID.
  /// [id] The ID of the Placement Group in the Linode API.
  /// [image] An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with `private/`. See [images](https://api.linode.com/v4/images) for more information on the Images available for you to use. Examples are `linode/debian12`, `linode/fedora39`, `linode/ubuntu22.04`, `linode/arch`, and `private/12345`. See all images [here](https://api.linode.com/v4/linode/images) (Requires a personal access token; docs [here](https://techdocs.akamai.com/linode-api/reference/get-images)). *This value can not be imported.* *Changing `image` forces the creation of a new Linode Instance.*
  /// [interfaceGeneration] The interface type for this Instance. (`linode`, `legacy_config`)
  /// [ipAddress] (Deprecated) A string containing the Linode's public IP address.
  /// [ipv4s] This Linode's IPv4 Addresses. Each Linode is assigned a single public IPv4 address upon creation, and may get a single private IPv4 address if needed. You may need to open a support ticket to get additional IPv4 addresses.
  /// [ipv6] This Linode's IPv6 SLAAC addresses. This address is specific to a Linode, and may not be shared.  The prefix (`/128`) is included in this attribute.
  /// [label] The label of the Placement Group. This field can only contain ASCII letters, digits and dashes.
  /// [lkeClusterId] If applicable, the ID of the LKE cluster this instance is a part of.
  /// [locks] A list of locks applied to this Linode.
  /// [maintenancePolicy] The maintenance policy of this Linode instance. (**Note: v4beta only.**)
  /// [placementGroups] Required.
  /// [privateIpAddress] This Linode's Private IPv4 Address, if enabled.  The regional private IP address range, 192.168.128.0/17, is shared by all Linode Instances in a region.
  /// [region] This is the location where the Linode is deployed. Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc. See all regions [here](https://api.linode.com/v4/regions).
  /// [specs] Required.
  /// [status] The status of the instance, indicating the current readiness state. (`running`, `offline`, ...)
  /// [swapSize] When deploying from an Image, this field is optional with a Linode API default of 512mb, otherwise it is ignored. This is used to set the swap disk size for the newly-created Linode.
  /// [tags] A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [type] The Linode type defines the pricing, CPU, disk, and RAM specs of the instance. Examples are `"g6-nanode-1"`, `"g6-standard-2"`, `"g6-highmem-16"`, `"g6-dedicated-16"`, etc. See all types [here](https://api.linode.com/v4/linode/types).
  /// [watchdogEnabled] The watchdog, named Lassie, is a Shutdown Watchdog that monitors your Linode and will reboot it if it powers off unexpectedly. It works by issuing a boot job when your Linode powers off without a shutdown job being responsible. To prevent a loop, Lassie will give up if there have been more than 5 boot jobs issued within 15 minutes.
  GetInstancesInstance({
    required this.alerts,
    required this.backups,
    required this.bootConfigLabel,
    required this.capabilities,
    required this.configs,
    required this.diskEncryption,
    required this.disks,
    required this.group,
    required this.hasUserData,
    required this.hostUuid,
    required this.id,
    required this.image,
    required this.interfaceGeneration,
    required this.ipAddress,
    required this.ipv4s,
    required this.ipv6,
    required this.label,
    required this.lkeClusterId,
    required this.locks,
    required this.maintenancePolicy,
    required this.placementGroups,
    required this.privateIpAddress,
    required this.region,
    required this.specs,
    required this.status,
    required this.swapSize,
    required this.tags,
    required this.type,
    required this.watchdogEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': alerts.toMap(),
      'backups': pulumi.Input.encodeList<GetInstancesInstanceBackup, Map<String, dynamic>>(backups, (value) => value.toMap()),
      'bootConfigLabel': bootConfigLabel,
      'capabilities': capabilities,
      'configs': pulumi.Input.encodeList<GetInstancesInstanceConfig, Map<String, dynamic>>(configs, (value) => value.toMap()),
      'diskEncryption': diskEncryption,
      'disks': pulumi.Input.encodeList<GetInstancesInstanceDisk, Map<String, dynamic>>(disks, (value) => value.toMap()),
      'group': group,
      'hasUserData': hasUserData,
      'hostUuid': hostUuid,
      'id': id,
      'image': image,
      'interfaceGeneration': interfaceGeneration,
      'ipAddress': ipAddress,
      'ipv4s': ipv4s,
      'ipv6': ipv6,
      'label': label,
      'lkeClusterId': lkeClusterId,
      'locks': locks,
      'maintenancePolicy': maintenancePolicy,
      'placementGroups': pulumi.Input.encodeList<GetInstancesInstancePlacementGroup, Map<String, dynamic>>(placementGroups, (value) => value.toMap()),
      'privateIpAddress': privateIpAddress,
      'region': region,
      'specs': pulumi.Input.encodeList<GetInstancesInstanceSpec, Map<String, dynamic>>(specs, (value) => value.toMap()),
      'status': status,
      'swapSize': swapSize,
      'tags': tags,
      'type': type,
      'watchdogEnabled': watchdogEnabled,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      alerts: GetInstancesInstanceAlerts.fromMap((map['alerts'] as Map).cast<String, dynamic>()),
      backups: pulumi.Input.decodeList<GetInstancesInstanceBackup>(map['backups'], (value) => GetInstancesInstanceBackup.fromMap((value as Map).cast<String, dynamic>())),
      bootConfigLabel: map['bootConfigLabel'] as String,
      capabilities: (map['capabilities'] as List).cast<String>(),
      configs: pulumi.Input.decodeList<GetInstancesInstanceConfig>(map['configs'], (value) => GetInstancesInstanceConfig.fromMap((value as Map).cast<String, dynamic>())),
      diskEncryption: map['diskEncryption'] as String,
      disks: pulumi.Input.decodeList<GetInstancesInstanceDisk>(map['disks'], (value) => GetInstancesInstanceDisk.fromMap((value as Map).cast<String, dynamic>())),
      group: map['group'] as String,
      hasUserData: map['hasUserData'] as bool,
      hostUuid: map['hostUuid'] as String,
      id: map['id'] as int,
      image: map['image'] as String,
      interfaceGeneration: map['interfaceGeneration'] as String,
      ipAddress: map['ipAddress'] as String,
      ipv4s: (map['ipv4s'] as List).cast<String>(),
      ipv6: map['ipv6'] as String,
      label: map['label'] as String,
      lkeClusterId: map['lkeClusterId'] as int,
      locks: (map['locks'] as List).cast<String>(),
      maintenancePolicy: map['maintenancePolicy'] as String,
      placementGroups: pulumi.Input.decodeList<GetInstancesInstancePlacementGroup>(map['placementGroups'], (value) => GetInstancesInstancePlacementGroup.fromMap((value as Map).cast<String, dynamic>())),
      privateIpAddress: map['privateIpAddress'] as String,
      region: map['region'] as String,
      specs: pulumi.Input.decodeList<GetInstancesInstanceSpec>(map['specs'], (value) => GetInstancesInstanceSpec.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      swapSize: map['swapSize'] as int,
      tags: (map['tags'] as List).cast<String>(),
      type: map['type'] as String,
      watchdogEnabled: map['watchdogEnabled'] as bool,
    );
  }
}

