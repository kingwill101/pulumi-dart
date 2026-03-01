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
    pulumi.Output<DropletBackupPolicy>? backupPolicy,
    pulumi.Output<bool>? backups,
    pulumi.Output<String>? createdAt,
    pulumi.Output<int>? disk,
    pulumi.Output<bool>? dropletAgent,
    pulumi.Output<String>? dropletUrn,
    pulumi.Output<bool>? gracefulShutdown,
    pulumi.Output<String>? image,
    pulumi.Output<String>? ipv4Address,
    pulumi.Output<String>? ipv4AddressPrivate,
    pulumi.Output<bool>? ipv6,
    pulumi.Output<String>? ipv6Address,
    pulumi.Output<bool>? locked,
    pulumi.Output<int>? memory,
    pulumi.Output<bool>? monitoring,
    pulumi.Output<String>? name,
    pulumi.Output<double>? priceHourly,
    pulumi.Output<double>? priceMonthly,
    pulumi.Output<bool>? privateNetworking,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? resizeDisk,
    pulumi.Output<String>? size,
    pulumi.Output<List<String>>? sshKeys,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? userData,
    pulumi.Output<int>? vcpus,
    pulumi.Output<List<String>>? volumeIds,
    pulumi.Output<String>? vpcUuid,
  }) :
      backupPolicy = pulumi.Input.asOptionalInput<DropletBackupPolicy>(backupPolicy),
      backups = pulumi.Input.asOptionalInput<bool>(backups),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      disk = pulumi.Input.asOptionalInput<int>(disk),
      dropletAgent = pulumi.Input.asOptionalInput<bool>(dropletAgent),
      dropletUrn = pulumi.Input.asOptionalInput<String>(dropletUrn),
      gracefulShutdown = pulumi.Input.asOptionalInput<bool>(gracefulShutdown),
      image = pulumi.Input.asOptionalInput<String>(image),
      ipv4Address = pulumi.Input.asOptionalInput<String>(ipv4Address),
      ipv4AddressPrivate = pulumi.Input.asOptionalInput<String>(ipv4AddressPrivate),
      ipv6 = pulumi.Input.asOptionalInput<bool>(ipv6),
      ipv6Address = pulumi.Input.asOptionalInput<String>(ipv6Address),
      locked = pulumi.Input.asOptionalInput<bool>(locked),
      memory = pulumi.Input.asOptionalInput<int>(memory),
      monitoring = pulumi.Input.asOptionalInput<bool>(monitoring),
      name = pulumi.Input.asOptionalInput<String>(name),
      priceHourly = pulumi.Input.asOptionalInput<double>(priceHourly),
      priceMonthly = pulumi.Input.asOptionalInput<double>(priceMonthly),
      privateNetworking = pulumi.Input.asOptionalInput<bool>(privateNetworking),
      region = pulumi.Input.asOptionalInput<String>(region),
      resizeDisk = pulumi.Input.asOptionalInput<bool>(resizeDisk),
      size = pulumi.Input.asOptionalInput<String>(size),
      sshKeys = pulumi.Input.asOptionalInput<List<String>>(sshKeys),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      vcpus = pulumi.Input.asOptionalInput<int>(vcpus),
      volumeIds = pulumi.Input.asOptionalInput<List<String>>(volumeIds),
      vpcUuid = pulumi.Input.asOptionalInput<String>(vpcUuid);

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
      backupPolicy: map['backupPolicy'] == null ? null : pulumi.Output.create<DropletBackupPolicy>(DropletBackupPolicy.fromMap((map['backupPolicy'] as Map).cast<String, dynamic>())),
      backups: map['backups'] == null ? null : pulumi.Output.create<bool>(map['backups'] as bool),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      disk: map['disk'] == null ? null : pulumi.Output.create<int>(map['disk'] as int),
      dropletAgent: map['dropletAgent'] == null ? null : pulumi.Output.create<bool>(map['dropletAgent'] as bool),
      dropletUrn: map['dropletUrn'] == null ? null : pulumi.Output.create<String>(map['dropletUrn'] as String),
      gracefulShutdown: map['gracefulShutdown'] == null ? null : pulumi.Output.create<bool>(map['gracefulShutdown'] as bool),
      image: map['image'] == null ? null : pulumi.Output.create<String>(map['image'] as String),
      ipv4Address: map['ipv4Address'] == null ? null : pulumi.Output.create<String>(map['ipv4Address'] as String),
      ipv4AddressPrivate: map['ipv4AddressPrivate'] == null ? null : pulumi.Output.create<String>(map['ipv4AddressPrivate'] as String),
      ipv6: map['ipv6'] == null ? null : pulumi.Output.create<bool>(map['ipv6'] as bool),
      ipv6Address: map['ipv6Address'] == null ? null : pulumi.Output.create<String>(map['ipv6Address'] as String),
      locked: map['locked'] == null ? null : pulumi.Output.create<bool>(map['locked'] as bool),
      memory: map['memory'] == null ? null : pulumi.Output.create<int>(map['memory'] as int),
      monitoring: map['monitoring'] == null ? null : pulumi.Output.create<bool>(map['monitoring'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      priceHourly: map['priceHourly'] == null ? null : pulumi.Output.create<double>(map['priceHourly'] as double),
      priceMonthly: map['priceMonthly'] == null ? null : pulumi.Output.create<double>(map['priceMonthly'] as double),
      privateNetworking: map['privateNetworking'] == null ? null : pulumi.Output.create<bool>(map['privateNetworking'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resizeDisk: map['resizeDisk'] == null ? null : pulumi.Output.create<bool>(map['resizeDisk'] as bool),
      size: map['size'] == null ? null : pulumi.Output.create<String>(map['size'] as String),
      sshKeys: map['sshKeys'] == null ? null : pulumi.Output.create<List<String>>((map['sshKeys'] as List).cast<String>()),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
      vcpus: map['vcpus'] == null ? null : pulumi.Output.create<int>(map['vcpus'] as int),
      volumeIds: map['volumeIds'] == null ? null : pulumi.Output.create<List<String>>((map['volumeIds'] as List).cast<String>()),
      vpcUuid: map['vpcUuid'] == null ? null : pulumi.Output.create<String>(map['vpcUuid'] as String),
    );
  }
}

