// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'droplet_backup_policy.dart';

/// Input properties used for looking up and filtering Droplet resources.
class DropletState {
  /// An object specifying the backup policy for the Droplet. If omitted and `backups` is `true`, the backup plan will default to daily.
  final pulumi.Input<DropletBackupPolicy>? backupPolicy;
  /// Boolean controlling if backups are made. Defaults to
  /// false.
  final pulumi.Input<bool>? backups;
  final pulumi.Input<String>? createdAt;
  /// The size of the instance's disk in GB
  final pulumi.Input<int>? disk;
  /// A boolean indicating whether to install the
  /// DigitalOcean agent used for providing access to the Droplet web console in
  /// the control panel. By default, the agent is installed on new Droplets but
  /// installation errors (i.e. OS not supported) are ignored. To prevent it from
  /// being installed, set to `false`. To make installation errors fatal, explicitly
  /// set it to `true`.
  final pulumi.Input<bool>? dropletAgent;
  /// The uniform resource name of the Droplet
  final pulumi.Input<String>? dropletUrn;
  /// A boolean indicating whether the droplet
  /// should be gracefully shut down before it is deleted.
  ///
  /// > **NOTE:** If you use `volume_ids` on a Droplet, Terraform will assume management over the full set volumes for the instance, and treat additional volumes as a drift. For this reason, `volume_ids` must not be mixed with external `digitalocean.VolumeAttachment` resources for a given instance.
  final pulumi.Input<bool>? gracefulShutdown;
  /// The Droplet image ID or slug. This could be either image ID or droplet snapshot ID. You can find image IDs and slugs using the [DigitalOcean API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Images).
  final pulumi.Input<String>? image;
  /// The IPv4 address
  final pulumi.Input<String>? ipv4Address;
  /// The private networking IPv4 address
  final pulumi.Input<String>? ipv4AddressPrivate;
  /// Boolean controlling if IPv6 is enabled. Defaults to false.
  /// Once enabled for a Droplet, IPv6 can not be disabled. When enabling IPv6 on
  /// an existing Droplet, [additional OS-level configuration](https://docs.digitalocean.com/products/networking/ipv6/how-to/enable/#on-existing-droplets)
  /// is required.
  final pulumi.Input<bool>? ipv6;
  /// The IPv6 address
  final pulumi.Input<String>? ipv6Address;
  /// Is the Droplet locked
  final pulumi.Input<bool>? locked;
  final pulumi.Input<int>? memory;
  /// Boolean controlling whether monitoring agent is installed.
  /// Defaults to false. If set to `true`, you can configure monitor alert policies
  /// [monitor alert resource](https://www.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/monitor_alert)
  final pulumi.Input<bool>? monitoring;
  /// The Droplet name.
  final pulumi.Input<String>? name;
  /// Droplet hourly price
  final pulumi.Input<double>? priceHourly;
  /// Droplet monthly price
  final pulumi.Input<double>? priceMonthly;
  /// **Deprecated** Boolean controlling if private networking
  /// is enabled. This parameter has been deprecated. Use `vpc_uuid` instead to specify a VPC network for the Droplet. If no `vpc_uuid` is provided, the Droplet will be placed in your account's default VPC for the region.
  final pulumi.Input<bool>? privateNetworking;
  /// The region where the Droplet will be created.
  final pulumi.Input<String>? region;
  /// Boolean controlling whether to increase the disk
  /// size when resizing a Droplet. It defaults to `true`. When set to `false`,
  /// only the Droplet's RAM and CPU will be resized. **Increasing a Droplet's disk
  /// size is a permanent change**. Increasing only RAM and CPU is reversible.
  final pulumi.Input<bool>? resizeDisk;
  /// The unique slug that identifies the type of Droplet. You may list the available slugs using the [DigitalOcean API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Sizes).
  final pulumi.Input<String>? size;
  /// A list of SSH key IDs or fingerprints to enable in
  /// the format `[12345, 123456]`. To retrieve this info, use the
  /// [DigitalOcean API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/SSH-Keys)
  /// or CLI (`doctl compute ssh-key list`). Once a Droplet is created keys can not
  /// be added or removed via this provider. Modifying this field will prompt you
  /// to destroy and recreate the Droplet.
  final pulumi.Input<List<String>>? sshKeys;
  /// The status of the Droplet
  final pulumi.Input<String>? status;
  /// A list of the tags to be applied to this Droplet.
  final pulumi.Input<List<String>>? tags;
  /// A string of the desired User Data provided [during Droplet creation](https://docs.digitalocean.com/products/droplets/how-to/provide-user-data/). Changing this forces a new resource to be created.
  final pulumi.Input<String>? userData;
  /// The number of the instance's virtual CPUs
  final pulumi.Input<int>? vcpus;
  /// A list of the IDs of each [block storage volume](https://www.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/volume) to be attached to the Droplet.
  final pulumi.Input<List<String>>? volumeIds;
  /// The ID of the VPC where the Droplet will be located.
  final pulumi.Input<String>? vpcUuid;

