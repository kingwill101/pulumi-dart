// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'preprocessing_config.dart';

/// Input asset.
class InputType {
  /// A unique key for this input. Must be specified when using advanced mapping and edit lists.
  final pulumi.Input<String>? key;
  /// Preprocessing configurations.
  final pulumi.Input<PreprocessingConfig>? preprocessingConfig;
  /// URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). If empty, the value is populated from Job.input_uri. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  final pulumi.Input<String>? uri;

  /// Creates a new [InputType].
  /// [key] A unique key for this input. Must be specified when using advanced mapping and edit lists.
  /// [preprocessingConfig] Preprocessing configurations.
  /// [uri] URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). If empty, the value is populated from Job.input_uri. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  const InputType({
    this.key,
    this.preprocessingConfig,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'preprocessingConfig': ?pulumi.Input.mapOptionalInputValue<PreprocessingConfig, Map<String, dynamic>>(preprocessingConfig, (value) => value.toMap()),
      'uri': ?uri,
    };
  }

  factory InputType.fromMap(Map<String, dynamic> map) {
    return InputType(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preprocessingConfig: (() { final guardedValue = map['preprocessingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreprocessingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

