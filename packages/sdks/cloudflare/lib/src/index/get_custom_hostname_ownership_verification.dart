// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomHostnameOwnershipVerification {
  /// DNS Name for record.
  final pulumi.Input<String> name;
  /// DNS Record type.
  /// Available values: "txt".
  final pulumi.Input<String> type;
  /// Content for the record.
  final pulumi.Input<String> value;

  /// Creates a new [GetCustomHostnameOwnershipVerification].
  /// [name] DNS Name for record.
  /// [type] DNS Record type.
  /// [value] Content for the record.
  const GetCustomHostnameOwnershipVerification({
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

  factory GetCustomHostnameOwnershipVerification.fromMap(Map<String, dynamic> map) {
    return GetCustomHostnameOwnershipVerification(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
