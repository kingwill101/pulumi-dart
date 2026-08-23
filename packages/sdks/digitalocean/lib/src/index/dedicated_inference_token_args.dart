// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_dedicated_inference_token_dedicated_inference_token_args_doc}
/// The set of arguments for DedicatedInferenceToken.
/// {@endtemplate}
/// {@macro pulumi_index_dedicated_inference_token_dedicated_inference_token_args_doc}
class DedicatedInferenceTokenArgs {
  /// The ID of the dedicated inference endpoint this token belongs to. Changing this forces a new resource.
  final pulumi.Input<String> dedicatedInferenceId;
  /// A human-readable name for the token. Changing this forces a new resource.
  final pulumi.Input<String>? name;

  /// Creates a new [DedicatedInferenceTokenArgs].
  /// [dedicatedInferenceId] The ID of the dedicated inference endpoint this token belongs to. Changing this forces a new resource.
  /// [name] A human-readable name for the token. Changing this forces a new resource.
  const DedicatedInferenceTokenArgs({
    required this.dedicatedInferenceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedInferenceId': dedicatedInferenceId,
      'name': ?name,
    };
  }

  factory DedicatedInferenceTokenArgs.fromMap(Map<String, dynamic> map) {
    return DedicatedInferenceTokenArgs(
      dedicatedInferenceId: pulumi.Input.fromValue(map['dedicatedInferenceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
