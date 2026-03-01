// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_cloudinit_disk_cloudinit_disk_args_doc}
/// The set of arguments for CloudinitDisk.
/// {@endtemplate}
/// {@macro pulumi_index_cloudinit_disk_cloudinit_disk_args_doc}
class CloudinitDiskArgs {
  /// Cloud-init meta-data content (usually YAML)
  final pulumi.Input<String> metaData;
  /// Name for this cloud-init disk resource
  final pulumi.Input<String>? name;
  /// Cloud-init network configuration (optional, usually YAML)
  final pulumi.Input<String>? networkConfig;
  /// Cloud-init user-data content (usually YAML)
  final pulumi.Input<String> userData;

  /// Creates a new [CloudinitDiskArgs].
  /// [metaData] Cloud-init meta-data content (usually YAML)
  /// [name] Name for this cloud-init disk resource
  /// [networkConfig] Cloud-init network configuration (optional, usually YAML)
  /// [userData] Cloud-init user-data content (usually YAML)
  CloudinitDiskArgs({
    required pulumi.Output<String> metaData,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkConfig,
    required pulumi.Output<String> userData,
  }) :
      metaData = pulumi.Input.asInput<String>(metaData),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkConfig = pulumi.Input.asOptionalInput<String>(networkConfig),
      userData = pulumi.Input.asInput<String>(userData);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metaData': metaData,
      'name': ?name,
      'networkConfig': ?networkConfig,
      'userData': userData,
    };
  }

  factory CloudinitDiskArgs.fromMap(Map<String, dynamic> map) {
    return CloudinitDiskArgs(
      metaData: pulumi.Output.create<String>(map['metaData'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkConfig: map['networkConfig'] == null ? null : pulumi.Output.create<String>(map['networkConfig'] as String),
      userData: pulumi.Output.create<String>(map['userData'] as String),
    );
  }
}

