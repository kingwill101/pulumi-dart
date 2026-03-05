// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A more specific scope used to identify the alerts to suppress.
class ScopeElementResponse {
  /// The alert entity type to suppress by.
  final pulumi.Input<String>? field;

  /// Creates a new [ScopeElementResponse].
  /// [field] The alert entity type to suppress by.
  ScopeElementResponse({
    this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
    };
  }

  factory ScopeElementResponse.fromMap(Map<String, dynamic> map) {
    return ScopeElementResponse(
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

