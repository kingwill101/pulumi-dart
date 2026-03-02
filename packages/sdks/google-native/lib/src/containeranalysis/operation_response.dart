// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_response_containeranalysis_v1alpha1.dart';

/// This resource represents a long-running operation that is the result of a network API call.
class OperationResponse {
  /// If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.
  final pulumi.Input<bool> done;
  /// The error result of the operation in case of failure or cancellation.
  final pulumi.Input<StatusResponseContaineranalysisV1alpha1> error;
  /// Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
  final pulumi.Input<Map<String, String>> metadata;
  /// The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the `name` should be a resource name ending with `operations/{unique_id}`.
  final pulumi.Input<String> name;
  /// The normal, successful response of the operation. If the original method returns no data on success, such as `Delete`, the response is `google.protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`, the response should be the resource. For other methods, the response should have the type `XxxResponse`, where `Xxx` is the original method name. For example, if the original method name is `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  final pulumi.Input<Map<String, String>> response;

  /// Creates a new [OperationResponse].
  /// [done] If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.
  /// [error] The error result of the operation in case of failure or cancellation.
  /// [metadata] Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.
  /// [name] The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the `name` should be a resource name ending with `operations/{unique_id}`.
  /// [response] The normal, successful response of the operation. If the original method returns no data on success, such as `Delete`, the response is `google.protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`, the response should be the resource. For other methods, the response should have the type `XxxResponse`, where `Xxx` is the original method name. For example, if the original method name is `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  OperationResponse({
    required this.done,
    required this.error,
    required this.metadata,
    required this.name,
    required this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'done': done,
      'error': pulumi.Input.mapInputValue<StatusResponseContaineranalysisV1alpha1, Map<String, dynamic>>(error, (value) => value.toMap()),
      'metadata': metadata,
      'name': name,
      'response': response,
    };
  }

  factory OperationResponse.fromMap(Map<String, dynamic> map) {
    return OperationResponse(
      done: (map['done'] as bool).input(),
      error: (StatusResponseContaineranalysisV1alpha1.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      metadata: ((map['metadata'] as Map).cast<String, String>()).input(),
      name: (map['name'] as String).input(),
      response: ((map['response'] as Map).cast<String, String>()).input(),
    );
  }
}

