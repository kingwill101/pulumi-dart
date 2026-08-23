// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An alias to a repo revision.
class AliasContextResponse {
  /// The alias kind.
  final pulumi.Input<String> kind;
  /// The alias name.
  final pulumi.Input<String> name;

  /// Creates a new [AliasContextResponse].
  /// [kind] The alias kind.
  /// [name] The alias name.
  const AliasContextResponse({
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'name': name,
    };
  }

  factory AliasContextResponse.fromMap(Map<String, dynamic> map) {
    return AliasContextResponse(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
