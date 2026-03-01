// ignore_for_file: unused_element, unnecessary_cast


class ConnectionDestinationConfigDestination {
  /// Host
  final String? host;
  /// port number
  final int? port;
  /// Service Attachment
  final String? serviceAttachment;

  /// Creates a new [ConnectionDestinationConfigDestination].
  /// [host] Host
  /// [port] port number
  /// [serviceAttachment] Service Attachment
  ConnectionDestinationConfigDestination({
    this.host,
    this.port,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'port': ?port,
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory ConnectionDestinationConfigDestination.fromMap(Map<String, dynamic> map) {
    return ConnectionDestinationConfigDestination(
      host: map['host'] == null ? null : map['host'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      serviceAttachment: map['serviceAttachment'] == null ? null : map['serviceAttachment'] as String,
    );
  }
}

