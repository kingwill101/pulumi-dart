// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterBrokerCapacityConfig {
  /// The disk to provision for each broker in Gibibytes. Minimum: 100 GiB.
  final pulumi.Input<String>? diskSizeGib;

  /// Creates a new [ClusterBrokerCapacityConfig].
  /// [diskSizeGib] The disk to provision for each broker in Gibibytes. Minimum: 100 GiB.
  ClusterBrokerCapacityConfig({
    this.diskSizeGib,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGib': ?diskSizeGib,
    };
  }

  factory ClusterBrokerCapacityConfig.fromMap(Map<String, dynamic> map) {
    return ClusterBrokerCapacityConfig(
      diskSizeGib: map['diskSizeGib'] == null ? null : (map['diskSizeGib']! as String).input(),
    );
  }
}

