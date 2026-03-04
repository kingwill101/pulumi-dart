// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RoutineRemoteFunctionOptions {
  /// Fully qualified name of the user-provided connection object which holds
  /// the authentication information to send requests to the remote service.
  /// Format: "projects/{projectId}/locations/{locationId}/connections/{connectionId}"
  final pulumi.Input<String>? connection;

  /// Endpoint of the user-provided remote service, e.g.
  /// `https://us-east1-my_gcf_project.cloudfunctions.net/remote_add`
  final pulumi.Input<String>? endpoint;

  /// Max number of rows in each batch sent to the remote service. If absent or if 0,
  /// BigQuery dynamically decides the number of rows in a batch.
  final pulumi.Input<String>? maxBatchingRows;

  /// User-defined context as a set of key/value pairs, which will be sent as function
  /// invocation context together with batched arguments in the requests to the remote
  /// service. The total number of bytes of keys and values must be less than 8KB.
  /// An object containing a list of "key": value pairs. Example:
  /// `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  final pulumi.Input<Map<String, String>>? userDefinedContext;

  /// Creates a new [RoutineRemoteFunctionOptions].
  /// [connection] Fully qualified name of the user-provided connection object which holds
  /// [endpoint] Endpoint of the user-provided remote service, e.g.
  /// [maxBatchingRows] Max number of rows in each batch sent to the remote service. If absent or if 0,
  /// [userDefinedContext] User-defined context as a set of key/value pairs, which will be sent as function
  RoutineRemoteFunctionOptions({
    this.connection,
    this.endpoint,
    this.maxBatchingRows,
    this.userDefinedContext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': ?connection,
      'endpoint': ?endpoint,
      'maxBatchingRows': ?maxBatchingRows,
      'userDefinedContext': ?userDefinedContext,
    };
  }

  factory RoutineRemoteFunctionOptions.fromMap(Map<String, dynamic> map) {
    return RoutineRemoteFunctionOptions(
      connection: (() {
        final guardedValue = map['connection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxBatchingRows: (() {
        final guardedValue = map['maxBatchingRows'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userDefinedContext: (() {
        final guardedValue = map['userDefinedContext'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
