// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A more specific scope used to identify the alerts to suppress.
class ScopeElement {
  /// The alert entity type to suppress by.
  final pulumi.Input<String>? field;

  /// Creates a new [ScopeElement].
  /// [field] The alert entity type to suppress by.
  ScopeElement({
    this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
    };
  }

  factory ScopeElement.fromMap(Map<String, dynamic> map) {
    return ScopeElement(
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

