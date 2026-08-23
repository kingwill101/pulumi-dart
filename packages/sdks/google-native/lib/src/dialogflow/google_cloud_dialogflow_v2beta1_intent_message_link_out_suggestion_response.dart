// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The suggestion chip message that allows the user to jump out to the app or website associated with this agent.
class GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestionResponse {
  /// The name of the app or site this chip is linking to.
  final pulumi.Input<String> destinationName;
  /// The URI of the app or site to open when the user taps the suggestion chip.
  final pulumi.Input<String> uri;

  /// Creates a new [GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestionResponse].
  /// [destinationName] The name of the app or site this chip is linking to.
  /// [uri] The URI of the app or site to open when the user taps the suggestion chip.
  const GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestionResponse({
    required this.destinationName,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationName': destinationName,
      'uri': uri,
    };
  }

  factory GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestionResponse(
      destinationName: pulumi.Input.fromValue(map['destinationName'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
