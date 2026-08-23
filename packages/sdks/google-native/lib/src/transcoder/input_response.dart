// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'preprocessing_config_response.dart';

/// Input asset.
class InputResponse {
  /// A unique key for this input. Must be specified when using advanced mapping and edit lists.
  final pulumi.Input<String> key;
  /// Preprocessing configurations.
  final pulumi.Input<PreprocessingConfigResponse> preprocessingConfig;
  /// URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). If empty, the value is populated from Job.input_uri. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  final pulumi.Input<String> uri;

  /// Creates a new [InputResponse].
  /// [key] A unique key for this input. Must be specified when using advanced mapping and edit lists.
  /// [preprocessingConfig] Preprocessing configurations.
  /// [uri] URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). If empty, the value is populated from Job.input_uri. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  const InputResponse({
    required this.key,
    required this.preprocessingConfig,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'preprocessingConfig': pulumi.Input.mapInputValue<PreprocessingConfigResponse, Map<String, dynamic>>(preprocessingConfig, (value) => value.toMap()),
      'uri': uri,
    };
  }

  factory InputResponse.fromMap(Map<String, dynamic> map) {
    return InputResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      preprocessingConfig: pulumi.Input.fromValue(PreprocessingConfigResponse.fromMap((map['preprocessingConfig']! as Map).cast<String, dynamic>())),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
