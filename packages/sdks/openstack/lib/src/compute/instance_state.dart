// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_block_device.dart';
import 'instance_network.dart';
import 'instance_personality.dart';
import 'instance_scheduler_hint.dart';
import 'instance_vendor_options.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// The first detected Fixed IPv4 address.
  final pulumi.Input<String>? accessIpV4;

  /// The first detected Fixed IPv6 address.
  final pulumi.Input<String>? accessIpV6;

  /// The administrative password to assign to the server.
  /// Changing this changes the root password on the existing server.
  final pulumi.Input<String>? adminPass;
  final pulumi.Input<Map<String, String>>? allMetadata;

  /// The collection of tags assigned on the instance, which have
  /// been explicitly and implicitly added.
  final pulumi.Input<List<String>>? allTags;

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

  /// The creation time of the instance.
  final pulumi.Input<String>? created;

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

  /// The time when the instance was last updated.
  final pulumi.Input<String>? updated;

  /// The user data to provide when launching the instance.
  /// Changing this creates a new server.
  final pulumi.Input<String>? userData;

  /// Map of additional vendor-specific options.
  /// Supported options are described below.
  final pulumi.Input<InstanceVendorOptions>? vendorOptions;

  /// Creates a new [InstanceState].
  /// [accessIpV4] The first detected Fixed IPv4 address.
  /// [accessIpV6] The first detected Fixed IPv6 address.
  /// [adminPass] The administrative password to assign to the server.
  /// [allMetadata] Optional.
  /// [allTags] The collection of tags assigned on the instance, which have
  /// [availabilityZone] The availability zone in which to create
  /// [availabilityZoneHints] The availability zone in which to
  /// [blockDevices] Configuration of block devices. The block_device
  /// [configDrive] Whether to use the config_drive feature to
  /// [created] The creation time of the instance.
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
  /// [updated] The time when the instance was last updated.
  /// [userData] The user data to provide when launching the instance.
  /// [vendorOptions] Map of additional vendor-specific options.
  InstanceState({
    this.accessIpV4,
    this.accessIpV6,
    this.adminPass,
    this.allMetadata,
    this.allTags,
    this.availabilityZone,
    this.availabilityZoneHints,
    this.blockDevices,
    this.configDrive,
    this.created,
    this.flavorId,
    this.flavorName,
    this.forceDelete,
    this.hypervisorHostname,
    this.imageId,
    this.imageName,
    this.keyPair,
    this.metadata,
    this.name,
    this.networkMode,
    this.networks,
    this.personalities,
    this.powerState,
    this.region,
    this.schedulerHints,
    this.securityGroups,
    this.stopBeforeDestroy,
    this.tags,
    this.updated,
    this.userData,
    this.vendorOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessIpV4': ?accessIpV4,
      'accessIpV6': ?accessIpV6,
      'adminPass': ?adminPass,
      'allMetadata': ?allMetadata,
      'allTags': ?allTags,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneHints': ?availabilityZoneHints,
      'blockDevices':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceBlockDevice>,
            List<Map<String, dynamic>>
          >(
            blockDevices,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceBlockDevice,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'configDrive': ?configDrive,
      'created': ?created,
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
      'networks':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceNetwork>,
            List<Map<String, dynamic>>
          >(
            networks,
            (value) =>
                pulumi.Input.encodeList<InstanceNetwork, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'personalities':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstancePersonality>,
            List<Map<String, dynamic>>
          >(
            personalities,
            (value) =>
                pulumi.Input.encodeList<
                  InstancePersonality,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'powerState': ?powerState,
      'region': ?region,
      'schedulerHints':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceSchedulerHint>,
            List<Map<String, dynamic>>
          >(
            schedulerHints,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceSchedulerHint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'securityGroups': ?securityGroups,
      'stopBeforeDestroy': ?stopBeforeDestroy,
      'tags': ?tags,
      'updated': ?updated,
      'userData': ?userData,
      'vendorOptions':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceVendorOptions,
            Map<String, dynamic>
          >(vendorOptions, (value) => value.toMap()),
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      accessIpV4: (() {
        final guardedValue = map['accessIpV4'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accessIpV6: (() {
        final guardedValue = map['accessIpV6'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      adminPass: (() {
        final guardedValue = map['adminPass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      allMetadata: (() {
        final guardedValue = map['allMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      allTags: (() {
        final guardedValue = map['allTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      availabilityZone: (() {
        final guardedValue = map['availabilityZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availabilityZoneHints: (() {
        final guardedValue = map['availabilityZoneHints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      blockDevices: (() {
        final guardedValue = map['blockDevices'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceBlockDevice>(
            guardedValue,
            (value) => InstanceBlockDevice.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      configDrive: (() {
        final guardedValue = map['configDrive'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      created: (() {
        final guardedValue = map['created'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      flavorId: (() {
        final guardedValue = map['flavorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      flavorName: (() {
        final guardedValue = map['flavorName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forceDelete: (() {
        final guardedValue = map['forceDelete'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      hypervisorHostname: (() {
        final guardedValue = map['hypervisorHostname'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageId: (() {
        final guardedValue = map['imageId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageName: (() {
        final guardedValue = map['imageName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyPair: (() {
        final guardedValue = map['keyPair'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkMode: (() {
        final guardedValue = map['networkMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networks: (() {
        final guardedValue = map['networks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceNetwork>(
            guardedValue,
            (value) =>
                InstanceNetwork.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      personalities: (() {
        final guardedValue = map['personalities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstancePersonality>(
            guardedValue,
            (value) => InstancePersonality.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      powerState: (() {
        final guardedValue = map['powerState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schedulerHints: (() {
        final guardedValue = map['schedulerHints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceSchedulerHint>(
            guardedValue,
            (value) => InstanceSchedulerHint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      securityGroups: (() {
        final guardedValue = map['securityGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      stopBeforeDestroy: (() {
        final guardedValue = map['stopBeforeDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      updated: (() {
        final guardedValue = map['updated'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userData: (() {
        final guardedValue = map['userData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vendorOptions: (() {
        final guardedValue = map['vendorOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceVendorOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
