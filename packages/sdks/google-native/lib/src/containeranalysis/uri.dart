// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An URI message.
class URI {
  /// A label for the URI.
  final pulumi.Input<String>? label;

  /// The unique resource identifier.
  final pulumi.Input<String>? uri;

  /// Creates a new [URI].
  /// [label] A label for the URI.
  /// [uri] The unique resource identifier.
  URI({this.label, this.uri});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'label': ?label, 'uri': ?uri};
  }

  factory URI.fromMap(Map<String, dynamic> map) {
    return URI(
      label: (() {
        final guardedValue = map['label'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uri: (() {
        final guardedValue = map['uri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
