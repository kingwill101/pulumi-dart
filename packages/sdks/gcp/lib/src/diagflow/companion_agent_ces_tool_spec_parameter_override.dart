// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CompanionAgentCesToolSpecParameterOverride {
  /// The key of the context reference in ingested context references.
  final pulumi.Input<String> contextReferenceKey;
  /// The path into the JSON object of the latest content ingested under `contextReferenceKey` (e.g. `email` or `user.email`). If omitted, the entire content under `contextReferenceKey` is used.
  /// If the path cannot be resolved when the tool is called, the value predicted by the model is used (or omitted if the model did not predict it).
  final pulumi.Input<String?>? fieldPath;
  /// The name of the tool input parameter to override, as defined in the tool's input schema. For example, `userEmail`.
  final pulumi.Input<String> parameterName;

  /// Creates a new [CompanionAgentCesToolSpecParameterOverride].
  /// [contextReferenceKey] The key of the context reference in ingested context references.
  /// [fieldPath] The path into the JSON object of the latest content ingested under `contextReferenceKey` (e.g. `email` or `user.email`). If omitted, the entire content under `contextReferenceKey` is used.
  /// [parameterName] The name of the tool input parameter to override, as defined in the tool's input schema. For example, `userEmail`.
  const CompanionAgentCesToolSpecParameterOverride({
    required this.contextReferenceKey,
    this.fieldPath,
    required this.parameterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contextReferenceKey': contextReferenceKey,
      'fieldPath': ?fieldPath,
      'parameterName': parameterName,
    };
  }

  factory CompanionAgentCesToolSpecParameterOverride.fromMap(Map<String, dynamic> map) {
    return CompanionAgentCesToolSpecParameterOverride(
      contextReferenceKey: pulumi.Input.fromValue(map['contextReferenceKey'] as String),
      fieldPath: (() { final guardedValue = map['fieldPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterName: pulumi.Input.fromValue(map['parameterName'] as String),
    );
  }
}
