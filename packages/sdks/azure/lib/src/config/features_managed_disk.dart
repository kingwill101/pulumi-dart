// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesManagedDisk {
  final pulumi.Input<bool>? expandWithoutDowntime;

  /// Creates a new [FeaturesManagedDisk].
  /// [expandWithoutDowntime] Optional.
  FeaturesManagedDisk({
    this.expandWithoutDowntime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expandWithoutDowntime': ?expandWithoutDowntime,
    };
  }

  factory FeaturesManagedDisk.fromMap(Map<String, dynamic> map) {
    return FeaturesManagedDisk(
      expandWithoutDowntime: map['expandWithoutDowntime'] == null ? null : (map['expandWithoutDowntime'] as bool).input(),
    );
  }
}

