// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKeyRingsKeyRing {
  final pulumi.Input<String> id;
  final pulumi.Input<String> name;

  /// Creates a new [GetKeyRingsKeyRing].
  /// [id] Required.
  /// [name] Required.
  const GetKeyRingsKeyRing({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetKeyRingsKeyRing.fromMap(Map<String, dynamic> map) {
    return GetKeyRingsKeyRing(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

