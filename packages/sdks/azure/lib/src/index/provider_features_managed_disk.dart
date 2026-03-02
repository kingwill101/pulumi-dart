// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesManagedDisk {
  final pulumi.Input<bool>? expandWithoutDowntime;

  /// Creates a new [ProviderFeaturesManagedDisk].
  /// [expandWithoutDowntime] Optional.
  ProviderFeaturesManagedDisk({
    this.expandWithoutDowntime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expandWithoutDowntime': ?expandWithoutDowntime,
    };
  }

  factory ProviderFeaturesManagedDisk.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesManagedDisk(
      expandWithoutDowntime: map['expandWithoutDowntime'] == null ? null : (map['expandWithoutDowntime']! as bool).input(),
    );
  }
}

