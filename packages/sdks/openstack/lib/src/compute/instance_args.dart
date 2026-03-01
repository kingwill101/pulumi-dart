// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_block_device.dart';
import 'instance_network.dart';
import 'instance_personality.dart';
import 'instance_scheduler_hint.dart';
import 'instance_vendor_options.dart';

/// {@template pulumi_compute_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_compute_instance_instance_args_doc}
class InstanceArgs {
  /// The administrative password to assign to the server.
  /// Changing this changes the root password on the existing server.
  final pulumi.Input<String>? adminPass;
  /// The availability zone in which to create
  /// the server. Conflicts with `availability_zone_hints`. Changing this creates
  /// a new server.
  final pulumi.Input<String>? availabilityZone;
  /// The availability zone in which to
  /// create the server. This argument is preferred to `availability_zone`, when
  /// scheduling the server on a
  /// [particular](https://docs.openstack.org/nova/latest/admin/availability-zones.html)
  /// host or node. Conflicts with `availability_zone`. Changing this creates a
  /// new server.
  final pulumi.Input<String>? availabilityZoneHints;
  /// Configuration of block devices. The block_device
  /// structure is documented below. Changing this creates a new server.
  /// You can specify multiple block devices which will create an instance with
  /// multiple disks. This configuration is very flexible, so please see the
  /// following [reference](https://docs.openstack.org/nova/latest/user/block-device-mapping.html)
  /// for more information.
  final pulumi.Input<List<InstanceBlockDevice>>? blockDevices;
  /// Whether to use the config_drive feature to
  /// configure the instance. Changing this creates a new server.
  final pulumi.Input<bool>? configDrive;
  /// The flavor ID of
  /// the desired flavor for the server. Changing this resizes the existing server.
  final pulumi.Input<String>? flavorId;
  /// The name of the
  /// desired flavor for the server. Changing this resizes the existing server.
  final pulumi.Input<String>? flavorName;
  /// Whether to force the OpenStack instance to be
  /// forcefully deleted. This is useful for environments that have reclaim / soft
  /// deletion enabled.
  final pulumi.Input<bool>? forceDelete;
  /// Specifies the exact hypervisor hostname on
  /// which to create the instance. When provided, this parameter is included in
  /// the request to Nova, directing the scheduler to launch the instance on the
  /// specified host. Note: This option requires administrative privileges and a
  /// Nova microversion of 2.74 or later. Conflicts with `personality`. Changing
  /// this value forces a new instance to be created.
  final pulumi.Input<String>? hypervisorHostname;
  /// (Optional; Required if `image_name` is empty and not booting
  /// from a volume. Do not specify if booting from a volume.) The image ID of
  /// the desired image for the server. Changing this rebuilds the existing
  /// server.
  final pulumi.Input<String>? imageId;
  /// (Optional; Required if `image_id` is empty and not booting
  /// from a volume. Do not specify if booting from a volume.) The name of the
  /// desired image for the server. Changing this rebuilds the existing server.
  final pulumi.Input<String>? imageName;
  /// The name of a key pair to put on the server. The key
  /// pair must already be created and associated with the tenant's account.
  /// Changing this creates a new server.
  final pulumi.Input<String>? keyPair;
  /// Metadata key/value pairs to make available from
  /// within the instance. Changing this updates the existing server metadata.
  final pulumi.Input<Map<String, String>>? metadata;
  /// A unique name for the resource.
  final pulumi.Input<String>? name;
  /// Special string for `network` option to create
  /// the server. `network_mode` can be `"auto"` or `"none"`.
  /// Please see the following [reference](https://docs.openstack.org/api-ref/compute/?expanded=create-server-detail#id11) for more information. Conflicts with `network`.
  final pulumi.Input<String>? networkMode;
  /// An array of one or more networks to attach to the
  /// instance. The network object structure is documented below. Changing this
  /// creates a new server.
  final pulumi.Input<List<InstanceNetwork>>? networks;
  /// Customize the personality of an instance by
  /// defining one or more files and their contents. The personality structure is
  /// described below. Conflicts with `hypervisor_hostname`. Changing this rebuilds
  /// the existing server.
  final pulumi.Input<List<InstancePersonality>>? personalities;
  /// Provide the VM state. Only 'active', 'shutoff', 'paused'
  /// and 'shelved_offloaded' are supported values.
  /// *Note*: If the initial power_state is the shutoff or paused
  /// the VM will be stopped immediately after build and the provisioners like
  /// remote-exec or files are not supported.
  final pulumi.Input<String>? powerState;
  /// The region in which to create the server instance. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new server.
  final pulumi.Input<String>? region;
  /// Provide the Nova scheduler with hints on how
  /// the instance should be launched. The available hints are described below.
  final pulumi.Input<List<InstanceSchedulerHint>>? schedulerHints;
  /// An array of one or more security group names
  /// to associate with the server. Changing this results in adding/removing
  /// security groups from the existing server. *Note*: When attaching the
  /// instance to networks using Ports, place the security groups on the Port
  /// and not the instance. *Note*: Names should be used and not ids, as ids
  /// trigger unnecessary updates.
  final pulumi.Input<List<String>>? securityGroups;
  /// Whether to try stop instance gracefully
  /// before destroying it, thus giving chance for guest OS daemons to stop correctly.
  /// If instance doesn't stop within timeout, it will be destroyed anyway.
  final pulumi.Input<bool>? stopBeforeDestroy;
  /// A set of string tags for the instance. Changing this
  /// updates the existing instance tags.
  final pulumi.Input<List<String>>? tags;
  /// The user data to provide when launching the instance.
  /// Changing this creates a new server.
  final pulumi.Input<String>? userData;
  /// Map of additional vendor-specific options.
  /// Supported options are described below.
  final pulumi.Input<InstanceVendorOptions>? vendorOptions;

