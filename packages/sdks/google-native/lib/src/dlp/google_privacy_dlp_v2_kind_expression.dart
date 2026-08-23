// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A representation of a Datastore kind.
class GooglePrivacyDlpV2KindExpression {
  /// The name of the kind.
  final pulumi.Input<String>? name;

  /// Creates a new [GooglePrivacyDlpV2KindExpression].
  /// [name] The name of the kind.
  const GooglePrivacyDlpV2KindExpression({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory GooglePrivacyDlpV2KindExpression.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2KindExpression(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
