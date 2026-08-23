// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_dedicated_inference_get_dedicated_inference_args_doc}
/// Arguments for getDedicatedInference.
/// {@endtemplate}
/// {@macro pulumi_index_get_dedicated_inference_get_dedicated_inference_args_doc}
class GetDedicatedInferenceArgs {
  /// The ID of the dedicated inference endpoint.
  final pulumi.Input<String> id;

  /// Creates a new [GetDedicatedInferenceArgs].
  /// [id] The ID of the dedicated inference endpoint.
  const GetDedicatedInferenceArgs({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetDedicatedInferenceArgs.fromMap(Map<String, dynamic> map) {
    return GetDedicatedInferenceArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
