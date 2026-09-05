// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CloudinitDisk resources.
class CloudinitDiskState {
  /// Cloud-init meta-data content (usually YAML)
  final pulumi.Input<String?>? metaData;
  /// Name for this cloud-init disk resource
  final pulumi.Input<String?>? name;
  /// Cloud-init network configuration (optional, usually YAML)
  final pulumi.Input<String?>? networkConfig;
  /// Full path to the generated ISO file
  final pulumi.Input<String?>? path;
  /// Size of the ISO file in bytes
  final pulumi.Input<double?>? size;
  /// Cloud-init user-data content (usually YAML)
  final pulumi.Input<String?>? userData;

  /// Creates a new [CloudinitDiskState].
  /// [metaData] Cloud-init meta-data content (usually YAML)
  /// [name] Name for this cloud-init disk resource
  /// [networkConfig] Cloud-init network configuration (optional, usually YAML)
  /// [path] Full path to the generated ISO file
  /// [size] Size of the ISO file in bytes
  /// [userData] Cloud-init user-data content (usually YAML)
  const CloudinitDiskState({
    this.metaData,
    this.name,
    this.networkConfig,
    this.path,
    this.size,
    this.userData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metaData': ?metaData,
      'name': ?name,
      'networkConfig': ?networkConfig,
      'path': ?path,
      'size': ?size,
      'userData': ?userData,
    };
  }

  factory CloudinitDiskState.fromMap(Map<String, dynamic> map) {
    return CloudinitDiskState(
      metaData: (() { final guardedValue = map['metaData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
