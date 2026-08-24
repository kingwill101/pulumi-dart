// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomHostnamesResultOwnershipVerification {
  /// DNS Name for record.
  final pulumi.Input<String> name;
  /// DNS Record type.
  /// Available values: "txt".
  final pulumi.Input<String> type;
  /// Content for the record.
  final pulumi.Input<String> value;

  /// Creates a new [GetCustomHostnamesResultOwnershipVerification].
  /// [name] DNS Name for record.
  /// [type] DNS Record type.
  /// [value] Content for the record.
  const GetCustomHostnamesResultOwnershipVerification({
    required this.name,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
      'value': value,
    };
  }

  factory GetCustomHostnamesResultOwnershipVerification.fromMap(Map<String, dynamic> map) {
    return GetCustomHostnamesResultOwnershipVerification(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
