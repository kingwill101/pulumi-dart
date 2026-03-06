// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the event to trigger.
class GoogleCloudDialogflowCxV3EventInput {
  /// Name of the event.
  final pulumi.Input<String>? event;

  /// Creates a new [GoogleCloudDialogflowCxV3EventInput].
  /// [event] Name of the event.
  const GoogleCloudDialogflowCxV3EventInput({
    this.event,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'event': ?event,
    };
  }

  factory GoogleCloudDialogflowCxV3EventInput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3EventInput(
      event: (() { final guardedValue = map['event']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

