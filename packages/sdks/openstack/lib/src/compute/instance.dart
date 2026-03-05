import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';
import 'instance_vendor_options.dart';

class Instance extends pulumi.CustomResource {
  /// The first detected Fixed IPv4 address.
  late final pulumi.Output<String> accessIpV4;

  /// The first detected Fixed IPv6 address.
  late final pulumi.Output<String> accessIpV6;

  /// The administrative password to assign to the server.
  /// Changing this changes the root password on the existing server.
  late final pulumi.Output<String?> adminPass;
  late final pulumi.Output<Map<String, String>> allMetadata;

  /// The collection of tags assigned on the instance, which have
  /// been explicitly and implicitly added.
  late final pulumi.Output<List<String>> allTags;

  /// The availability zone in which to create
  /// the server. Conflicts with `availability_zone_hints`. Changing this creates
  /// a new server.
  late final pulumi.Output<String> availabilityZone;

  /// The availability zone in which to
  /// create the server. This argument is preferred to `availability_zone`, when
  /// scheduling the server on a
  /// [particular](https://docs.openstack.org/nova/latest/admin/availability-zones.html)
  /// host or node. Conflicts with `availability_zone`. Changing this creates a
  /// new server.
  late final pulumi.Output<String?> availabilityZoneHints;

  /// Configuration of block devices. The block_device
  /// structure is documented below. Changing this creates a new server.
  /// You can specify multiple block devices which will create an instance with
  /// multiple disks. This configuration is very flexible, so please see the
  /// following [reference](https://docs.openstack.org/nova/latest/user/block-device-mapping.html)
  /// for more information.
  late final pulumi.Output<List<Map<String, dynamic>>?> blockDevices;

  /// Whether to use the config_drive feature to
  /// configure the instance. Changing this creates a new server.
  late final pulumi.Output<bool?> configDrive;

  /// The creation time of the instance.
  late final pulumi.Output<String> created;

  /// The flavor ID of
  /// the desired flavor for the server. Changing this resizes the existing server.
  late final pulumi.Output<String> flavorId;

  /// The name of the
  /// desired flavor for the server. Changing this resizes the existing server.
  late final pulumi.Output<String> flavorName;

  /// Whether to force the OpenStack instance to be
  /// forcefully deleted. This is useful for environments that have reclaim / soft
  /// deletion enabled.
  late final pulumi.Output<bool?> forceDelete;

  /// Specifies the exact hypervisor hostname on
  /// which to create the instance. When provided, this parameter is included in
  /// the request to Nova, directing the scheduler to launch the instance on the
  /// specified host. Note: This option requires administrative privileges and a
  /// Nova microversion of 2.74 or later. Conflicts with `personality`. Changing
  /// this value forces a new instance to be created.
  late final pulumi.Output<String> hypervisorHostname;

  /// (Optional; Required if `image_name` is empty and not booting
  /// from a volume. Do not specify if booting from a volume.) The image ID of
  /// the desired image for the server. Changing this rebuilds the existing
  /// server.
  late final pulumi.Output<String> imageId;

  /// (Optional; Required if `image_id` is empty and not booting
  /// from a volume. Do not specify if booting from a volume.) The name of the
  /// desired image for the server. Changing this rebuilds the existing server.
  late final pulumi.Output<String> imageName;

  /// The name of a key pair to put on the server. The key
  /// pair must already be created and associated with the tenant's account.
  /// Changing this creates a new server.
  late final pulumi.Output<String?> keyPair;

  /// Metadata key/value pairs to make available from
  /// within the instance. Changing this updates the existing server metadata.
  late final pulumi.Output<Map<String, String>?> metadata;

  /// A unique name for the resource.
  late final pulumi.Output<String> name;

  /// Special string for `network` option to create
  /// the server. `network_mode` can be `"auto"` or `"none"`.
  /// Please see the following [reference](https://docs.openstack.org/api-ref/compute/?expanded=create-server-detail#id11) for more information. Conflicts with `network`.
  late final pulumi.Output<String?> networkMode;

  /// An array of one or more networks to attach to the
  /// instance. The network object structure is documented below. Changing this
  /// creates a new server.
  late final pulumi.Output<List<Map<String, dynamic>>> networks;

  /// Customize the personality of an instance by
  /// defining one or more files and their contents. The personality structure is
  /// described below. Conflicts with `hypervisor_hostname`. Changing this rebuilds
  /// the existing server.
  late final pulumi.Output<List<Map<String, dynamic>>?> personalities;

  /// Provide the VM state. Only 'active', 'shutoff', 'paused'
  /// and 'shelved_offloaded' are supported values.
  /// *Note*: If the initial power_state is the shutoff or paused
  /// the VM will be stopped immediately after build and the provisioners like
  /// remote-exec or files are not supported.
  late final pulumi.Output<String?> powerState;

  /// The region in which to create the server instance. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new server.
  late final pulumi.Output<String> region;

