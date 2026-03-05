// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityActionFlagHeader {
  /// The header name to be sent to the target.
  final pulumi.Input<String>? name;
  /// The header value to be sent to the target.
  final pulumi.Input<String>? value;

  /// Creates a new [SecurityActionFlagHeader].
  /// [name] The header name to be sent to the target.
  /// [value] The header value to be sent to the target.
  SecurityActionFlagHeader({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory SecurityActionFlagHeader.fromMap(Map<String, dynamic> map) {
    return SecurityActionFlagHeader(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

