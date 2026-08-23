// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineSpecSourceCodeSpecAgentConfigSourceInlineSource {
  /// Required. Input only. The application source code archive, provided as a compressed tarball (.tar.gz) file.
  final pulumi.Input<String> sourceArchive;

  /// Creates a new [AiReasoningEngineSpecSourceCodeSpecAgentConfigSourceInlineSource].
  /// [sourceArchive] Required. Input only. The application source code archive, provided as a compressed tarball (.tar.gz) file.
  const AiReasoningEngineSpecSourceCodeSpecAgentConfigSourceInlineSource({
    required this.sourceArchive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceArchive': sourceArchive,
    };
  }

  factory AiReasoningEngineSpecSourceCodeSpecAgentConfigSourceInlineSource.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecSourceCodeSpecAgentConfigSourceInlineSource(
      sourceArchive: pulumi.Input.fromValue(map['sourceArchive'] as String),
    );
  }
}
