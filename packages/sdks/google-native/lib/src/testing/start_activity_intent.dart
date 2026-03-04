// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A starting intent specified by an action, uri, and categories.
class StartActivityIntent {
  /// Action name. Required for START_ACTIVITY.
  final pulumi.Input<String>? action;

  /// Intent categories to set on the intent.
  final pulumi.Input<List<String>>? categories;

  /// URI for the action.
  final pulumi.Input<String>? uri;

  /// Creates a new [StartActivityIntent].
  /// [action] Action name. Required for START_ACTIVITY.
  /// [categories] Intent categories to set on the intent.
  /// [uri] URI for the action.
  StartActivityIntent({this.action, this.categories, this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'categories': ?categories,
      'uri': ?uri,
    };
  }

  factory StartActivityIntent.fromMap(Map<String, dynamic> map) {
    return StartActivityIntent(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      categories: (() {
        final guardedValue = map['categories'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