  /// Provide the Nova scheduler with hints on how
  /// the instance should be launched. The available hints are described below.
  late final pulumi.Output<List<Map<String, dynamic>>?> schedulerHints;

  /// An array of one or more security group names
  /// to associate with the server. Changing this results in adding/removing
  /// security groups from the existing server. *Note*: When attaching the
  /// instance to networks using Ports, place the security groups on the Port
  /// and not the instance. *Note*: Names should be used and not ids, as ids
  /// trigger unnecessary updates.
  late final pulumi.Output<List<String>> securityGroups;

  /// Whether to try stop instance gracefully
  /// before destroying it, thus giving chance for guest OS daemons to stop correctly.
  /// If instance doesn't stop within timeout, it will be destroyed anyway.
  late final pulumi.Output<bool?> stopBeforeDestroy;

  /// A set of string tags for the instance. Changing this
  /// updates the existing instance tags.
  late final pulumi.Output<List<String>?> tags;

  /// The time when the instance was last updated.
  late final pulumi.Output<String> updated;

  /// The user data to provide when launching the instance.
  /// Changing this creates a new server.
  late final pulumi.Output<String?> userData;

  /// Map of additional vendor-specific options.
  /// Supported options are described below.
  late final pulumi.Output<InstanceVendorOptions?> vendorOptions;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_compute_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:compute/instance:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessIpV4 = registerOutput<String>('accessIpV4');
    accessIpV6 = registerOutput<String>('accessIpV6');
    adminPass = registerOutput<String?>('adminPass');
    allMetadata = registerOutput<Map<String, String>>('allMetadata');
    allTags = registerOutput<List<String>>('allTags');
    availabilityZone = registerOutput<String>('availabilityZone');
    availabilityZoneHints = registerOutput<String?>('availabilityZoneHints');
    blockDevices = registerOutput<List<Map<String, dynamic>>?>('blockDevices');
    configDrive = registerOutput<bool?>('configDrive');
    created = registerOutput<String>('created');
    flavorId = registerOutput<String>('flavorId');
    flavorName = registerOutput<String>('flavorName');
    forceDelete = registerOutput<bool?>('forceDelete');
    hypervisorHostname = registerOutput<String>('hypervisorHostname');
    imageId = registerOutput<String>('imageId');
    imageName = registerOutput<String>('imageName');
    keyPair = registerOutput<String?>('keyPair');
    metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    networkMode = registerOutput<String?>('networkMode');
    networks = registerOutput<List<Map<String, dynamic>>>('networks');
    personalities = registerOutput<List<Map<String, dynamic>>?>(
      'personalities',
    );
    powerState = registerOutput<String?>('powerState');
    region = registerOutput<String>('region');
    schedulerHints = registerOutput<List<Map<String, dynamic>>?>(
      'schedulerHints',
    );
    securityGroups = registerOutput<List<String>>('securityGroups');
    stopBeforeDestroy = registerOutput<bool?>('stopBeforeDestroy');
    tags = registerOutput<List<String>?>('tags');
    updated = registerOutput<String>('updated');
    userData = registerOutput<String?>('userData');
    vendorOptions = registerOutput<InstanceVendorOptions?>(
      'vendorOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceVendorOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:compute/instance:Instance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessIpV4 = registerOutput<String>('accessIpV4');
    accessIpV6 = registerOutput<String>('accessIpV6');
    adminPass = registerOutput<String?>('adminPass');
    allMetadata = registerOutput<Map<String, String>>('allMetadata');
    allTags = registerOutput<List<String>>('allTags');
    availabilityZone = registerOutput<String>('availabilityZone');
    availabilityZoneHints = registerOutput<String?>('availabilityZoneHints');
    blockDevices = registerOutput<List<Map<String, dynamic>>?>('blockDevices');
    configDrive = registerOutput<bool?>('configDrive');
    created = registerOutput<String>('created');
    flavorId = registerOutput<String>('flavorId');
    flavorName = registerOutput<String>('flavorName');
    forceDelete = registerOutput<bool?>('forceDelete');
    hypervisorHostname = registerOutput<String>('hypervisorHostname');
    imageId = registerOutput<String>('imageId');
    imageName = registerOutput<String>('imageName');
    keyPair = registerOutput<String?>('keyPair');
    metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    networkMode = registerOutput<String?>('networkMode');
    networks = registerOutput<List<Map<String, dynamic>>>('networks');
    personalities = registerOutput<List<Map<String, dynamic>>?>(
      'personalities',
    );
    powerState = registerOutput<String?>('powerState');
    region = registerOutput<String>('region');
    schedulerHints = registerOutput<List<Map<String, dynamic>>?>(
      'schedulerHints',
    );
    securityGroups = registerOutput<List<String>>('securityGroups');
    stopBeforeDestroy = registerOutput<bool?>('stopBeforeDestroy');
    tags = registerOutput<List<String>?>('tags');
    updated = registerOutput<String>('updated');
    userData = registerOutput<String?>('userData');
    vendorOptions = registerOutput<InstanceVendorOptions?>(
      'vendorOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return InstanceVendorOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
