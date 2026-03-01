import 'package:pulumi/pulumi.dart' as pulumi;
import 'ignition_args.dart';
import 'ignition_state.dart';
import '../internal/package_registration.dart' as package_registration;

/// Generates an Ignition configuration file for CoreOS/Fedora CoreOS systems.
///
/// Ignition is a provisioning tool that reads a configuration file and provisions the machine
/// accordingly on first boot. This resource generates the Ignition file that can be uploaded
/// to a volume and provided to the virtual machine.
///
/// ## Example Usage
///
///
/// ```yaml
/// resources:
///   fcos:
///     type: libvirt:Ignition
///     properties:
///       name: fcos-ignition
///       content: ${fcosIgnitionConfig.rendered}
///   ignition:
///     type: libvirt:Volume
///     properties:
///       name: fcos-ignition.ign
///       pool: default
///       format: raw
///       create:
///         content:
///           url: ${fcos.path}
/// ```
///
///
/// See the [Ignition documentation](https://coreos.github.io/ignition/) for configuration details.
class Ignition extends pulumi.CustomResource {
  /// Ignition configuration content (JSON)
  late final pulumi.Output<String> content;
  /// Name for this ignition resource
  late final pulumi.Output<String> name;
  /// Full path to the generated ignition file
  late final pulumi.Output<String> path;
  /// Size of the file in bytes
  late final pulumi.Output<double> size;

  /// Creates a new [Ignition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ignition]. {@macro pulumi_index_ignition_ignition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ignition(
    String name, {
    IgnitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'libvirt:index/ignition:Ignition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
          registerPackageRequest: package_registration.registerPackageRequest,
        ) {
    this.content = registerOutput<String>('content');
    this.name = registerOutput<String>('name');
    this.path = registerOutput<String>('path');
    this.size = registerOutput<double>('size');
  }

  /// Gets an existing [Ignition] resource's state with the given [name] and [id].
  static Ignition get(
    String name,
    pulumi.Input<String> id, {
    IgnitionState? state,
  }) {
    return Ignition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Ignition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'libvirt:index/ignition:Ignition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.content = registerOutput<String>('content');
    this.name = registerOutput<String>('name');
    this.path = registerOutput<String>('path');
    this.size = registerOutput<double>('size');
  }
}