  /// Creates a new [DropletState].
  /// [backupPolicy] An object specifying the backup policy for the Droplet. If omitted and `backups` is `true`, the backup plan will default to daily.
  /// [backups] Boolean controlling if backups are made. Defaults to
  /// [createdAt] Optional.
  /// [disk] The size of the instance's disk in GB
  /// [dropletAgent] A boolean indicating whether to install the
  /// [dropletUrn] The uniform resource name of the Droplet
  /// [gracefulShutdown] A boolean indicating whether the droplet
  /// [image] The Droplet image ID or slug. This could be either image ID or droplet snapshot ID. You can find image IDs and slugs using the [DigitalOcean API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Images).
  /// [ipv4Address] The IPv4 address
  /// [ipv4AddressPrivate] The private networking IPv4 address
  /// [ipv6] Boolean controlling if IPv6 is enabled. Defaults to false.
  /// [ipv6Address] The IPv6 address
  /// [locked] Is the Droplet locked
  /// [memory] Optional.
  /// [monitoring] Boolean controlling whether monitoring agent is installed.
  /// [name] The Droplet name.
  /// [priceHourly] Droplet hourly price
  /// [priceMonthly] Droplet monthly price
  /// [privateNetworking] **Deprecated** Boolean controlling if private networking
  /// [region] The region where the Droplet will be created.
  /// [resizeDisk] Boolean controlling whether to increase the disk
  /// [size] The unique slug that identifies the type of Droplet. You may list the available slugs using the [DigitalOcean API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Sizes).
  /// [sshKeys] A list of SSH key IDs or fingerprints to enable in
  /// [status] The status of the Droplet
  /// [tags] A list of the tags to be applied to this Droplet.
  /// [userData] A string of the desired User Data provided [during Droplet creation](https://docs.digitalocean.com/products/droplets/how-to/provide-user-data/). Changing this forces a new resource to be created.
  /// [vcpus] The number of the instance's virtual CPUs
  /// [volumeIds] A list of the IDs of each [block storage volume](https://www.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/volume) to be attached to the Droplet.
  /// [vpcUuid] The ID of the VPC where the Droplet will be located.
  DropletState({
    this.backupPolicy,
    this.backups,
    this.createdAt,
    this.disk,
    this.dropletAgent,
    this.dropletUrn,
    this.gracefulShutdown,
    this.image,
    this.ipv4Address,
    this.ipv4AddressPrivate,
    this.ipv6,
    this.ipv6Address,
    this.locked,
    this.memory,
    this.monitoring,
    this.name,
    this.priceHourly,
    this.priceMonthly,
    this.privateNetworking,
    this.region,
    this.resizeDisk,
    this.size,
    this.sshKeys,
    this.status,
    this.tags,
    this.userData,
    this.vcpus,
    this.volumeIds,
    this.vpcUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicy': ?pulumi.Input.mapOptionalInputValue<DropletBackupPolicy, Map<String, dynamic>>(backupPolicy, (value) => value.toMap()),
      'backups': ?backups,
      'createdAt': ?createdAt,
      'disk': ?disk,
      'dropletAgent': ?dropletAgent,
      'dropletUrn': ?dropletUrn,
      'gracefulShutdown': ?gracefulShutdown,
      'image': ?image,
      'ipv4Address': ?ipv4Address,
      'ipv4AddressPrivate': ?ipv4AddressPrivate,
      'ipv6': ?ipv6,
      'ipv6Address': ?ipv6Address,
      'locked': ?locked,
      'memory': ?memory,
      'monitoring': ?monitoring,
      'name': ?name,
      'priceHourly': ?priceHourly,
      'priceMonthly': ?priceMonthly,
      'privateNetworking': ?privateNetworking,
      'region': ?region,
      'resizeDisk': ?resizeDisk,
      'size': ?size,
      'sshKeys': ?sshKeys,
      'status': ?status,
      'tags': ?tags,
      'userData': ?userData,
      'vcpus': ?vcpus,
      'volumeIds': ?volumeIds,
      'vpcUuid': ?vpcUuid,
    };
  }

  factory DropletState.fromMap(Map<String, dynamic> map) {
    return DropletState(
      backupPolicy: map['backupPolicy'] == null ? null : (DropletBackupPolicy.fromMap((map['backupPolicy']! as Map).cast<String, dynamic>())).input(),
      backups: map['backups'] == null ? null : (map['backups']! as bool).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      disk: map['disk'] == null ? null : (map['disk']! as int).input(),
      dropletAgent: map['dropletAgent'] == null ? null : (map['dropletAgent']! as bool).input(),
      dropletUrn: map['dropletUrn'] == null ? null : (map['dropletUrn']! as String).input(),
      gracefulShutdown: map['gracefulShutdown'] == null ? null : (map['gracefulShutdown']! as bool).input(),
      image: map['image'] == null ? null : (map['image']! as String).input(),
      ipv4Address: map['ipv4Address'] == null ? null : (map['ipv4Address']! as String).input(),
      ipv4AddressPrivate: map['ipv4AddressPrivate'] == null ? null : (map['ipv4AddressPrivate']! as String).input(),
      ipv6: map['ipv6'] == null ? null : (map['ipv6']! as bool).input(),
      ipv6Address: map['ipv6Address'] == null ? null : (map['ipv6Address']! as String).input(),
      locked: map['locked'] == null ? null : (map['locked']! as bool).input(),
      memory: map['memory'] == null ? null : (map['memory']! as int).input(),
      monitoring: map['monitoring'] == null ? null : (map['monitoring']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      priceHourly: map['priceHourly'] == null ? null : (map['priceHourly']! as double).input(),
      priceMonthly: map['priceMonthly'] == null ? null : (map['priceMonthly']! as double).input(),
      privateNetworking: map['privateNetworking'] == null ? null : (map['privateNetworking']! as bool).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      resizeDisk: map['resizeDisk'] == null ? null : (map['resizeDisk']! as bool).input(),
      size: map['size'] == null ? null : (map['size']! as String).input(),
      sshKeys: map['sshKeys'] == null ? null : ((map['sshKeys']! as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      userData: map['userData'] == null ? null : (map['userData']! as String).input(),
      vcpus: map['vcpus'] == null ? null : (map['vcpus']! as int).input(),
      volumeIds: map['volumeIds'] == null ? null : ((map['volumeIds']! as List).cast<String>()).input(),
      vpcUuid: map['vpcUuid'] == null ? null : (map['vpcUuid']! as String).input(),
    );
  }
}

