// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the event to trigger.
class GoogleCloudDialogflowCxV3beta1EventInput {
  /// Name of the event.
  final pulumi.Input<String>? event;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1EventInput].
  /// [event] Name of the event.
  GoogleCloudDialogflowCxV3beta1EventInput({this.event});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'event': ?event};
  }

  factory GoogleCloudDialogflowCxV3beta1EventInput.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1EventInput(
      event: (() {
        final guardedValue = map['event'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
