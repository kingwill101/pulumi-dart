// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTaskSpecContainerSpecPrivilegesCredentialSpec {
  /// Load credential spec from this file
  final pulumi.Input<String>? file;
  /// Load credential spec from this value in the Windows registry
  final pulumi.Input<String>? registry;

  /// Creates a new [ServiceTaskSpecContainerSpecPrivilegesCredentialSpec].
  /// [file] Load credential spec from this file
  /// [registry] Load credential spec from this value in the Windows registry
  const ServiceTaskSpecContainerSpecPrivilegesCredentialSpec({
    this.file,
    this.registry,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': ?file,
      'registry': ?registry,
    };
  }

  factory ServiceTaskSpecContainerSpecPrivilegesCredentialSpec.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpecPrivilegesCredentialSpec(
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registry: (() { final guardedValue = map['registry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

