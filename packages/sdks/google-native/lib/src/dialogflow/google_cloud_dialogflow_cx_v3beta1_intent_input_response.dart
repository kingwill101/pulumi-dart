// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the intent to trigger programmatically rather than as a result of natural language processing.
class GoogleCloudDialogflowCxV3beta1IntentInputResponse {
  /// The unique identifier of the intent. Format: `projects//locations//agents//intents/`.
  final pulumi.Input<String> intent;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1IntentInputResponse].
  /// [intent] The unique identifier of the intent. Format: `projects//locations//agents//intents/`.
  GoogleCloudDialogflowCxV3beta1IntentInputResponse({required this.intent});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'intent': intent};
  }

  factory GoogleCloudDialogflowCxV3beta1IntentInputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1IntentInputResponse(
      intent: pulumi.Input.fromValue(map['intent'] as String),
    );
  }
}
