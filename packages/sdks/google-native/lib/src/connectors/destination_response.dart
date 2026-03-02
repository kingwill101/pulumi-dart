// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DestinationResponse {
  /// For publicly routable host.
  final pulumi.Input<String> host;
  /// The port is the target port number that is accepted by the destination.
  final pulumi.Input<int> port;
  /// PSC service attachments. Format: projects/*/regions/*/serviceAttachments/*
  final pulumi.Input<String> serviceAttachment;

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
      host: (map['host'] as String).input(),
      port: (map['port'] as int).input(),
      serviceAttachment: (map['serviceAttachment'] as String).input(),
    );
  }
}

