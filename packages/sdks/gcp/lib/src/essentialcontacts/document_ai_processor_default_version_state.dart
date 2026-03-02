// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DocumentAiProcessorDefaultVersion resources.
class DocumentAiProcessorDefaultVersionState {
  /// The processor to set the version on.
  final pulumi.Input<String>? processor;
  /// The version to set. Using `stable` or `rc` will cause the API to return the latest version in that release channel.
  /// Apply `lifecycle.ignore_changes` to the `version` field to suppress this diff.
  final pulumi.Input<String>? version;

  /// Creates a new [DocumentAiProcessorDefaultVersionState].
  /// [processor] The processor to set the version on.
  /// [version] The version to set. Using `stable` or `rc` will cause the API to return the latest version in that release channel.
  DocumentAiProcessorDefaultVersionState({
    this.processor,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'processor': ?processor,
      'version': ?version,
    };
  }

  factory DocumentAiProcessorDefaultVersionState.fromMap(Map<String, dynamic> map) {
    return DocumentAiProcessorDefaultVersionState(
      processor: map['processor'] == null ? null : (map['processor'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

