// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZonesResultOwner {
  /// Identifier
  final pulumi.Input<String> id;
  /// Name of the owner.
  final pulumi.Input<String> name;
  /// The type of owner.
  final pulumi.Input<String> type;

  /// Creates a new [GetZonesResultOwner].
  /// [id] Identifier
  /// [name] Name of the owner.
  /// [type] The type of owner.
  const GetZonesResultOwner({
    required this.id,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'type': type,
    };
  }

  factory GetZonesResultOwner.fromMap(Map<String, dynamic> map) {
    return GetZonesResultOwner(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
