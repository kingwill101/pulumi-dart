// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_essentialcontacts_document_ai_processor_default_version_document_ai_processor_default_version_args_doc}
/// The set of arguments for DocumentAiProcessorDefaultVersion.
/// {@endtemplate}
/// {@macro pulumi_essentialcontacts_document_ai_processor_default_version_document_ai_processor_default_version_args_doc}
class DocumentAiProcessorDefaultVersionArgs {
  /// The processor to set the version on.
  final pulumi.Input<String> processor;
  /// The version to set. Using `stable` or `rc` will cause the API to return the latest version in that release channel.
  /// Apply `lifecycle.ignore_changes` to the `version` field to suppress this diff.
  final pulumi.Input<String> version;

  /// Creates a new [DocumentAiProcessorDefaultVersionArgs].
  /// [processor] The processor to set the version on.
  /// [version] The version to set. Using `stable` or `rc` will cause the API to return the latest version in that release channel.
  const DocumentAiProcessorDefaultVersionArgs({
    required this.processor,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'processor': processor,
      'version': version,
    };
  }

  factory DocumentAiProcessorDefaultVersionArgs.fromMap(Map<String, dynamic> map) {
    return DocumentAiProcessorDefaultVersionArgs(
      processor: pulumi.Input.fromValue(map['processor'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

