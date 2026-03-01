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
    pulumi.Output<String>? processor,
    pulumi.Output<String>? version,
  }) :
      processor = pulumi.Input.asOptionalInput<String>(processor),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'processor': ?processor,
      'version': ?version,
    };
  }

  factory DocumentAiProcessorDefaultVersionState.fromMap(Map<String, dynamic> map) {
    return DocumentAiProcessorDefaultVersionState(
      processor: map['processor'] == null ? null : pulumi.Output.create<String>(map['processor'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

