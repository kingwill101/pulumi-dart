// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_model_development_cluster_runtime_xmanager_error.dart';

class AiModelDevelopmentClusterRuntimeXmanager {
  /// (Output)
  /// The gRPC API endpoint (Experiment State Server) of the
  /// XManager instance. Empty unless the instance is running.
  final pulumi.Input<String?>? apiEndpoint;
  /// (Output)
  /// The `Status` type defines a logical error model that is suitable for
  /// different programming environments, including REST APIs and RPC APIs. It is
  /// used by [gRPC](https://github.com/grpc). Each `Status` message contains
  /// three pieces of data: error code, error message, and error details.
  /// You can find out more about this error model and how to work with it in the
  /// [API Design Guide](https://cloud.google.com/apis/design/errors).
  /// Structure is documented below.
  final pulumi.Input<List<AiModelDevelopmentClusterRuntimeXmanagerError>?>? errors;
  /// (Output)
  /// The XManager instance ID (for example, "xmc-").
  final pulumi.Input<String?>? instanceId;
  /// (Output)
  /// The current state of the XManager instance.
  /// Possible values:
  /// PROVISIONING
  /// RUNNING
  /// DELETING
  /// ERROR
  final pulumi.Input<String?>? state;
  /// (Output)
  /// The UI endpoint of the XManager instance. Empty unless the
  /// instance is running.
  final pulumi.Input<String?>? uiEndpoint;

  /// Creates a new [AiModelDevelopmentClusterRuntimeXmanager].
  /// [apiEndpoint] (Output)
  /// [errors] (Output)
  /// [instanceId] (Output)
  /// [state] (Output)
  /// [uiEndpoint] (Output)
  const AiModelDevelopmentClusterRuntimeXmanager({
    this.apiEndpoint,
    this.errors,
    this.instanceId,
    this.state,
    this.uiEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiEndpoint': ?apiEndpoint,
      'errors': ?pulumi.Input.mapOptionalInputValue<List<AiModelDevelopmentClusterRuntimeXmanagerError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<AiModelDevelopmentClusterRuntimeXmanagerError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceId': ?instanceId,
      'state': ?state,
      'uiEndpoint': ?uiEndpoint,
    };
  }

  factory AiModelDevelopmentClusterRuntimeXmanager.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterRuntimeXmanager(
      apiEndpoint: (() { final guardedValue = map['apiEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiModelDevelopmentClusterRuntimeXmanagerError>(guardedValue, (value) => AiModelDevelopmentClusterRuntimeXmanagerError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uiEndpoint: (() { final guardedValue = map['uiEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
