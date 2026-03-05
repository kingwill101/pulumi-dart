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
      expandWithoutDowntime: (() { final guardedValue = map['expandWithoutDowntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

