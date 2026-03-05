// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineSpecSourceCodeSpecInlineSource {
  /// Required. Input only.
  /// The application source code archive, provided as a compressed
  /// tarball (.tar.gz) file. A base64-encoded string.
  final pulumi.Input<String>? sourceArchive;

  /// Creates a new [AiReasoningEngineSpecSourceCodeSpecInlineSource].
  /// [sourceArchive] Required. Input only.
  AiReasoningEngineSpecSourceCodeSpecInlineSource({
    this.sourceArchive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceArchive': ?sourceArchive,
    };
  }

  factory AiReasoningEngineSpecSourceCodeSpecInlineSource.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecSourceCodeSpecInlineSource(
      sourceArchive: (() { final guardedValue = map['sourceArchive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

