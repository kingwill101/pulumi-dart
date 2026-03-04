// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyVMWorkloadSettings {
  /// The compression setting for the VM Workload Backup Policy. Defaults to `false`.
  final pulumi.Input<bool>? compressionEnabled;

  /// The timezone for the VM Workload Backup Policy. [The possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  final pulumi.Input<String> timeZone;

  /// Creates a new [PolicyVMWorkloadSettings].
  /// [compressionEnabled] The compression setting for the VM Workload Backup Policy. Defaults to `false`.
  /// [timeZone] The timezone for the VM Workload Backup Policy. [The possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  PolicyVMWorkloadSettings({this.compressionEnabled, required this.timeZone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compressionEnabled': ?compressionEnabled,
      'timeZone': timeZone,
    };
  }

  factory PolicyVMWorkloadSettings.fromMap(Map<String, dynamic> map) {
    return PolicyVMWorkloadSettings(
      compressionEnabled: (() {
        final guardedValue = map['compressionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      timeZone: pulumi.Input.fromValue(map['timeZone'] as String),
    );
  }
}
