// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiModelDevelopmentClusterRuntimeTrainingServiceServiceStatus {
  /// (Output)
  /// Human-readable detail about the current state.
  final pulumi.Input<String?>? detail;
  /// (Output)
  /// Endpoints clients use to connect to the running service.
  final pulumi.Input<Map<String, String>?>? endpoints;
  /// (Output)
  /// The current state of the XManager instance.
  /// Possible values:
  /// PROVISIONING
  /// RUNNING
  /// DELETING
  /// ERROR
  final pulumi.Input<String?>? state;

  /// Creates a new [AiModelDevelopmentClusterRuntimeTrainingServiceServiceStatus].
  /// [detail] (Output)
  /// [endpoints] (Output)
  /// [state] (Output)
  const AiModelDevelopmentClusterRuntimeTrainingServiceServiceStatus({
    this.detail,
    this.endpoints,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detail': ?detail,
      'endpoints': ?endpoints,
      'state': ?state,
    };
  }

  factory AiModelDevelopmentClusterRuntimeTrainingServiceServiceStatus.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterRuntimeTrainingServiceServiceStatus(
      detail: (() { final guardedValue = map['detail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
