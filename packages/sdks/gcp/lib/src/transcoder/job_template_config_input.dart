// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateConfigInput {
  /// A unique key for this input. Must be specified when using advanced mapping and edit lists.
  final pulumi.Input<String>? key;
  /// URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, gs://bucket/inputs/file.mp4).
  /// If empty, the value is populated from Job.input_uri.
  final pulumi.Input<String>? uri;

  /// Creates a new [JobTemplateConfigInput].
  /// [key] A unique key for this input. Must be specified when using advanced mapping and edit lists.
  /// [uri] URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, gs://bucket/inputs/file.mp4).
  JobTemplateConfigInput({
    this.key,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'uri': ?uri,
    };
  }

  factory JobTemplateConfigInput.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigInput(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
    );
  }
}

