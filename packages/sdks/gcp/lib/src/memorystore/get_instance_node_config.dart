// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceNodeConfig {
  /// Output only. Memory size in GB of the node.
  final pulumi.Input<double> sizeGb;

  /// Creates a new [GetInstanceNodeConfig].
  /// [sizeGb] Output only. Memory size in GB of the node.
  GetInstanceNodeConfig({
    required this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sizeGb': sizeGb,
    };
  }

  factory GetInstanceNodeConfig.fromMap(Map<String, dynamic> map) {
    return GetInstanceNodeConfig(
      sizeGb: (map['sizeGb'] as double).input(),
    );
  }
}

