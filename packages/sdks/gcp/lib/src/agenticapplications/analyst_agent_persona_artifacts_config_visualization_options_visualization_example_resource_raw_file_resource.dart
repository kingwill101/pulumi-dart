// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceRawFileResource {
  /// The raw file content.
  final pulumi.Input<String> fileContent;
  /// The title of the file.
  final pulumi.Input<String> fileTitle;
  /// The mime type of the file.
  final pulumi.Input<String> mimeType;

  /// Creates a new [AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceRawFileResource].
  /// [fileContent] The raw file content.
  /// [fileTitle] The title of the file.
  /// [mimeType] The mime type of the file.
  const AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceRawFileResource({
    required this.fileContent,
    required this.fileTitle,
    required this.mimeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileContent': fileContent,
      'fileTitle': fileTitle,
      'mimeType': mimeType,
    };
  }

  factory AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceRawFileResource.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaArtifactsConfigVisualizationOptionsVisualizationExampleResourceRawFileResource(
      fileContent: pulumi.Input.fromValue(map['fileContent'] as String),
      fileTitle: pulumi.Input.fromValue(map['fileTitle'] as String),
      mimeType: pulumi.Input.fromValue(map['mimeType'] as String),
    );
  }
}
