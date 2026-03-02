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
  GCPolicyMaxAge({
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
      days: map['days'] == null ? null : (map['days'] as int).input(),
      duration: map['duration'] == null ? null : (map['duration'] as String).input(),
    );
  }
}

