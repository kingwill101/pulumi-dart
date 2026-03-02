// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppDedicatedIp {
  /// The ID of the app.
  final pulumi.Input<String>? id;
  /// The IP address of the dedicated egress IP.
  final pulumi.Input<String>? ip;
  /// The status of the dedicated egress IP: 'UNKNOWN', 'ASSIGNING', 'ASSIGNED', or 'REMOVED'
  final pulumi.Input<String>? status;

  /// Creates a new [AppDedicatedIp].
  /// [id] The ID of the app.
  /// [ip] The IP address of the dedicated egress IP.
  /// [status] The status of the dedicated egress IP: 'UNKNOWN', 'ASSIGNING', 'ASSIGNED', or 'REMOVED'
  AppDedicatedIp({
    this.id,
    this.ip,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ip': ?ip,
      'status': ?status,
    };
  }

  factory AppDedicatedIp.fromMap(Map<String, dynamic> map) {
    return AppDedicatedIp(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      ip: map['ip'] == null ? null : (map['ip']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

