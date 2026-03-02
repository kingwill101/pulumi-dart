// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionInstanceGroupManagerStatusAllInstancesConfig {
  /// Current all-instances configuration revision. This value is in RFC3339 text format.
  final pulumi.Input<String>? currentRevision;
  /// A bit indicating whether this configuration has been applied to all managed instances in the group.
  final pulumi.Input<bool>? effective;

  /// Creates a new [RegionInstanceGroupManagerStatusAllInstancesConfig].
  /// [currentRevision] Current all-instances configuration revision. This value is in RFC3339 text format.
  /// [effective] A bit indicating whether this configuration has been applied to all managed instances in the group.
  RegionInstanceGroupManagerStatusAllInstancesConfig({
    this.currentRevision,
    this.effective,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentRevision': ?currentRevision,
      'effective': ?effective,
    };
  }

  factory RegionInstanceGroupManagerStatusAllInstancesConfig.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerStatusAllInstancesConfig(
      currentRevision: map['currentRevision'] == null ? null : (map['currentRevision']! as String).input(),
      effective: map['effective'] == null ? null : (map['effective']! as bool).input(),
    );
  }
}

