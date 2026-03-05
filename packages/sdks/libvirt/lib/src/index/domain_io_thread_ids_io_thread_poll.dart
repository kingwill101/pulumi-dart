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
      grow: (() { final guardedValue = map['grow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      shrink: (() { final guardedValue = map['shrink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

