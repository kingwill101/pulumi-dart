import 'package:pulumi/pulumi.dart' as pulumi;
import 'combustion_args.dart';
import 'combustion_state.dart';
import '../internal/package_registration.dart' as package_registration;

/// Generates a Combustion script file for openSUSE MicroOS/Elemental systems.
///
/// Combustion is a minimal provisioning framework that runs shell scripts on first boot.
/// This resource generates the script file that can be uploaded to a volume and provided
/// to the virtual machine.
///
/// ## Example Usage
///
///
/// ```yaml
/// resources:
///   microos:
///     type: libvirt:Combustion
///     properties:
///       name: microos-combustion
///       content: |
///         #!/bin/bash
///         # combustion: network
///         echo \"root:password\" | chpasswd
///         systemctl enable sshd
///   combustion:
///     type: libvirt:Volume
///     properties:
///       name: microos-combustion.sh
///       pool: default
///       format: raw
///       create:
///         content:
///           url: ${microos.path}
/// ```
///
///
/// See the [Combustion documentation](https://github.com/openSUSE/combustion) for script format details.
class Combustion extends pulumi.CustomResource {
  /// Combustion script content (shell script)
  late final pulumi.Output<String> content;
  /// Name for this combustion resource
  late final pulumi.Output<String> name;
  /// Full path to the generated combustion script file
  late final pulumi.Output<String> path;
  /// Size of the file in bytes
  late final pulumi.Output<double> size;

  /// Creates a new [Combustion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Combustion]. {@macro pulumi_index_combustion_combustion_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Combustion(
    String name, {
    CombustionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'libvirt:index/combustion:Combustion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
          registerPackageRequest: package_registration.registerPackageRequest,
        ) {
    content = registerOutput<String>('content');
    this.name = registerOutput<String>('name');
    path = registerOutput<String>('path');
    size = registerOutput<double>('size');
  }

  /// Gets an existing [Combustion] resource's state with the given [name] and [id].
  static Combustion get(
    String name,
    pulumi.Input<String> id, {
    CombustionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Combustion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Combustion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'libvirt:index/combustion:Combustion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    content = registerOutput<String>('content');
    this.name = registerOutput<String>('name');
    path = registerOutput<String>('path');
    size = registerOutput<double>('size');
  }

  /// Creates a typed reference to an existing [Combustion] resource.
  Combustion.reference(String urn)
    : super(
        'libvirt:index/combustion:Combustion',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          registerPackageRequest: package_registration.registerPackageRequest,
        isResourceReference: true,
      ) {
    content = registerOutput<String>('content');
    this.name = registerOutput<String>('name');
    path = registerOutput<String>('path');
    size = registerOutput<double>('size');
  }
}
