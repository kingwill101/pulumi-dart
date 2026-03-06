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
  const CloudinitDiskArgs({
    required this.metaData,
    this.name,
    this.networkConfig,
    required this.userData,
  });

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
      metaData: pulumi.Input.fromValue(map['metaData'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userData: pulumi.Input.fromValue(map['userData'] as String),
    );
  }
}

