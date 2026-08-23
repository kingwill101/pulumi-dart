// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VectorDatabaseEndpoint {
  /// The gRPC endpoint used to connect to the vector database.
  final pulumi.Input<String>? grpc;
  /// The HTTP endpoint used to connect to the vector database.
  final pulumi.Input<String>? http;

  /// Creates a new [VectorDatabaseEndpoint].
  /// [grpc] The gRPC endpoint used to connect to the vector database.
  /// [http] The HTTP endpoint used to connect to the vector database.
  const VectorDatabaseEndpoint({
    this.grpc,
    this.http,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpc': ?grpc,
      'http': ?http,
    };
  }

  factory VectorDatabaseEndpoint.fromMap(Map<String, dynamic> map) {
    return VectorDatabaseEndpoint(
      grpc: (() { final guardedValue = map['grpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
