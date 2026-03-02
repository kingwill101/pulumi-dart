// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message storing the URIs of the ContactCenter.
class URIsResponse {
  /// Chat Bot Uri of the ContactCenter
  final pulumi.Input<String> chatBotUri;
  /// Media Uri of the ContactCenter.
  final pulumi.Input<String> mediaUri;
  /// Root Uri of the ContactCenter.
  final pulumi.Input<String> rootUri;
  /// Virtual Agent Streaming Service Uri of the ContactCenter.
  final pulumi.Input<String> virtualAgentStreamingServiceUri;

  /// Creates a new [URIsResponse].
  /// [chatBotUri] Chat Bot Uri of the ContactCenter
  /// [mediaUri] Media Uri of the ContactCenter.
  /// [rootUri] Root Uri of the ContactCenter.
  /// [virtualAgentStreamingServiceUri] Virtual Agent Streaming Service Uri of the ContactCenter.
  URIsResponse({
    required this.chatBotUri,
    required this.mediaUri,
    required this.rootUri,
    required this.virtualAgentStreamingServiceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatBotUri': chatBotUri,
      'mediaUri': mediaUri,
      'rootUri': rootUri,
      'virtualAgentStreamingServiceUri': virtualAgentStreamingServiceUri,
    };
  }

  factory URIsResponse.fromMap(Map<String, dynamic> map) {
    return URIsResponse(
      chatBotUri: (map['chatBotUri'] as String).input(),
      mediaUri: (map['mediaUri'] as String).input(),
      rootUri: (map['rootUri'] as String).input(),
      virtualAgentStreamingServiceUri: (map['virtualAgentStreamingServiceUri'] as String).input(),
    );
  }
}

