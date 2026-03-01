// ignore_for_file: unused_element, unnecessary_cast


class AppDedicatedIp {
  /// The ID of the app.
  final String? id;
  /// The IP address of the dedicated egress IP.
  final String? ip;
  /// The status of the dedicated egress IP: 'UNKNOWN', 'ASSIGNING', 'ASSIGNED', or 'REMOVED'
  final String? status;

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
      id: map['id'] == null ? null : map['id'] as String,
      ip: map['ip'] == null ? null : map['ip'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

