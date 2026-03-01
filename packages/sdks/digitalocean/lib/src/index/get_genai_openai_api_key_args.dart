// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_genai_openai_api_key_get_genai_openai_api_key_args_doc}
/// Arguments for getGenaiOpenaiApiKey.
/// {@endtemplate}
/// {@macro pulumi_index_get_genai_openai_api_key_get_genai_openai_api_key_args_doc}
class GetGenaiOpenaiApiKeyArgs {
  final pulumi.Input<String> uuid;

  /// Creates a new [GetGenaiOpenaiApiKeyArgs].
  /// [uuid] Required.
  GetGenaiOpenaiApiKeyArgs({
    required pulumi.Output<String> uuid,
  }) :
      uuid = pulumi.Input.asInput<String>(uuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
    };
  }

  factory GetGenaiOpenaiApiKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetGenaiOpenaiApiKeyArgs(
      uuid: pulumi.Output.create<String>(map['uuid'] as String),
    );
  }
}

