// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_gradientai_custom_model_get_gradientai_custom_model_args_doc}
/// Arguments for getGradientaiCustomModel.
/// {@endtemplate}
/// {@macro pulumi_index_get_gradientai_custom_model_get_gradientai_custom_model_args_doc}
class GetGradientaiCustomModelArgs {
  final pulumi.Input<String> uuid;

  /// Creates a new [GetGradientaiCustomModelArgs].
  /// [uuid] Required.
  const GetGradientaiCustomModelArgs({
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
    };
  }

  factory GetGradientaiCustomModelArgs.fromMap(Map<String, dynamic> map) {
    return GetGradientaiCustomModelArgs(
      uuid: pulumi.Input.fromValue(map['uuid'] as String),
    );
  }
}
