// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_context_kind.dart';

/// An alias to a repo revision.
class AliasContext {
  /// The alias kind.
  final pulumi.Input<AliasContextKind>? kind;
  /// The alias name.
  final pulumi.Input<String>? name;

  /// Creates a new [AliasContext].
  /// [kind] The alias kind.
  /// [name] The alias name.
  AliasContext({
    this.kind,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?pulumi.Input.mapOptionalInputValue<AliasContextKind, String>(kind, (value) => value.value),
      'name': ?name,
    };
  }

  factory AliasContext.fromMap(Map<String, dynamic> map) {
    return AliasContext(
      kind: map['kind'] == null ? null : (AliasContextKind.fromValue(map['kind'] as String)).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

