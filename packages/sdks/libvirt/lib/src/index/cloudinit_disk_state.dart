// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CloudinitDisk resources.
class CloudinitDiskState {
  /// Cloud-init meta-data content (usually YAML)
  final pulumi.Input<String>? metaData;
  /// Name for this cloud-init disk resource
  final pulumi.Input<String>? name;
  /// Cloud-init network configuration (optional, usually YAML)
  final pulumi.Input<String>? networkConfig;
  /// Full path to the generated ISO file
  final pulumi.Input<String>? path;
  /// Size of the ISO file in bytes
  final pulumi.Input<double>? size;
  /// Cloud-init user-data content (usually YAML)
  final pulumi.Input<String>? userData;

  /// Creates a new [CloudinitDiskState].
  /// [metaData] Cloud-init meta-data content (usually YAML)
  /// [name] Name for this cloud-init disk resource
  /// [networkConfig] Cloud-init network configuration (optional, usually YAML)
  /// [path] Full path to the generated ISO file
  /// [size] Size of the ISO file in bytes
  /// [userData] Cloud-init user-data content (usually YAML)
  CloudinitDiskState({
    pulumi.Output<String>? metaData,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkConfig,
    pulumi.Output<String>? path,
    pulumi.Output<double>? size,
    pulumi.Output<String>? userData,
  }) :
      metaData = pulumi.Input.asOptionalInput<String>(metaData),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfig = pulumi.Input.asOptionalInput<String>(networkConfig),
      path = pulumi.Input.asOptionalInput<String>(path),
      size = pulumi.Input.asOptionalInput<double>(size),
      userData = pulumi.Input.asOptionalInput<String>(userData);

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
      metaData: map['metaData'] == null ? null : pulumi.Output.create<String>(map['metaData'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<String>(map['networkConfig'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<double>(map['size'] as double),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
    );
  }
}

