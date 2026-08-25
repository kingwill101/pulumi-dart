// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiProductGrpcOperationGroupOperationConfigAttribute {
  /// Key of the attribute.
  final pulumi.Input<String?>? name;
  /// Value of the attribute.
  final pulumi.Input<String?>? value;

  /// Creates a new [ApiProductGrpcOperationGroupOperationConfigAttribute].
  /// [name] Key of the attribute.
  /// [value] Value of the attribute.
  const ApiProductGrpcOperationGroupOperationConfigAttribute({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory ApiProductGrpcOperationGroupOperationConfigAttribute.fromMap(Map<String, dynamic> map) {
    return ApiProductGrpcOperationGroupOperationConfigAttribute(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
