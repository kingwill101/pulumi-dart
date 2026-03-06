// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NotebookExecutionGcsNotebookSource {
  /// The version of the Cloud Storage object to read. If unset, the current version of the object is read. See https://cloud.google.com/storage/docs/metadata#generation-number.
  final pulumi.Input<String>? generation;
  /// The Cloud Storage uri pointing to the ipynb file.
  final pulumi.Input<String> uri;

  /// Creates a new [NotebookExecutionGcsNotebookSource].
  /// [generation] The version of the Cloud Storage object to read. If unset, the current version of the object is read. See https://cloud.google.com/storage/docs/metadata#generation-number.
  /// [uri] The Cloud Storage uri pointing to the ipynb file.
  const NotebookExecutionGcsNotebookSource({
    this.generation,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generation': ?generation,
      'uri': uri,
    };
  }

  factory NotebookExecutionGcsNotebookSource.fromMap(Map<String, dynamic> map) {
    return NotebookExecutionGcsNotebookSource(
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

