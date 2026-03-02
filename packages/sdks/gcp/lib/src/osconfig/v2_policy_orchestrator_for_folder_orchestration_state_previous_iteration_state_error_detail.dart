// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationStateErrorDetail {
  /// (Output)
  /// A URL/resource name that uniquely identifies the type of the serialized protocol buffer message
  final pulumi.Input<String>? typeUrl;
  /// (Output)
  final pulumi.Input<String>? value;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationStateErrorDetail].
  /// [typeUrl] (Output)
  /// [value] (Output)
  V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationStateErrorDetail({
    this.typeUrl,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'typeUrl': ?typeUrl,
      'value': ?value,
    };
  }

  factory V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationStateErrorDetail.fromMap(Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestrationStatePreviousIterationStateErrorDetail(
      typeUrl: map['typeUrl'] == null ? null : (map['typeUrl']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

