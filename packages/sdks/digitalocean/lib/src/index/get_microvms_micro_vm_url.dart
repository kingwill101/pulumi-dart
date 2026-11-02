// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMicrovmsMicroVmUrl {
  /// Whether this is the system default URL
  final pulumi.Input<bool> default_;
  /// Hostname (no scheme)
  final pulumi.Input<String> hostname;
  /// Guest port this URL forwards to
  final pulumi.Input<int> port;
  /// URL lifecycle status (PENDING or ACTIVE)
  final pulumi.Input<String> status;

  /// Creates a new [GetMicrovmsMicroVmUrl].
  /// [default_] Whether this is the system default URL
  /// [hostname] Hostname (no scheme)
  /// [port] Guest port this URL forwards to
  /// [status] URL lifecycle status (PENDING or ACTIVE)
  const GetMicrovmsMicroVmUrl({
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

  factory GetMicrovmsMicroVmUrl.fromMap(Map<String, dynamic> map) {
    return GetMicrovmsMicroVmUrl(
      default_: pulumi.Input.fromValue(map['default'] as bool),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
