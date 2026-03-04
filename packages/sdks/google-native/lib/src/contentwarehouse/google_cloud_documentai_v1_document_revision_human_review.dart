// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Human Review information of the document.
class GoogleCloudDocumentaiV1DocumentRevisionHumanReview {
  /// Human review state. e.g. `requested`, `succeeded`, `rejected`.
  final pulumi.Input<String>? state;

  /// A message providing more details about the current state of processing. For example, the rejection reason when the state is `rejected`.
  final pulumi.Input<String>? stateMessage;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentRevisionHumanReview].
  /// [state] Human review state. e.g. `requested`, `succeeded`, `rejected`.
  /// [stateMessage] A message providing more details about the current state of processing. For example, the rejection reason when the state is `rejected`.
  GoogleCloudDocumentaiV1DocumentRevisionHumanReview({
    this.state,
    this.stateMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': ?state, 'stateMessage': ?stateMessage};
  }

  factory GoogleCloudDocumentaiV1DocumentRevisionHumanReview.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentRevisionHumanReview(
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stateMessage: (() {
        final guardedValue = map['stateMessage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
