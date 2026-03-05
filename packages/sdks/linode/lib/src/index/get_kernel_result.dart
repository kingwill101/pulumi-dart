// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getKernel.
class GetKernelResult {
  /// The architecture of this Kernel.
  final String architecture;
  final String built;

  /// Whether or not this Kernel is deprecated.
  final bool deprecated;
  final String id;

  /// If this Kernel is suitable for KVM Linodes.
  final bool kvm;

  /// The friendly name of this Kernel.
  final String label;

  /// If this Kernel is suitable for paravirtualized operations.
  final bool pvops;

  /// Linux Kernel version
  final String version;

  /// If this Kernel is suitable for Xen Linodes.
  final bool xen;

  /// Creates a new [GetKernelResult].
  /// [architecture] The architecture of this Kernel.
  /// [built] Required.
  /// [deprecated] Whether or not this Kernel is deprecated.
  /// [id] Required.
  /// [kvm] If this Kernel is suitable for KVM Linodes.
  /// [label] The friendly name of this Kernel.
  /// [pvops] If this Kernel is suitable for paravirtualized operations.
  /// [version] Linux Kernel version
  /// [xen] If this Kernel is suitable for Xen Linodes.
  GetKernelResult({
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

  factory GetKernelResult.fromMap(Map<String, dynamic> map) {
    return GetKernelResult(
      architecture: map['architecture'] as String,
      built: map['built'] as String,
      deprecated: map['deprecated'] as bool,
      id: map['id'] as String,
      kvm: map['kvm'] as bool,
      label: map['label'] as String,
      pvops: map['pvops'] as bool,
      version: map['version'] as String,
      xen: map['xen'] as bool,
    );
  }
}
