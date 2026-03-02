// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options for a remote user-defined function.
class RemoteFunctionOptionsResponse {
  /// Fully qualified name of the user-provided connection object which holds the authentication information to send requests to the remote service. Format: ```"projects/{projectId}/locations/{locationId}/connections/{connectionId}"```
  final pulumi.Input<String> connection;
  /// Endpoint of the user-provided remote service, e.g. ```https://us-east1-my_gcf_project.cloudfunctions.net/remote_add```
  final pulumi.Input<String> endpoint;
  /// Max number of rows in each batch sent to the remote service. If absent or if 0, BigQuery dynamically decides the number of rows in a batch.
  final pulumi.Input<String> maxBatchingRows;
  /// User-defined context as a set of key/value pairs, which will be sent as function invocation context together with batched arguments in the requests to the remote service. The total number of bytes of keys and values must be less than 8KB.
  final pulumi.Input<Map<String, String>> userDefinedContext;

  /// Creates a new [RemoteFunctionOptionsResponse].
  /// [connection] Fully qualified name of the user-provided connection object which holds the authentication information to send requests to the remote service. Format: ```"projects/{projectId}/locations/{locationId}/connections/{connectionId}"```
  /// [endpoint] Endpoint of the user-provided remote service, e.g. ```https://us-east1-my_gcf_project.cloudfunctions.net/remote_add```
  /// [maxBatchingRows] Max number of rows in each batch sent to the remote service. If absent or if 0, BigQuery dynamically decides the number of rows in a batch.
  /// [userDefinedContext] User-defined context as a set of key/value pairs, which will be sent as function invocation context together with batched arguments in the requests to the remote service. The total number of bytes of keys and values must be less than 8KB.
  RemoteFunctionOptionsResponse({
    required this.connection,
    required this.endpoint,
    required this.maxBatchingRows,
    required this.userDefinedContext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': connection,
      'endpoint': endpoint,
      'maxBatchingRows': maxBatchingRows,
      'userDefinedContext': userDefinedContext,
    };
  }

  factory RemoteFunctionOptionsResponse.fromMap(Map<String, dynamic> map) {
    return RemoteFunctionOptionsResponse(
      connection: (map['connection'] as String).input(),
      endpoint: (map['endpoint'] as String).input(),
      maxBatchingRows: (map['maxBatchingRows'] as String).input(),
      userDefinedContext: ((map['userDefinedContext'] as Map).cast<String, String>()).input(),
    );
  }
}

