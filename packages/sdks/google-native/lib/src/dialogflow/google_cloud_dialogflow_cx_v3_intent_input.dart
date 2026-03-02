// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the intent to trigger programmatically rather than as a result of natural language processing.
class GoogleCloudDialogflowCxV3IntentInput {
  /// The unique identifier of the intent. Format: `projects//locations//agents//intents/`.
  final pulumi.Input<String> intent;

  /// Creates a new [GoogleCloudDialogflowCxV3IntentInput].
  /// [intent] The unique identifier of the intent. Format: `projects//locations//agents//intents/`.
  GoogleCloudDialogflowCxV3IntentInput({
    required this.intent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intent': intent,
    };
  }

  factory GoogleCloudDialogflowCxV3IntentInput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3IntentInput(
      intent: (map['intent'] as String).input(),
    );
  }
}

