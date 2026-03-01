// ignore_for_file: unused_element, unnecessary_cast


class DestinationResponse {
  /// For publicly routable host.
  final String host;
  /// The port is the target port number that is accepted by the destination.
  final int port;
  /// PSC service attachments. Format: projects/*/regions/*/serviceAttachments/*
  final String serviceAttachment;

  /// Creates a new [DestinationResponse].
  /// [host] For publicly routable host.
  /// [port] The port is the target port number that is accepted by the destination.
  /// [serviceAttachment] PSC service attachments. Format: projects/*/regions/*/serviceAttachments/*
  DestinationResponse({
    required this.host,
    required this.port,
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'port': port,
      'serviceAttachment': serviceAttachment,
    };
  }

  factory DestinationResponse.fromMap(Map<String, dynamic> map) {
    return DestinationResponse(
      host: map['host'] as String,
      port: map['port'] as int,
      serviceAttachment: map['serviceAttachment'] as String,
    );
  }
}

