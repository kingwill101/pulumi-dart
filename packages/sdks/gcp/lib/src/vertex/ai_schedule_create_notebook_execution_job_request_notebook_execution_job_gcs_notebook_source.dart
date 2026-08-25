// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource {
  /// The version of the Cloud Storage object to read. If unset, the current version of the object is read. See https://cloud.google.com/storage/docs/metadata#generation-number.
  final pulumi.Input<String?>? generation;
  /// The Cloud Storage uri pointing to the ipynb file. Format: `gs://bucket/notebook_file.ipynb`
  final pulumi.Input<String?>? uri;

  /// Creates a new [AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource].
  /// [generation] The version of the Cloud Storage object to read. If unset, the current version of the object is read. See https://cloud.google.com/storage/docs/metadata#generation-number.
  /// [uri] The Cloud Storage uri pointing to the ipynb file. Format: `gs://bucket/notebook_file.ipynb`
  const AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource({
    this.generation,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generation': ?generation,
      'uri': ?uri,
    };
  }

  factory AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource.fromMap(Map<String, dynamic> map) {
    return AiScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource(
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
