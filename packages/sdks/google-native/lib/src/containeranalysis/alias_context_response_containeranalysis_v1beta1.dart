// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An alias to a repo revision.
class AliasContextResponseContaineranalysisV1beta1 {
  /// The alias kind.
  final pulumi.Input<String> kind;
  /// The alias name.
  final pulumi.Input<String> name;

  /// Creates a new [AliasContextResponseContaineranalysisV1beta1].
  /// [kind] The alias kind.
  /// [name] The alias name.
  AliasContextResponseContaineranalysisV1beta1({
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'name': name,
    };
  }

  factory AliasContextResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return AliasContextResponseContaineranalysisV1beta1(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

