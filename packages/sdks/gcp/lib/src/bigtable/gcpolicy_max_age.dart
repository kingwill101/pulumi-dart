// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GCPolicyMaxAge {
  /// Number of days before applying GC policy.
  final pulumi.Input<int>? days;
  /// Duration before applying GC policy (ex. "8h"). This is required when `days` isn't set
  ///
  /// -----
  final pulumi.Input<String>? duration;

  /// Creates a new [GCPolicyMaxAge].
  /// [days] Number of days before applying GC policy.
  /// [duration] Duration before applying GC policy (ex. "8h"). This is required when `days` isn't set
  const GCPolicyMaxAge({
    this.days,
    this.duration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'days': ?days,
      'duration': ?duration,
    };
  }

  factory GCPolicyMaxAge.fromMap(Map<String, dynamic> map) {
    return GCPolicyMaxAge(
      days: (() { final guardedValue = map['days']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
