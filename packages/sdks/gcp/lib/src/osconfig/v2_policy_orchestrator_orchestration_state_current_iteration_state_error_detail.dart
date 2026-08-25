// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2PolicyOrchestratorOrchestrationStateCurrentIterationStateErrorDetail {
  /// A URL/resource name that uniquely identifies the type of the serialized protocol buffer message
  final pulumi.Input<String?>? typeUrl;
  /// (Optional)
  final pulumi.Input<String?>? value;

  /// Creates a new [V2PolicyOrchestratorOrchestrationStateCurrentIterationStateErrorDetail].
  /// [typeUrl] A URL/resource name that uniquely identifies the type of the serialized protocol buffer message
  /// [value] (Optional)
  const V2PolicyOrchestratorOrchestrationStateCurrentIterationStateErrorDetail({
    this.typeUrl,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'typeUrl': ?typeUrl,
      'value': ?value,
    };
  }

  factory V2PolicyOrchestratorOrchestrationStateCurrentIterationStateErrorDetail.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestrationStateCurrentIterationStateErrorDetail(
      typeUrl: (() { final guardedValue = map['typeUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
