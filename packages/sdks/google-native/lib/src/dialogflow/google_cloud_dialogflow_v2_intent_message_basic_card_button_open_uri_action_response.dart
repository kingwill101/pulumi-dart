// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Opens the given URI.
class GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriActionResponse {
  /// The HTTP or HTTPS scheme URI.
  final pulumi.Input<String> uri;

  /// Creates a new [GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriActionResponse].
  /// [uri] The HTTP or HTTPS scheme URI.
  const GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriActionResponse({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriActionResponse(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
