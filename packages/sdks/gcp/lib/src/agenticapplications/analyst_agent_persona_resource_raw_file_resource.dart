// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AnalystAgentPersonaResourceRawFileResource {
  /// The raw file content.
  final pulumi.Input<String> fileContent;
  /// The title of the file.
  final pulumi.Input<String> fileTitle;
  /// The mime type of the file.
  final pulumi.Input<String> mimeType;

  /// Creates a new [AnalystAgentPersonaResourceRawFileResource].
  /// [fileContent] The raw file content.
  /// [fileTitle] The title of the file.
  /// [mimeType] The mime type of the file.
  const AnalystAgentPersonaResourceRawFileResource({
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

  factory AnalystAgentPersonaResourceRawFileResource.fromMap(Map<String, dynamic> map) {
    return AnalystAgentPersonaResourceRawFileResource(
      fileContent: pulumi.Input.fromValue(map['fileContent'] as String),
      fileTitle: pulumi.Input.fromValue(map['fileTitle'] as String),
      mimeType: pulumi.Input.fromValue(map['mimeType'] as String),
    );
  }
}
