// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVectorDatabaseEndpoint {
  /// The gRPC endpoint used to connect to the vector database.
  final pulumi.Input<String> grpc;
  /// The HTTP endpoint used to connect to the vector database.
  final pulumi.Input<String> http;

  /// Creates a new [GetVectorDatabaseEndpoint].
  /// [grpc] The gRPC endpoint used to connect to the vector database.
  /// [http] The HTTP endpoint used to connect to the vector database.
  const GetVectorDatabaseEndpoint({
    required this.grpc,
    required this.http,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpc': grpc,
      'http': http,
    };
  }

  factory GetVectorDatabaseEndpoint.fromMap(Map<String, dynamic> map) {
    return GetVectorDatabaseEndpoint(
      grpc: pulumi.Input.fromValue(map['grpc'] as String),
      http: pulumi.Input.fromValue(map['http'] as String),
    );
  }
}
