// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MicrovmUrl {
  /// Whether this is the default URL.
  final pulumi.Input<bool?>? default_;
  /// The hostname, without a scheme.
  final pulumi.Input<String?>? hostname;
  /// The guest port the URL forwards to.
  final pulumi.Input<int?>? port;
  /// The URL status: `PENDING` or `ACTIVE`.
  final pulumi.Input<String?>? status;

  /// Creates a new [MicrovmUrl].
  /// [default_] Whether this is the default URL.
  /// [hostname] The hostname, without a scheme.
  /// [port] The guest port the URL forwards to.
  /// [status] The URL status: `PENDING` or `ACTIVE`.
  const MicrovmUrl({
    this.default_,
    this.hostname,
    this.port,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'hostname': ?hostname,
      'port': ?port,
      'status': ?status,
    };
  }

  factory MicrovmUrl.fromMap(Map<String, dynamic> map) {
    return MicrovmUrl(
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
