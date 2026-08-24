// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomHostnameOwnershipVerification {
  /// DNS Name for record.
  final pulumi.Input<String?>? name;
  /// DNS Record type.
  /// Available values: "txt".
  final pulumi.Input<String?>? type;
  /// Content for the record.
  final pulumi.Input<String?>? value;

  /// Creates a new [CustomHostnameOwnershipVerification].
  /// [name] DNS Name for record.
  /// [type] DNS Record type.
  /// [value] Content for the record.
  const CustomHostnameOwnershipVerification({
    this.name,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
      'value': ?value,
    };
  }

  factory CustomHostnameOwnershipVerification.fromMap(Map<String, dynamic> map) {
    return CustomHostnameOwnershipVerification(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
