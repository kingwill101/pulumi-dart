import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloudinit_disk_args.dart';
import 'cloudinit_disk_state.dart';
import '../internal/package_registration.dart' as package_registration;

/// Generates a cloud-init configuration disk as an ISO image with the "cidata" volume label.
/// This ISO can be uploaded to a libvirt volume and attached to a domain for cloud-init configuration.
///
/// Cloud-init will automatically detect and process the configuration from this disk when the VM boots.
class CloudinitDisk extends pulumi.CustomResource {
  /// Cloud-init meta-data content (usually YAML)
  late final pulumi.Output<String> metaData;
  /// Name for this cloud-init disk resource
  late final pulumi.Output<String> name;
  /// Cloud-init network configuration (optional, usually YAML)
  late final pulumi.Output<String?> networkConfig;
  /// Full path to the generated ISO file
  late final pulumi.Output<String> path;
  /// Size of the ISO file in bytes
  late final pulumi.Output<double> size;
  /// Cloud-init user-data content (usually YAML)
  late final pulumi.Output<String> userData;

  /// Creates a new [CloudinitDisk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudinitDisk]. {@macro pulumi_index_cloudinit_disk_cloudinit_disk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudinitDisk(
    String name, {
    CloudinitDiskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'libvirt:index/cloudinitDisk:CloudinitDisk',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
          registerPackageRequest: package_registration.registerPackageRequest,
        ) {
    this.metaData = registerOutput<String>('metaData');
    this.name = registerOutput<String>('name');
    this.networkConfig = registerOutput<String?>('networkConfig');
    this.path = registerOutput<String>('path');
    this.size = registerOutput<double>('size');
    this.userData = registerOutput<String>('userData');
  }

  /// Gets an existing [CloudinitDisk] resource's state with the given [name] and [id].
  static CloudinitDisk get(
    String name,
    pulumi.Input<String> id, {
    CloudinitDiskState? state,
  }) {
    return CloudinitDisk._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CloudinitDisk._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'libvirt:index/cloudinitDisk:CloudinitDisk',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.metaData = registerOutput<String>('metaData');
    this.name = registerOutput<String>('name');
    this.networkConfig = registerOutput<String?>('networkConfig');
    this.path = registerOutput<String>('path');
    this.size = registerOutput<double>('size');
    this.userData = registerOutput<String>('userData');
  }
}
