// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_microvm_ingress_microvm_ingress_args_doc}
/// The set of arguments for MicrovmIngress.
/// {@endtemplate}
/// {@macro pulumi_index_microvm_ingress_microvm_ingress_args_doc}
class MicrovmIngressArgs {
  /// The ID of the MicroVM to add the URL to. Changing this forces a new URL.
  final pulumi.Input<String> microvmId;
  /// The guest port the URL routes to. Must be one of the MicroVM's `ports`. Defaults to the MicroVM's `httpPort` when omitted. Changing this forces a new URL.
  final pulumi.Input<int?>? port;

  /// Creates a new [MicrovmIngressArgs].
  /// [microvmId] The ID of the MicroVM to add the URL to. Changing this forces a new URL.
  /// [port] The guest port the URL routes to. Must be one of the MicroVM's `ports`. Defaults to the MicroVM's `httpPort` when omitted. Changing this forces a new URL.
  const MicrovmIngressArgs({
    required this.microvmId,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'microvmId': microvmId,
      'port': ?port,
    };
  }

  factory MicrovmIngressArgs.fromMap(Map<String, dynamic> map) {
    return MicrovmIngressArgs(
      microvmId: pulumi.Input.fromValue(map['microvmId'] as String),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
