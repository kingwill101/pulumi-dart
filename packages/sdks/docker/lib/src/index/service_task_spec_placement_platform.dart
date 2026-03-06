// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTaskSpecPlacementPlatform {
  /// The architecture, e.g. `amd64`
  final pulumi.Input<String> architecture;
  /// The operation system, e.g. `linux`
  final pulumi.Input<String> os;

  /// Creates a new [ServiceTaskSpecPlacementPlatform].
  /// [architecture] The architecture, e.g. `amd64`
  /// [os] The operation system, e.g. `linux`
  const ServiceTaskSpecPlacementPlatform({
    required this.architecture,
    required this.os,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'os': os,
    };
  }

  factory ServiceTaskSpecPlacementPlatform.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecPlacementPlatform(
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
      os: pulumi.Input.fromValue(map['os'] as String),
    );
  }
}

