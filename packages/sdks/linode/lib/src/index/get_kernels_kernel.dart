// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKernelsKernel {
  /// The architecture of this Kernel.
  final pulumi.Input<String> architecture;
  /// The date on which this Kernel was built.
  final pulumi.Input<String> built;
  /// Whether or not this Kernel is deprecated.
  final pulumi.Input<bool> deprecated;
  /// The unique ID of this Kernel.
  final pulumi.Input<String> id;
  /// If this Kernel is suitable for KVM Linodes.
  final pulumi.Input<bool> kvm;
  /// The friendly name of this Kernel.
  final pulumi.Input<String> label;
  /// If this Kernel is suitable for paravirtualized operations.
  final pulumi.Input<bool> pvops;
  /// Linux Kernel version
  final pulumi.Input<String> version;
  /// If this Kernel is suitable for Xen Linodes.
  final pulumi.Input<bool> xen;

  /// Creates a new [GetKernelsKernel].
  /// [architecture] The architecture of this Kernel.
  /// [built] The date on which this Kernel was built.
  /// [deprecated] Whether or not this Kernel is deprecated.
  /// [id] The unique ID of this Kernel.
  /// [kvm] If this Kernel is suitable for KVM Linodes.
  /// [label] The friendly name of this Kernel.
  /// [pvops] If this Kernel is suitable for paravirtualized operations.
  /// [version] Linux Kernel version
  /// [xen] If this Kernel is suitable for Xen Linodes.
  GetKernelsKernel({
    required this.architecture,
    required this.built,
    required this.deprecated,
    required this.id,
    required this.kvm,
    required this.label,
    required this.pvops,
    required this.version,
    required this.xen,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'built': built,
      'deprecated': deprecated,
      'id': id,
      'kvm': kvm,
      'label': label,
      'pvops': pvops,
      'version': version,
      'xen': xen,
    };
  }

  factory GetKernelsKernel.fromMap(Map<String, dynamic> map) {
    return GetKernelsKernel(
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
      built: pulumi.Input.fromValue(map['built'] as String),
      deprecated: pulumi.Input.fromValue(map['deprecated'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      kvm: pulumi.Input.fromValue(map['kvm'] as bool),
      label: pulumi.Input.fromValue(map['label'] as String),
      pvops: pulumi.Input.fromValue(map['pvops'] as bool),
      version: pulumi.Input.fromValue(map['version'] as String),
      xen: pulumi.Input.fromValue(map['xen'] as bool),
    );
  }
}

