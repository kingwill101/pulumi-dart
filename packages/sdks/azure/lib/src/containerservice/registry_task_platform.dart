// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryTaskPlatform {
  /// The OS architecture. Possible values are `amd64`, `x86`, `386`, `arm` and `arm64`.
  final pulumi.Input<String>? architecture;
  /// The operating system type required for the task. Possible values are `Windows` and `Linux`.
  final pulumi.Input<String> os;
  /// The variant of the CPU. Possible values are `v6`, `v7`, `v8`.
  final pulumi.Input<String>? variant;

  /// Creates a new [RegistryTaskPlatform].
  /// [architecture] The OS architecture. Possible values are `amd64`, `x86`, `386`, `arm` and `arm64`.
  /// [os] The operating system type required for the task. Possible values are `Windows` and `Linux`.
  /// [variant] The variant of the CPU. Possible values are `v6`, `v7`, `v8`.
  RegistryTaskPlatform({
    this.architecture,
    required this.os,
    this.variant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'os': os,
      'variant': ?variant,
    };
  }

  factory RegistryTaskPlatform.fromMap(Map<String, dynamic> map) {
    return RegistryTaskPlatform(
      architecture: map['architecture'] == null ? null : (map['architecture'] as String).input(),
      os: (map['os'] as String).input(),
      variant: map['variant'] == null ? null : (map['variant'] as String).input(),
    );
  }
}

