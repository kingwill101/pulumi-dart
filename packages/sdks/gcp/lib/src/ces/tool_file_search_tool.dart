// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolFileSearchTool {
  /// Optional. The type of the corpus. Default is FULLY_MANAGED.
  /// Possible values:
  /// CORPUS_TYPE_UNSPECIFIED
  /// USER_OWNED
  /// FULLY_MANAGED
  /// Possible values are: `CORPUS_TYPE_UNSPECIFIED`, `USER_OWNED`, `FULLY_MANAGED`.
  final pulumi.Input<String>? corpusType;
  /// Optional. The tool description.
  final pulumi.Input<String>? description;
  /// Optional. The corpus where files are stored.
  /// Format: projects/{project}/locations/{location}/ragCorpora/{rag_corpus}
  final pulumi.Input<String>? fileCorpus;
  /// Required. The tool name.
  final pulumi.Input<String> name;

  /// Creates a new [ToolFileSearchTool].
  /// [corpusType] Optional. The type of the corpus. Default is FULLY_MANAGED.
  /// [description] Optional. The tool description.
  /// [fileCorpus] Optional. The corpus where files are stored.
  /// [name] Required. The tool name.
  const ToolFileSearchTool({
    this.corpusType,
    this.description,
    this.fileCorpus,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'corpusType': ?corpusType,
      'description': ?description,
      'fileCorpus': ?fileCorpus,
      'name': name,
    };
  }

  factory ToolFileSearchTool.fromMap(Map<String, dynamic> map) {
    return ToolFileSearchTool(
      corpusType: (() { final guardedValue = map['corpusType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileCorpus: (() { final guardedValue = map['fileCorpus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
