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
  /// &gt; **NOTE:** If you use `volume_ids` on a Droplet, Terraform will assume management over the full set volumes for the instance, and treat additional volumes as a drift. For this reason, `volume_ids` must not be mixed with external `digitalocean.VolumeAttachment` resources for a given instance.
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
      'backupPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            DropletBackupPolicy,
            Map<String, dynamic>
          >(backupPolicy, (value) => value.toMap()),
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
      backupPolicy: (() {
        final guardedValue = map['backupPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DropletBackupPolicy.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      backups: (() {
        final guardedValue = map['backups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      createdAt: (() {
        final guardedValue = map['createdAt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disk: (() {
        final guardedValue = map['disk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dropletAgent: (() {
        final guardedValue = map['dropletAgent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      dropletUrn: (() {
        final guardedValue = map['dropletUrn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gracefulShutdown: (() {
        final guardedValue = map['gracefulShutdown'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      image: (() {
        final guardedValue = map['image'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv4Address: (() {
        final guardedValue = map['ipv4Address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv4AddressPrivate: (() {
        final guardedValue = map['ipv4AddressPrivate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipv6: (() {
        final guardedValue = map['ipv6'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ipv6Address: (() {
        final guardedValue = map['ipv6Address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      locked: (() {
        final guardedValue = map['locked'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      memory: (() {
        final guardedValue = map['memory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      monitoring: (() {
        final guardedValue = map['monitoring'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priceHourly: (() {
        final guardedValue = map['priceHourly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      priceMonthly: (() {
        final guardedValue = map['priceMonthly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      privateNetworking: (() {
        final guardedValue = map['privateNetworking'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resizeDisk: (() {
        final guardedValue = map['resizeDisk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      size: (() {
        final guardedValue = map['size'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sshKeys: (() {
        final guardedValue = map['sshKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      userData: (() {
        final guardedValue = map['userData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vcpus: (() {
        final guardedValue = map['vcpus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      volumeIds: (() {
        final guardedValue = map['volumeIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      vpcUuid: (() {
        final guardedValue = map['vpcUuid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
