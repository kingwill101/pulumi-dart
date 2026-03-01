// ignore_for_file: unused_element, unnecessary_cast


class ConnectionEventingConfigRegistrationDestinationConfigDestination {
  /// Host
  final String? host;
  /// port number
  final int? port;
  /// Service Attachment
  final String? serviceAttachment;

  /// Creates a new [ConnectionEventingConfigRegistrationDestinationConfigDestination].
  /// [host] Host
  /// [port] port number
  /// [serviceAttachment] Service Attachment
  ConnectionEventingConfigRegistrationDestinationConfigDestination({
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

  factory ConnectionEventingConfigRegistrationDestinationConfigDestination.fromMap(Map<String, dynamic> map) {
    return ConnectionEventingConfigRegistrationDestinationConfigDestination(
      host: map['host'] == null ? null : map['host'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      serviceAttachment: map['serviceAttachment'] == null ? null : map['serviceAttachment'] as String,
    );
  }
}

