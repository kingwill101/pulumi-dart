// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMicrovmUrl {
  /// Whether this is the default URL.
  final pulumi.Input<bool> default_;
  /// The hostname, without a scheme.
  final pulumi.Input<String> hostname;
  /// The guest port the URL forwards to.
  final pulumi.Input<int> port;
  /// The URL status: `PENDING` or `ACTIVE`.
  final pulumi.Input<String> status;

  /// Creates a new [GetMicrovmUrl].
  /// [default_] Whether this is the default URL.
  /// [hostname] The hostname, without a scheme.
  /// [port] The guest port the URL forwards to.
  /// [status] The URL status: `PENDING` or `ACTIVE`.
  const GetMicrovmUrl({
    required this.default_,
    required this.hostname,
    required this.port,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': default_,
      'hostname': hostname,
      'port': port,
      'status': status,
    };
  }

  factory GetMicrovmUrl.fromMap(Map<String, dynamic> map) {
    return GetMicrovmUrl(
      default_: pulumi.Input.fromValue(map['default'] as bool),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
