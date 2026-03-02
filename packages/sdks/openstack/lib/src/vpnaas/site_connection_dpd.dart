// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SiteConnectionDpd {
  /// The dead peer detection (DPD) action.
  /// A valid value is clear, hold, restart, disabled, or restart-by-peer.
  /// Default value is hold.
  final pulumi.Input<String>? action;
  /// The dead peer detection (DPD) interval, in seconds.
  /// A valid value is a positive integer.
  /// Default is 30.
  final pulumi.Input<int>? interval;
  /// The dead peer detection (DPD) timeout in seconds.
  /// A valid value is a positive integer that is greater than the DPD interval value.
  /// Default is 120.
  final pulumi.Input<int>? timeout;

  /// Creates a new [SiteConnectionDpd].
  /// [action] The dead peer detection (DPD) action.
  /// [interval] The dead peer detection (DPD) interval, in seconds.
  /// [timeout] The dead peer detection (DPD) timeout in seconds.
  SiteConnectionDpd({
    this.action,
    this.interval,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'interval': ?interval,
      'timeout': ?timeout,
    };
  }

  factory SiteConnectionDpd.fromMap(Map<String, dynamic> map) {
    return SiteConnectionDpd(
      action: map['action'] == null ? null : (map['action']! as String).input(),
      interval: map['interval'] == null ? null : (map['interval']! as int).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as int).input(),
    );
  }
}

