// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainIoThreadIDsIoThreadPoll {
  /// Sets the policy for growing the I/O thread's polling behavior.
  final pulumi.Input<double>? grow;
  /// Configures the maximum polling rate for the I/O thread.
  final pulumi.Input<double>? max;
  /// Sets the policy for shrinking the I/O thread's polling behavior.
  final pulumi.Input<double>? shrink;

  /// Creates a new [DomainIoThreadIDsIoThreadPoll].
  /// [grow] Sets the policy for growing the I/O thread's polling behavior.
  /// [max] Configures the maximum polling rate for the I/O thread.
  /// [shrink] Sets the policy for shrinking the I/O thread's polling behavior.
  DomainIoThreadIDsIoThreadPoll({
    this.grow,
    this.max,
    this.shrink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grow': ?grow,
      'max': ?max,
      'shrink': ?shrink,
    };
  }

  factory DomainIoThreadIDsIoThreadPoll.fromMap(Map<String, dynamic> map) {
    return DomainIoThreadIDsIoThreadPoll(
      grow: map['grow'] == null ? null : (map['grow'] as double).input(),
      max: map['max'] == null ? null : (map['max'] as double).input(),
      shrink: map['shrink'] == null ? null : (map['shrink'] as double).input(),
    );
  }
}

