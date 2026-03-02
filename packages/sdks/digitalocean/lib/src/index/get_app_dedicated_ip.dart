// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppDedicatedIp {
  /// The ID of the dedicated egress IP.
  final pulumi.Input<String> id;
  /// The IP address of the dedicated egress IP.
  final pulumi.Input<String> ip;
  /// The status of the dedicated egress IP.
  final pulumi.Input<String> status;

  /// Creates a new [GetAppDedicatedIp].
  /// [id] The ID of the dedicated egress IP.
  /// [ip] The IP address of the dedicated egress IP.
  /// [status] The status of the dedicated egress IP.
  GetAppDedicatedIp({
    required this.id,
    required this.ip,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ip': ip,
      'status': status,
    };
  }

  factory GetAppDedicatedIp.fromMap(Map<String, dynamic> map) {
    return GetAppDedicatedIp(
      id: (map['id'] as String).input(),
      ip: (map['ip'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

