// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiPipelineJobTemplateMetadata {
  /// (Output)
  /// The versionName in artifact registry.
  final pulumi.Input<String?>? version;

  /// Creates a new [AiPipelineJobTemplateMetadata].
  /// [version] (Output)
  const AiPipelineJobTemplateMetadata({
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': ?version,
    };
  }

  factory AiPipelineJobTemplateMetadata.fromMap(Map<String, dynamic> map) {
    return AiPipelineJobTemplateMetadata(
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
