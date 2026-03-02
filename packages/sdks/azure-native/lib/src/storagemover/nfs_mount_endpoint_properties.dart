// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of NFS share endpoint.
class NfsMountEndpointProperties {
  /// A description for the Endpoint.
  final pulumi.Input<String>? description;
  /// The Endpoint resource type.
  /// Expected value is 'NfsMount'.
  final pulumi.Input<String> endpointType;
  /// The directory being exported from the server.
  final pulumi.Input<String> export;
  /// The host name or IP address of the server exporting the file system.
  final pulumi.Input<String> host;
  /// The NFS protocol version.
  final pulumi.Input<String>? nfsVersion;

  /// Creates a new [NfsMountEndpointProperties].
  /// [description] A description for the Endpoint.
  /// [endpointType] The Endpoint resource type.
  /// [export] The directory being exported from the server.
  /// [host] The host name or IP address of the server exporting the file system.
  /// [nfsVersion] The NFS protocol version.
  NfsMountEndpointProperties({
    this.description,
    required this.endpointType,
    required this.export,
    required this.host,
    this.nfsVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endpointType': endpointType,
      'export': export,
      'host': host,
      'nfsVersion': ?nfsVersion,
    };
  }

  factory NfsMountEndpointProperties.fromMap(Map<String, dynamic> map) {
    return NfsMountEndpointProperties(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      endpointType: (map['endpointType'] as String).input(),
      export: (map['export'] as String).input(),
      host: (map['host'] as String).input(),
      nfsVersion: map['nfsVersion'] == null ? null : (map['nfsVersion'] as String).input(),
    );
  }
}

