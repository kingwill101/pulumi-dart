// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A starting intent specified by an action, uri, and categories.
class StartActivityIntentResponse {
  /// Action name. Required for START_ACTIVITY.
  final pulumi.Input<String> action;
  /// Intent categories to set on the intent.
  final pulumi.Input<List<String>> categories;
  /// URI for the action.
  final pulumi.Input<String> uri;

  /// Creates a new [StartActivityIntentResponse].
  /// [action] Action name. Required for START_ACTIVITY.
  /// [categories] Intent categories to set on the intent.
  /// [uri] URI for the action.
  const StartActivityIntentResponse({
    required this.action,
    required this.categories,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'categories': categories,
      'uri': uri,
    };
  }

  factory StartActivityIntentResponse.fromMap(Map<String, dynamic> map) {
    return StartActivityIntentResponse(
      action: pulumi.Input.fromValue(map['action'] as String),
      categories: pulumi.Input.fromValue((map['categories'] as List).cast<String>()),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

