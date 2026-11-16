// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiRagFileGcsSource {
  /// The Cloud Storage URI of the file to import, for example
  /// `gs://my-bucket/my-file.pdf`. Must reference a single file; directories
  /// and wildcards are not supported because each resource manages one RagFile.
  final pulumi.Input<String> uris;

  /// Creates a new [AiRagFileGcsSource].
  /// [uris] The Cloud Storage URI of the file to import, for example
  const AiRagFileGcsSource({
    required this.uris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uris': uris,
    };
  }

  factory AiRagFileGcsSource.fromMap(Map<String, dynamic> map) {
    return AiRagFileGcsSource(
      uris: pulumi.Input.fromValue(map['uris'] as String),
    );
  }
}
