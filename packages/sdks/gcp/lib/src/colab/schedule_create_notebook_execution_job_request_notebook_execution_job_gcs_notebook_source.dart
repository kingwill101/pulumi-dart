// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource {
  /// The version of the Cloud Storage object to read. If unset, the current version of the object is read. See https://cloud.google.com/storage/docs/metadata#generation-number.
  final pulumi.Input<String>? generation;
  /// The Cloud Storage uri pointing to the ipynb file. Format: gs://bucket/notebook_file.ipynb
  final pulumi.Input<String> uri;

  /// Creates a new [ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource].
  /// [generation] The version of the Cloud Storage object to read. If unset, the current version of the object is read. See https://cloud.google.com/storage/docs/metadata#generation-number.
  /// [uri] The Cloud Storage uri pointing to the ipynb file. Format: gs://bucket/notebook_file.ipynb
  const ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource({
    this.generation,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'generation': ?generation,
      'uri': uri,
    };
  }

  factory ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource.fromMap(Map<String, dynamic> map) {
    return ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource(
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
