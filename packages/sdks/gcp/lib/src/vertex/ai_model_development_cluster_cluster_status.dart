// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_model_development_cluster_cluster_status_error.dart';
import 'ai_model_development_cluster_cluster_status_nodes_status.dart';

class AiModelDevelopmentClusterClusterStatus {
  /// (Output)
  /// Human-readable detail about the current state.
  final pulumi.Input<String?>? detail;
  /// (Output)
  /// The `Status` type defines a logical error model that is suitable for
  /// different programming environments, including REST APIs and RPC APIs. It is
  /// used by [gRPC](https://github.com/grpc). Each `Status` message contains
  /// three pieces of data: error code, error message, and error details.
  /// You can find out more about this error model and how to work with it in the
  /// [API Design Guide](https://cloud.google.com/apis/design/errors).
  /// Structure is documented below.
  final pulumi.Input<List<AiModelDevelopmentClusterClusterStatusError>?>? errors;
  /// (Output)
  /// The status information of all the nodes in the cluster.
  /// Structure is documented below.
  final pulumi.Input<List<AiModelDevelopmentClusterClusterStatusNodesStatus>?>? nodesStatuses;
  /// (Output)
  /// The current state of the XManager instance.
  /// Possible values:
  /// PROVISIONING
  /// RUNNING
  /// DELETING
  /// ERROR
  final pulumi.Input<String?>? state;

  /// Creates a new [AiModelDevelopmentClusterClusterStatus].
  /// [detail] (Output)
  /// [errors] (Output)
  /// [nodesStatuses] (Output)
  /// [state] (Output)
  const AiModelDevelopmentClusterClusterStatus({
    this.detail,
    this.errors,
    this.nodesStatuses,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detail': ?detail,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<AiModelDevelopmentClusterClusterStatusError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<AiModelDevelopmentClusterClusterStatusError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodesStatuses': ?pulumi.Input.mapOptionalInputValue<List<AiModelDevelopmentClusterClusterStatusNodesStatus>, List<Map<String, dynamic>>>(nodesStatuses, (value) => pulumi.Input.encodeList<AiModelDevelopmentClusterClusterStatusNodesStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
    };
  }

  factory AiModelDevelopmentClusterClusterStatus.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterClusterStatus(
      detail: (() { final guardedValue = map['detail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiModelDevelopmentClusterClusterStatusError>(guardedValue, (value) => AiModelDevelopmentClusterClusterStatusError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodesStatuses: (() { final guardedValue = map['nodesStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiModelDevelopmentClusterClusterStatusNodesStatus>(guardedValue, (value) => AiModelDevelopmentClusterClusterStatusNodesStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
