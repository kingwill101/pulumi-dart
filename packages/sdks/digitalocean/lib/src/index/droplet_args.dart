// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'droplet_backup_policy.dart';

/// {@template pulumi_index_droplet_droplet_args_doc}
/// The set of arguments for Droplet.
/// {@endtemplate}
/// {@macro pulumi_index_droplet_droplet_args_doc}
class DropletArgs {
  /// An object specifying the backup policy for the Droplet. If omitted and `backups` is `true`, the backup plan will default to daily.
  final pulumi.Input<DropletBackupPolicy>? backupPolicy;

  /// Boolean controlling if backups are made. Defaults to
  /// false.
  final pulumi.Input<bool>? backups;

  /// A boolean indicating whether to install the
  /// DigitalOcean agent used for providing access to the Droplet web console in
  /// the control panel. By default, the agent is installed on new Droplets but
  /// installation errors (i.e. OS not supported) are ignored. To prevent it from
  /// being installed, set to `false`. To make installation errors fatal, explicitly
  /// set it to `true`.
  final pulumi.Input<bool>? dropletAgent;

  /// A boolean indicating whether the droplet
  /// should be gracefully shut down before it is deleted.
  ///
  /// &gt; **NOTE:** If you use `volume_ids` on a Droplet, Terraform will assume management over the full set volumes for the instance, and treat additional volumes as a drift. For this reason, `volume_ids` must not be mixed with external `digitalocean.VolumeAttachment` resources for a given instance.
  final pulumi.Input<bool>? gracefulShutdown;

  /// The Droplet image ID or slug. This could be either image ID or droplet snapshot ID. You can find image IDs and slugs using the [DigitalOcean API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Images).
  final pulumi.Input<String> image;

  /// Boolean controlling if IPv6 is enabled. Defaults to false.
  /// Once enabled for a Droplet, IPv6 can not be disabled. When enabling IPv6 on
  /// an existing Droplet, [additional OS-level configuration](https://docs.digitalocean.com/products/networking/ipv6/how-to/enable/#on-existing-droplets)
  /// is required.
  final pulumi.Input<bool>? ipv6;

  /// The IPv6 address
  final pulumi.Input<String>? ipv6Address;

  /// Boolean controlling whether monitoring agent is installed.
  /// Defaults to false. If set to `true`, you can configure monitor alert policies
  /// [monitor alert resource](https://www.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/monitor_alert)
  final pulumi.Input<bool>? monitoring;

  /// The Droplet name.
  final pulumi.Input<String>? name;

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
  final pulumi.Input<String> size;

  /// A list of SSH key IDs or fingerprints to enable in
  /// the format `[12345, 123456]`. To retrieve this info, use the
  /// [DigitalOcean API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/SSH-Keys)
  /// or CLI (`doctl compute ssh-key list`). Once a Droplet is created keys can not
  /// be added or removed via this provider. Modifying this field will prompt you
  /// to destroy and recreate the Droplet.
  final pulumi.Input<List<String>>? sshKeys;

  /// A list of the tags to be applied to this Droplet.
  final pulumi.Input<List<String>>? tags;

  /// A string of the desired User Data provided [during Droplet creation](https://docs.digitalocean.com/products/droplets/how-to/provide-user-data/). Changing this forces a new resource to be created.
  final pulumi.Input<String>? userData;

  /// A list of the IDs of each [block storage volume](https://www.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/volume) to be attached to the Droplet.
  final pulumi.Input<List<String>>? volumeIds;

  /// The ID of the VPC where the Droplet will be located.
  final pulumi.Input<String>? vpcUuid;

  /// Creates a new [DropletArgs].
  /// [backupPolicy] An object specifying the backup policy for the Droplet. If omitted and `backups` is `true`, the backup plan will default to daily.
  /// [backups] Boolean controlling if backups are made. Defaults to
  /// [dropletAgent] A boolean indicating whether to install the
  /// [gracefulShutdown] A boolean indicating whether the droplet
  /// [image] The Droplet image ID or slug. This could be either image ID or droplet snapshot ID. You can find image IDs and slugs using the [DigitalOcean API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Images).
  /// [ipv6] Boolean controlling if IPv6 is enabled. Defaults to false.
  /// [ipv6Address] The IPv6 address
  /// [monitoring] Boolean controlling whether monitoring agent is installed.
  /// [name] The Droplet name.
  /// [privateNetworking] **Deprecated** Boolean controlling if private networking
  /// [region] The region where the Droplet will be created.
  /// [resizeDisk] Boolean controlling whether to increase the disk
  /// [size] The unique slug that identifies the type of Droplet. You may list the available slugs using the [DigitalOcean API](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Sizes).
  /// [sshKeys] A list of SSH key IDs or fingerprints to enable in
  /// [tags] A list of the tags to be applied to this Droplet.
  /// [userData] A string of the desired User Data provided [during Droplet creation](https://docs.digitalocean.com/products/droplets/how-to/provide-user-data/). Changing this forces a new resource to be created.
  /// [volumeIds] A list of the IDs of each [block storage volume](https://www.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/volume) to be attached to the Droplet.
  /// [vpcUuid] The ID of the VPC where the Droplet will be located.
  DropletArgs({
    this.backupPolicy,
    this.backups,
    this.dropletAgent,
    this.gracefulShutdown,
    required this.image,
    this.ipv6,
    this.ipv6Address,
    this.monitoring,
    this.name,
    this.privateNetworking,
    this.region,
    this.resizeDisk,
    required this.size,
    this.sshKeys,
    this.tags,
    this.userData,
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
      'dropletAgent': ?dropletAgent,
      'gracefulShutdown': ?gracefulShutdown,
      'image': image,
      'ipv6': ?ipv6,
      'ipv6Address': ?ipv6Address,
      'monitoring': ?monitoring,
      'name': ?name,
      'privateNetworking': ?privateNetworking,
      'region': ?region,
      'resizeDisk': ?resizeDisk,
      'size': size,
      'sshKeys': ?sshKeys,
      'tags': ?tags,
      'userData': ?userData,
      'volumeIds': ?volumeIds,
      'vpcUuid': ?vpcUuid,
    };
  }

  factory DropletArgs.fromMap(Map<String, dynamic> map) {
    return DropletArgs(
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
      dropletAgent: (() {
        final guardedValue = map['dropletAgent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      gracefulShutdown: (() {
        final guardedValue = map['gracefulShutdown'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      image: pulumi.Input.fromValue(map['image'] as String),
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
      size: pulumi.Input.fromValue(map['size'] as String),
      sshKeys: (() {
        final guardedValue = map['sshKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
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
