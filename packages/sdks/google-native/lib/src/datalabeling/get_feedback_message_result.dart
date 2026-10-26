// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFeedbackMessage.
class GetFeedbackMessageResult {
  /// String content of the feedback. Maximum of 10000 characters.
  final String? body;
  /// Create time.
  final String? createTime;
  /// The image storing this feedback if the feedback is an image representing operator's comments.
  final String? image;
  /// Name of the feedback message in a feedback thread. Format: 'project/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}/feedbackThreads/{feedback_thread_id}/feedbackMessage/{feedback_message_id}'
  final String? name;
  final Map<String, dynamic>? operatorFeedbackMetadata;
  final Map<String, dynamic>? requesterFeedbackMetadata;

  /// Creates a new [GetFeedbackMessageResult].
  /// [body] String content of the feedback. Maximum of 10000 characters.
  /// [createTime] Create time.
  /// [image] The image storing this feedback if the feedback is an image representing operator's comments.
  /// [name] Name of the feedback message in a feedback thread. Format: 'project/{project_id}/datasets/{dataset_id}/annotatedDatasets/{annotated_dataset_id}/feedbackThreads/{feedback_thread_id}/feedbackMessage/{feedback_message_id}'
  /// [operatorFeedbackMetadata] Optional.
  /// [requesterFeedbackMetadata] Optional.
  const GetFeedbackMessageResult({
    this.body,
    this.createTime,
    this.image,
    this.name,
    this.operatorFeedbackMetadata,
    this.requesterFeedbackMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'createTime': ?createTime,
      'image': ?image,
      'name': ?name,
      'operatorFeedbackMetadata': ?operatorFeedbackMetadata,
      'requesterFeedbackMetadata': ?requesterFeedbackMetadata,
    };
  }

  factory GetFeedbackMessageResult.fromMap(Map<String, dynamic> map) {
    return GetFeedbackMessageResult(
      body: (() { final guardedValue = map['body']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operatorFeedbackMetadata: (() { final guardedValue = map['operatorFeedbackMetadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
      requesterFeedbackMetadata: (() { final guardedValue = map['requesterFeedbackMetadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, dynamic>(); })(),
    );
  }
}
