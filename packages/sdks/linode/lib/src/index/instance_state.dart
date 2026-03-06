// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_alerts.dart';
import 'instance_backup.dart';
import 'instance_config.dart';
import 'instance_disk.dart';
import 'instance_interface.dart';
import 'instance_metadata.dart';
import 'instance_placement_group.dart';
import 'instance_spec.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Configuration options for alert triggers on this Linode.
  final pulumi.Input<InstanceAlerts>? alerts;
  /// A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if 'image' is provided.
  final pulumi.Input<List<String>>? authorizedKeys;
  /// A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. Only accepted if 'image' is provided.
  final pulumi.Input<List<String>>? authorizedUsers;
  /// A Backup ID from another Linode's available backups. Your User must have read_write access to that Linode, the Backup must have a status of successful, and the Linode must be deployed to the same region as the Backup. See /linode/instances/{linodeId}/backups for a Linode's available backups. This field and the image field are mutually exclusive.
  final pulumi.Input<int>? backupId;
  /// Information about this Linode's backups status.
  final pulumi.Input<List<InstanceBackup>>? backups;
  /// If this field is set to true, the created Linode will automatically be enrolled in the Linode Backup service. This will incur an additional charge. The cost for the Backup service is dependent on the Type of Linode deployed.
  final pulumi.Input<bool>? backupsEnabled;
  /// The Label of the Instance Config that should be used to boot the Linode instance.
  final pulumi.Input<String>? bootConfigLabel;
  /// If true, then the instance is kept or converted into in a running state. If false, the instance will be shutdown. If unspecified, the Linode's power status will not be managed by the Provider.
  final pulumi.Input<bool>? booted;
  /// A list of capabilities of this Linode instance.
  final pulumi.Input<List<String>>? capabilities;
  /// Configuration profiles define the VM settings and boot behavior of the Linode Instance.
  final pulumi.Input<List<InstanceConfig>>? configs;
  /// The disk encryption policy for this instance. (`enabled`, `disabled`; default `enabled` in supported regions)
  ///
  /// * **NOTE: Disk encryption may not currently be available to all users.**
  final pulumi.Input<String>? diskEncryption;
  final pulumi.Input<List<InstanceDisk>>? disks;
  /// The ID of the Firewall to attach to the instance upon creation. *Changing `firewall_id` forces the creation of a new Linode Instance.*
  final pulumi.Input<int>? firewallId;
  /// A deprecated property denoting a group label for this Linode. We recommend using the `tags` attribute instead.
  final pulumi.Input<String>? group;
  /// Whether this Instance was created with user-data.
  final pulumi.Input<bool>? hasUserData;
  /// The Linode’s host machine, as a UUID.
  final pulumi.Input<String>? hostUuid;
  /// An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/. See /images for more information on the Images available for you to use.
  final pulumi.Input<String>? image;
  /// Specifies the interface type for the Linode. If set to `linode`, Linode interfaces must be created using a separate resource before this Linode can be booted. (`linode`, `legacy_config`; default is determined by the account `interfaces_for_new_linodes` setting)
  ///
  /// * TODO(Linode Interfaces): Link to a usage example using the `linode_instance_interface` resource
  final pulumi.Input<String>? interfaceGeneration;
  /// An array of Network Interfaces for this Linode to be created with. If an explicit config or disk is defined, interfaces must be declared in the config block.
  final pulumi.Input<List<InstanceInterface>>? interfaces;
  /// A string containing the Linode's public IP address.
  final pulumi.Input<String>? ipAddress;
  /// A set of reserved IPv4 addresses to assign to this Linode on creation.
  ///
  /// * **NOTE: IP reservation is not currently available to all users.**
  final pulumi.Input<List<String>>? ipv4s;
  /// This Linode's IPv6 SLAAC addresses. This address is specific to a Linode, and may not be shared.  The prefix (`/128`) is included in this attribute.
  final pulumi.Input<String>? ipv6;
  /// The Linode's label is for display purposes only. If no label is provided for a Linode, a default will be assigned.
  final pulumi.Input<String>? label;
  /// If applicable, the ID of the LKE cluster this instance is a part of.
  final pulumi.Input<int>? lkeClusterId;
  /// A list of locks applied to this Linode.
  final pulumi.Input<List<String>>? locks;
  /// The maintenance policy of this Linode instance. Examples are `"linode/migrate"` and `"linode/power_off_on"`. Defaults to the default maintenance policy of the account. (**Note: v4beta only.**)
  final pulumi.Input<String>? maintenancePolicy;
  /// Various fields related to the Linode Metadata service.
  final pulumi.Input<List<InstanceMetadata>>? metadatas;
  /// The type of migration to use when updating the type or region of a Linode. (`cold`, `warm`; default `cold`)
  final pulumi.Input<String>? migrationType;
  /// Enables the Network Helper feature. The default value is determined by the network_helper setting in the account settings.
  ///
  /// * `interface` - (Optional) A list of network interfaces to be assigned to the Linode on creation. If an explicit config or disk is defined, interfaces must be declared in the `config` block.
  final pulumi.Input<bool>? networkHelper;
  /// Information about the Placement Group this Linode is assigned to.
  final pulumi.Input<InstancePlacementGroup>? placementGroup;
  /// If true, changes to the Linode's assigned Placement Group will be ignored. This is necessary when using this resource in conjunction with the linode.PlacementGroupAssignment resource.
  final pulumi.Input<bool>? placementGroupExternallyManaged;
  /// If true, the created Linode will have private networking enabled, allowing use of the 192.168.128.0/17 network within the Linode's region. It can be enabled on an existing Linode but it can't be disabled.
  final pulumi.Input<bool>? privateIp;
  /// This Linode's Private IPv4 Address, if enabled.  The regional private IP address range, 192.168.128.0/17, is shared by all Linode Instances in a region.
  final pulumi.Input<String>? privateIpAddress;
  /// This is the location where the Linode is deployed. Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc. See all regions [here](https://api.linode.com/v4/regions). *Changing `region` will trigger a migration of this Linode. Migration operations are typically long-running operations, so the update timeout should be adjusted accordingly.*.
  final pulumi.Input<String>? region;
  /// If true, changes in Linode type will attempt to upsize or downsize implicitly created disks. This must be false if explicit disks are defined. *This is an irreversible action as Linode disks cannot be automatically downsized.*
  ///
  /// * `alerts.0.cpu` - (Optional) The percentage of CPU usage required to trigger an alert. If the average CPU usage over two hours exceeds this value, we'll send you an alert. If this is set to 0, the alert is disabled.
  ///
  /// * `alerts.0.network_in` - (Optional) The amount of incoming traffic, in Mbit/s, required to trigger an alert. If the average incoming traffic over two hours exceeds this value, we'll send you an alert. If this is set to 0 (zero), the alert is disabled.
  ///
  /// * `alerts.0.network_out` - (Optional) The amount of outbound traffic, in Mbit/s, required to trigger an alert. If the average outbound traffic over two hours exceeds this value, we'll send you an alert. If this is set to 0 (zero), the alert is disabled.
  ///
  /// * `alerts.0.transfer_quota` - (Optional) The percentage of network transfer that may be used before an alert is triggered. When this value is exceeded, we'll alert you. If this is set to 0 (zero), the alert is disabled.
  ///
  /// * `alerts.0.io` - (Optional) The amount of disk IO operation per second required to trigger an alert. If the average disk IO over two hours exceeds this value, we'll send you an alert. If set to 0, this alert is disabled.
  final pulumi.Input<bool>? resizeDisk;
  /// The password that will be initially assigned to the 'root' user account.
  final pulumi.Input<String>? rootPass;
  /// A set of IPv4 addresses to be shared with the Instance. These IP addresses can be both private and public, but must be in the same region as the instance.
  ///
  /// * `metadata.0.user_data` - (Optional) The base64-encoded user-defined data exposed to this instance through the Linode Metadata service. Refer to the base64encode(...) function for information on encoding content for this field.
  ///
  /// * `placement_group.0.id` - (Optional) The ID of the Placement Group to assign this Linode to.
  final pulumi.Input<List<String>>? sharedIpv4s;
  /// Information about the resources available to this Linode.
  final pulumi.Input<List<InstanceSpec>>? specs;
  /// An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.
  final pulumi.Input<Map<String, String>>? stackscriptData;
  /// The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript.
  final pulumi.Input<int>? stackscriptId;
  /// The status of the instance, indicating the current readiness state. (`running`, `offline`, ...)
  final pulumi.Input<String>? status;
  /// When deploying from an Image, this field is optional with a Linode API default of 512mb, otherwise it is ignored. This is used to set the swap disk size for the newly-created Linode.
  final pulumi.Input<int>? swapSize;
  /// A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>>? tags;
  /// The Linode type defines the pricing, CPU, disk, and RAM specs of the instance. Examples are `"g6-nanode-1"`, `"g6-standard-2"`, `"g6-highmem-16"`, `"g6-dedicated-16"`, etc. See all types [here](https://api.linode.com/v4/linode/types).
  ///
  /// - - -
  final pulumi.Input<String>? type;
  /// The watchdog, named Lassie, is a Shutdown Watchdog that monitors your Linode and will reboot it if it powers off unexpectedly. It works by issuing a boot job when your Linode powers off without a shutdown job being responsible. To prevent a loop, Lassie will give up if there have been more than 5 boot jobs issued within 15 minutes.
  final pulumi.Input<bool>? watchdogEnabled;

  /// Creates a new [InstanceState].
  /// [alerts] Configuration options for alert triggers on this Linode.
  /// [authorizedKeys] A list of SSH public keys to deploy for the root user on the newly created Linode. Only accepted if 'image' is provided.
  /// [authorizedUsers] A list of Linode usernames. If the usernames have associated SSH keys, the keys will be appended to the `root` user's `~/.ssh/authorized_keys` file automatically. Only accepted if 'image' is provided.
  /// [backupId] A Backup ID from another Linode's available backups. Your User must have read_write access to that Linode, the Backup must have a status of successful, and the Linode must be deployed to the same region as the Backup. See /linode/instances/{linodeId}/backups for a Linode's available backups. This field and the image field are mutually exclusive.
  /// [backups] Information about this Linode's backups status.
  /// [backupsEnabled] If this field is set to true, the created Linode will automatically be enrolled in the Linode Backup service. This will incur an additional charge. The cost for the Backup service is dependent on the Type of Linode deployed.
  /// [bootConfigLabel] The Label of the Instance Config that should be used to boot the Linode instance.
  /// [booted] If true, then the instance is kept or converted into in a running state. If false, the instance will be shutdown. If unspecified, the Linode's power status will not be managed by the Provider.
  /// [capabilities] A list of capabilities of this Linode instance.
  /// [configs] Configuration profiles define the VM settings and boot behavior of the Linode Instance.
  /// [diskEncryption] The disk encryption policy for this instance. (`enabled`, `disabled`; default `enabled` in supported regions)
  /// [disks] Optional.
  /// [firewallId] The ID of the Firewall to attach to the instance upon creation. *Changing `firewall_id` forces the creation of a new Linode Instance.*
  /// [group] A deprecated property denoting a group label for this Linode. We recommend using the `tags` attribute instead.
  /// [hasUserData] Whether this Instance was created with user-data.
  /// [hostUuid] The Linode’s host machine, as a UUID.
  /// [image] An Image ID to deploy the Disk from. Official Linode Images start with linode/, while your Images start with private/. See /images for more information on the Images available for you to use.
  /// [interfaceGeneration] Specifies the interface type for the Linode. If set to `linode`, Linode interfaces must be created using a separate resource before this Linode can be booted. (`linode`, `legacy_config`; default is determined by the account `interfaces_for_new_linodes` setting)
  /// [interfaces] An array of Network Interfaces for this Linode to be created with. If an explicit config or disk is defined, interfaces must be declared in the config block.
  /// [ipAddress] A string containing the Linode's public IP address.
  /// [ipv4s] A set of reserved IPv4 addresses to assign to this Linode on creation.
  /// [ipv6] This Linode's IPv6 SLAAC addresses. This address is specific to a Linode, and may not be shared.  The prefix (`/128`) is included in this attribute.
  /// [label] The Linode's label is for display purposes only. If no label is provided for a Linode, a default will be assigned.
  /// [lkeClusterId] If applicable, the ID of the LKE cluster this instance is a part of.
  /// [locks] A list of locks applied to this Linode.
  /// [maintenancePolicy] The maintenance policy of this Linode instance. Examples are `"linode/migrate"` and `"linode/power_off_on"`. Defaults to the default maintenance policy of the account. (**Note: v4beta only.**)
  /// [metadatas] Various fields related to the Linode Metadata service.
  /// [migrationType] The type of migration to use when updating the type or region of a Linode. (`cold`, `warm`; default `cold`)
  /// [networkHelper] Enables the Network Helper feature. The default value is determined by the network_helper setting in the account settings.
  /// [placementGroup] Information about the Placement Group this Linode is assigned to.
  /// [placementGroupExternallyManaged] If true, changes to the Linode's assigned Placement Group will be ignored. This is necessary when using this resource in conjunction with the linode.PlacementGroupAssignment resource.
  /// [privateIp] If true, the created Linode will have private networking enabled, allowing use of the 192.168.128.0/17 network within the Linode's region. It can be enabled on an existing Linode but it can't be disabled.
  /// [privateIpAddress] This Linode's Private IPv4 Address, if enabled.  The regional private IP address range, 192.168.128.0/17, is shared by all Linode Instances in a region.
  /// [region] This is the location where the Linode is deployed. Examples are `"us-east"`, `"us-west"`, `"ap-south"`, etc. See all regions [here](https://api.linode.com/v4/regions). *Changing `region` will trigger a migration of this Linode. Migration operations are typically long-running operations, so the update timeout should be adjusted accordingly.*.
  /// [resizeDisk] If true, changes in Linode type will attempt to upsize or downsize implicitly created disks. This must be false if explicit disks are defined. *This is an irreversible action as Linode disks cannot be automatically downsized.*
  /// [rootPass] The password that will be initially assigned to the 'root' user account.
  /// [sharedIpv4s] A set of IPv4 addresses to be shared with the Instance. These IP addresses can be both private and public, but must be in the same region as the instance.
  /// [specs] Information about the resources available to this Linode.
  /// [stackscriptData] An object containing responses to any User Defined Fields present in the StackScript being deployed to this Linode. Only accepted if 'stackscript_id' is given. The required values depend on the StackScript being deployed.
  /// [stackscriptId] The StackScript to deploy to the newly created Linode. If provided, 'image' must also be provided, and must be an Image that is compatible with this StackScript.
  /// [status] The status of the instance, indicating the current readiness state. (`running`, `offline`, ...)
  /// [swapSize] When deploying from an Image, this field is optional with a Linode API default of 512mb, otherwise it is ignored. This is used to set the swap disk size for the newly-created Linode.
  /// [tags] A list of tags applied to this object. Tags are case-insensitive and are for organizational purposes only.
  /// [type] The Linode type defines the pricing, CPU, disk, and RAM specs of the instance. Examples are `"g6-nanode-1"`, `"g6-standard-2"`, `"g6-highmem-16"`, `"g6-dedicated-16"`, etc. See all types [here](https://api.linode.com/v4/linode/types).
  /// [watchdogEnabled] The watchdog, named Lassie, is a Shutdown Watchdog that monitors your Linode and will reboot it if it powers off unexpectedly. It works by issuing a boot job when your Linode powers off without a shutdown job being responsible. To prevent a loop, Lassie will give up if there have been more than 5 boot jobs issued within 15 minutes.
  const InstanceState({
    this.alerts,
    this.authorizedKeys,
    this.authorizedUsers,
    this.backupId,
    this.backups,
    this.backupsEnabled,
    this.bootConfigLabel,
    this.booted,
    this.capabilities,
    this.configs,
    this.diskEncryption,
    this.disks,
    this.firewallId,
    this.group,
    this.hasUserData,
    this.hostUuid,
    this.image,
    this.interfaceGeneration,
    this.interfaces,
    this.ipAddress,
    this.ipv4s,
    this.ipv6,
    this.label,
    this.lkeClusterId,
    this.locks,
    this.maintenancePolicy,
    this.metadatas,
    this.migrationType,
    this.networkHelper,
    this.placementGroup,
    this.placementGroupExternallyManaged,
    this.privateIp,
    this.privateIpAddress,
    this.region,
    this.resizeDisk,
    this.rootPass,
    this.sharedIpv4s,
    this.specs,
    this.stackscriptData,
    this.stackscriptId,
    this.status,
    this.swapSize,
    this.tags,
    this.type,
    this.watchdogEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': ?pulumi.Input.mapOptionalInputValue<InstanceAlerts, Map<String, dynamic>>(alerts, (value) => value.toMap()),
      'authorizedKeys': ?authorizedKeys,
      'authorizedUsers': ?authorizedUsers,
      'backupId': ?backupId,
      'backups': ?pulumi.Input.mapOptionalInputValue<List<InstanceBackup>, List<Map<String, dynamic>>>(backups, (value) => pulumi.Input.encodeList<InstanceBackup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backupsEnabled': ?backupsEnabled,
      'bootConfigLabel': ?bootConfigLabel,
      'booted': ?booted,
      'capabilities': ?capabilities,
      'configs': ?pulumi.Input.mapOptionalInputValue<List<InstanceConfig>, List<Map<String, dynamic>>>(configs, (value) => pulumi.Input.encodeList<InstanceConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'diskEncryption': ?diskEncryption,
      'disks': ?pulumi.Input.mapOptionalInputValue<List<InstanceDisk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<InstanceDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firewallId': ?firewallId,
      'group': ?group,
      'hasUserData': ?hasUserData,
      'hostUuid': ?hostUuid,
      'image': ?image,
      'interfaceGeneration': ?interfaceGeneration,
      'interfaces': ?pulumi.Input.mapOptionalInputValue<List<InstanceInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<InstanceInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipAddress': ?ipAddress,
      'ipv4s': ?ipv4s,
      'ipv6': ?ipv6,
      'label': ?label,
      'lkeClusterId': ?lkeClusterId,
      'locks': ?locks,
      'maintenancePolicy': ?maintenancePolicy,
      'metadatas': ?pulumi.Input.mapOptionalInputValue<List<InstanceMetadata>, List<Map<String, dynamic>>>(metadatas, (value) => pulumi.Input.encodeList<InstanceMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'migrationType': ?migrationType,
      'networkHelper': ?networkHelper,
      'placementGroup': ?pulumi.Input.mapOptionalInputValue<InstancePlacementGroup, Map<String, dynamic>>(placementGroup, (value) => value.toMap()),
      'placementGroupExternallyManaged': ?placementGroupExternallyManaged,
      'privateIp': ?privateIp,
      'privateIpAddress': ?privateIpAddress,
      'region': ?region,
      'resizeDisk': ?resizeDisk,
      'rootPass': ?rootPass,
      'sharedIpv4s': ?sharedIpv4s,
      'specs': ?pulumi.Input.mapOptionalInputValue<List<InstanceSpec>, List<Map<String, dynamic>>>(specs, (value) => pulumi.Input.encodeList<InstanceSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stackscriptData': ?stackscriptData,
      'stackscriptId': ?stackscriptId,
      'status': ?status,
      'swapSize': ?swapSize,
      'tags': ?tags,
      'type': ?type,
      'watchdogEnabled': ?watchdogEnabled,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      alerts: (() { final guardedValue = map['alerts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceAlerts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authorizedKeys: (() { final guardedValue = map['authorizedKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      authorizedUsers: (() { final guardedValue = map['authorizedUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      backupId: (() { final guardedValue = map['backupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      backups: (() { final guardedValue = map['backups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceBackup>(guardedValue, (value) => InstanceBackup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      backupsEnabled: (() { final guardedValue = map['backupsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bootConfigLabel: (() { final guardedValue = map['bootConfigLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      booted: (() { final guardedValue = map['booted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      configs: (() { final guardedValue = map['configs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceConfig>(guardedValue, (value) => InstanceConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      diskEncryption: (() { final guardedValue = map['diskEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceDisk>(guardedValue, (value) => InstanceDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      firewallId: (() { final guardedValue = map['firewallId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hasUserData: (() { final guardedValue = map['hasUserData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostUuid: (() { final guardedValue = map['hostUuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interfaceGeneration: (() { final guardedValue = map['interfaceGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interfaces: (() { final guardedValue = map['interfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceInterface>(guardedValue, (value) => InstanceInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4s: (() { final guardedValue = map['ipv4s']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6: (() { final guardedValue = map['ipv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lkeClusterId: (() { final guardedValue = map['lkeClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      locks: (() { final guardedValue = map['locks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maintenancePolicy: (() { final guardedValue = map['maintenancePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadatas: (() { final guardedValue = map['metadatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceMetadata>(guardedValue, (value) => InstanceMetadata.fromMap((value as Map).cast<String, dynamic>()))); })(),
      migrationType: (() { final guardedValue = map['migrationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkHelper: (() { final guardedValue = map['networkHelper']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      placementGroup: (() { final guardedValue = map['placementGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePlacementGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      placementGroupExternallyManaged: (() { final guardedValue = map['placementGroupExternallyManaged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateIp: (() { final guardedValue = map['privateIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resizeDisk: (() { final guardedValue = map['resizeDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rootPass: (() { final guardedValue = map['rootPass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedIpv4s: (() { final guardedValue = map['sharedIpv4s']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      specs: (() { final guardedValue = map['specs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceSpec>(guardedValue, (value) => InstanceSpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stackscriptData: (() { final guardedValue = map['stackscriptData']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      stackscriptId: (() { final guardedValue = map['stackscriptId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      swapSize: (() { final guardedValue = map['swapSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      watchdogEnabled: (() { final guardedValue = map['watchdogEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

