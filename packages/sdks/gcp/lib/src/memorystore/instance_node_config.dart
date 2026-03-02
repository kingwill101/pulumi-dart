// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceNodeConfig {
  /// (Output)
  /// Output only. Memory size in GB of the node.
  final pulumi.Input<double>? sizeGb;

  /// Creates a new [InstanceNodeConfig].
  /// [sizeGb] (Output)
  InstanceNodeConfig({
    this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sizeGb': ?sizeGb,
    };
  }

  factory InstanceNodeConfig.fromMap(Map<String, dynamic> map) {
    return InstanceNodeConfig(
      sizeGb: map['sizeGb'] == null ? null : (map['sizeGb']! as double).input(),
    );
  }
}

