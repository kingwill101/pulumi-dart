// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A domain specific resource identifier.
class IdentifierResponse {
  /// Resource Id.
  final pulumi.Input<String> id;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Resource Name.
  final pulumi.Input<String> name;
  /// Resource type.
  final pulumi.Input<String> type;
  /// String representation of the identity.
  final pulumi.Input<String>? value;

  /// Creates a new [IdentifierResponse].
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [type] Resource type.
  /// [value] String representation of the identity.
  IdentifierResponse({
    required this.id,
    this.kind,
    required this.name,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'kind': ?kind,
      'name': name,
      'type': type,
      'value': ?value,
    };
  }

  factory IdentifierResponse.fromMap(Map<String, dynamic> map) {
    return IdentifierResponse(
      id: (map['id'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

