// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationStateErrorDetail {
  /// A URL/resource name that uniquely identifies the type of the serialized protocol buffer message
  final pulumi.Input<String>? typeUrl;
  /// (Optional)
  final pulumi.Input<String>? value;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationStateErrorDetail].
  /// [typeUrl] A URL/resource name that uniquely identifies the type of the serialized protocol buffer message
  /// [value] (Optional)
  const V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationStateErrorDetail({
    this.typeUrl,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'typeUrl': ?typeUrl,
      'value': ?value,
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationStateErrorDetail.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestrationStatePreviousIterationStateErrorDetail(
      typeUrl: (() { final guardedValue = map['typeUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