  /// Creates a new [InstanceArgs].
  /// [adminPass] The administrative password to assign to the server.
  /// [availabilityZone] The availability zone in which to create
  /// [availabilityZoneHints] The availability zone in which to
  /// [blockDevices] Configuration of block devices. The block_device
  /// [configDrive] Whether to use the config_drive feature to
  /// [flavorId] The flavor ID of
  /// [flavorName] The name of the
  /// [forceDelete] Whether to force the OpenStack instance to be
  /// [hypervisorHostname] Specifies the exact hypervisor hostname on
  /// [imageId] (Optional; Required if `image_name` is empty and not booting
  /// [imageName] (Optional; Required if `image_id` is empty and not booting
  /// [keyPair] The name of a key pair to put on the server. The key
  /// [metadata] Metadata key/value pairs to make available from
  /// [name] A unique name for the resource.
  /// [networkMode] Special string for `network` option to create
  /// [networks] An array of one or more networks to attach to the
  /// [personalities] Customize the personality of an instance by
  /// [powerState] Provide the VM state. Only 'active', 'shutoff', 'paused'
  /// [region] The region in which to create the server instance. If
  /// [schedulerHints] Provide the Nova scheduler with hints on how
  /// [securityGroups] An array of one or more security group names
  /// [stopBeforeDestroy] Whether to try stop instance gracefully
  /// [tags] A set of string tags for the instance. Changing this
  /// [userData] The user data to provide when launching the instance.
  /// [vendorOptions] Map of additional vendor-specific options.
  InstanceArgs({
    pulumi.Output<String>? adminPass,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? availabilityZoneHints,
    pulumi.Output<List<InstanceBlockDevice>>? blockDevices,
    pulumi.Output<bool>? configDrive,
    pulumi.Output<String>? flavorId,
    pulumi.Output<String>? flavorName,
    pulumi.Output<bool>? forceDelete,
    pulumi.Output<String>? hypervisorHostname,
    pulumi.Output<String>? imageId,
    pulumi.Output<String>? imageName,
    pulumi.Output<String>? keyPair,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkMode,
    pulumi.Output<List<InstanceNetwork>>? networks,
    pulumi.Output<List<InstancePersonality>>? personalities,
    pulumi.Output<String>? powerState,
    pulumi.Output<String>? region,
    pulumi.Output<List<InstanceSchedulerHint>>? schedulerHints,
    pulumi.Output<List<String>>? securityGroups,
    pulumi.Output<bool>? stopBeforeDestroy,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<String>? userData,
    pulumi.Output<InstanceVendorOptions>? vendorOptions,
  }) :
      adminPass = pulumi.Input.asOptionalInput<String>(adminPass),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      availabilityZoneHints = pulumi.Input.asOptionalInput<String>(availabilityZoneHints),
      blockDevices = pulumi.Input.asOptionalInput<List<InstanceBlockDevice>>(blockDevices),
      configDrive = pulumi.Input.asOptionalInput<bool>(configDrive),
      flavorId = pulumi.Input.asOptionalInput<String>(flavorId),
      flavorName = pulumi.Input.asOptionalInput<String>(flavorName),
      forceDelete = pulumi.Input.asOptionalInput<bool>(forceDelete),
      hypervisorHostname = pulumi.Input.asOptionalInput<String>(hypervisorHostname),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      imageName = pulumi.Input.asOptionalInput<String>(imageName),
      keyPair = pulumi.Input.asOptionalInput<String>(keyPair),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkMode = pulumi.Input.asOptionalInput<String>(networkMode),
      networks = pulumi.Input.asOptionalInput<List<InstanceNetwork>>(networks),
      personalities = pulumi.Input.asOptionalInput<List<InstancePersonality>>(personalities),
      powerState = pulumi.Input.asOptionalInput<String>(powerState),
      region = pulumi.Input.asOptionalInput<String>(region),
      schedulerHints = pulumi.Input.asOptionalInput<List<InstanceSchedulerHint>>(schedulerHints),
      securityGroups = pulumi.Input.asOptionalInput<List<String>>(securityGroups),
      stopBeforeDestroy = pulumi.Input.asOptionalInput<bool>(stopBeforeDestroy),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      vendorOptions = pulumi.Input.asOptionalInput<InstanceVendorOptions>(vendorOptions);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPass': ?adminPass,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneHints': ?availabilityZoneHints,
      'blockDevices': ?pulumi.Input.mapOptionalInputValue<List<InstanceBlockDevice>, List<Map<String, dynamic>>>(blockDevices, (value) => pulumi.Input.encodeList<InstanceBlockDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configDrive': ?configDrive,
      'flavorId': ?flavorId,
      'flavorName': ?flavorName,
      'forceDelete': ?forceDelete,
      'hypervisorHostname': ?hypervisorHostname,
      'imageId': ?imageId,
      'imageName': ?imageName,
      'keyPair': ?keyPair,
      'metadata': ?metadata,
      'name': ?name,
      'networkMode': ?networkMode,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<InstanceNetwork>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<InstanceNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'personalities': ?pulumi.Input.mapOptionalInputValue<List<InstancePersonality>, List<Map<String, dynamic>>>(personalities, (value) => pulumi.Input.encodeList<InstancePersonality, Map<String, dynamic>>(value, (value) => value.toMap())),
      'powerState': ?powerState,
      'region': ?region,
      'schedulerHints': ?pulumi.Input.mapOptionalInputValue<List<InstanceSchedulerHint>, List<Map<String, dynamic>>>(schedulerHints, (value) => pulumi.Input.encodeList<InstanceSchedulerHint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'securityGroups': ?securityGroups,
      'stopBeforeDestroy': ?stopBeforeDestroy,
      'tags': ?tags,
      'userData': ?userData,
      'vendorOptions': ?pulumi.Input.mapOptionalInputValue<InstanceVendorOptions, Map<String, dynamic>>(vendorOptions, (value) => value.toMap()),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      adminPass: map['adminPass'] == null ? null : pulumi.Output.create<String>(map['adminPass'] as String),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      availabilityZoneHints: map['availabilityZoneHints'] == null ? null : pulumi.Output.create<String>(map['availabilityZoneHints'] as String),
      blockDevices: map['blockDevices'] == null ? null : pulumi.Output.create<List<InstanceBlockDevice>>(pulumi.Input.decodeList<InstanceBlockDevice>(map['blockDevices'], (value) => InstanceBlockDevice.fromMap((value as Map).cast<String, dynamic>()))),
      configDrive: map['configDrive'] == null ? null : pulumi.Output.create<bool>(map['configDrive'] as bool),
      flavorId: map['flavorId'] == null ? null : pulumi.Output.create<String>(map['flavorId'] as String),
      flavorName: map['flavorName'] == null ? null : pulumi.Output.create<String>(map['flavorName'] as String),
      forceDelete: map['forceDelete'] == null ? null : pulumi.Output.create<bool>(map['forceDelete'] as bool),
      hypervisorHostname: map['hypervisorHostname'] == null ? null : pulumi.Output.create<String>(map['hypervisorHostname'] as String),
      imageId: map['imageId'] == null ? null : pulumi.Output.create<String>(map['imageId'] as String),
      imageName: map['imageName'] == null ? null : pulumi.Output.create<String>(map['imageName'] as String),
      keyPair: map['keyPair'] == null ? null : pulumi.Output.create<String>(map['keyPair'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkMode: map['networkMode'] == null ? null : pulumi.Output.create<String>(map['networkMode'] as String),
      networks: map['networks'] == null ? null : pulumi.Output.create<List<InstanceNetwork>>(pulumi.Input.decodeList<InstanceNetwork>(map['networks'], (value) => InstanceNetwork.fromMap((value as Map).cast<String, dynamic>()))),
      personalities: map['personalities'] == null ? null : pulumi.Output.create<List<InstancePersonality>>(pulumi.Input.decodeList<InstancePersonality>(map['personalities'], (value) => InstancePersonality.fromMap((value as Map).cast<String, dynamic>()))),
      powerState: map['powerState'] == null ? null : pulumi.Output.create<String>(map['powerState'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      schedulerHints: map['schedulerHints'] == null ? null : pulumi.Output.create<List<InstanceSchedulerHint>>(pulumi.Input.decodeList<InstanceSchedulerHint>(map['schedulerHints'], (value) => InstanceSchedulerHint.fromMap((value as Map).cast<String, dynamic>()))),
      securityGroups: map['securityGroups'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroups'] as List).cast<String>()),
      stopBeforeDestroy: map['stopBeforeDestroy'] == null ? null : pulumi.Output.create<bool>(map['stopBeforeDestroy'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
      vendorOptions: map['vendorOptions'] == null ? null : pulumi.Output.create<InstanceVendorOptions>(InstanceVendorOptions.fromMap((map['vendorOptions'] as Map).cast<String, dynamic>())),
    );
  }
}

