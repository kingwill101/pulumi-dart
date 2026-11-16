// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MicrovmIngress resources.
class MicrovmIngressState {
  /// Whether this is the MicroVM's system default URL.
  final pulumi.Input<bool?>? default_;
  /// The assigned hostname, without a scheme.
  final pulumi.Input<String?>? hostname;
  /// The ID of the MicroVM to add the URL to. Changing this forces a new URL.
  final pulumi.Input<String?>? microvmId;
  /// The guest port the URL routes to. Must be one of the MicroVM's `ports`. Defaults to the MicroVM's `httpPort` when omitted. Changing this forces a new URL.
  final pulumi.Input<int?>? port;
  /// The URL status: `PENDING` or `ACTIVE`.
  final pulumi.Input<String?>? status;
  /// The stable identifier of the URL (same as `id`).
  final pulumi.Input<String?>? urlId;

  /// Creates a new [MicrovmIngressState].
  /// [default_] Whether this is the MicroVM's system default URL.
  /// [hostname] The assigned hostname, without a scheme.
  /// [microvmId] The ID of the MicroVM to add the URL to. Changing this forces a new URL.
  /// [port] The guest port the URL routes to. Must be one of the MicroVM's `ports`. Defaults to the MicroVM's `httpPort` when omitted. Changing this forces a new URL.
  /// [status] The URL status: `PENDING` or `ACTIVE`.
  /// [urlId] The stable identifier of the URL (same as `id`).
  const MicrovmIngressState({
    this.default_,
    this.hostname,
    this.microvmId,
    this.port,
    this.status,
    this.urlId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'hostname': ?hostname,
      'microvmId': ?microvmId,
      'port': ?port,
      'status': ?status,
      'urlId': ?urlId,
    };
  }

  factory MicrovmIngressState.fromMap(Map<String, dynamic> map) {
    return MicrovmIngressState(
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      microvmId: (() { final guardedValue = map['microvmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urlId: (() { final guardedValue = map['urlId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
