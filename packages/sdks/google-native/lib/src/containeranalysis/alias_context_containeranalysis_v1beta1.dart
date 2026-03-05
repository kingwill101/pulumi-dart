// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_context_kind_containeranalysis_v1beta1.dart';

/// An alias to a repo revision.
class AliasContextContaineranalysisV1beta1 {
  /// The alias kind.
  final pulumi.Input<AliasContextKindContaineranalysisV1beta1>? kind;
  /// The alias name.
  final pulumi.Input<String>? name;

  /// Creates a new [AliasContextContaineranalysisV1beta1].
  /// [kind] The alias kind.
  /// [name] The alias name.
  AliasContextContaineranalysisV1beta1({
    this.kind,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?pulumi.Input.mapOptionalInputValue<AliasContextKindContaineranalysisV1beta1, String>(kind, (value) => value.wireValue),
      'name': ?name,
    };
  }

  factory AliasContextContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return AliasContextContaineranalysisV1beta1(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AliasContextKindContaineranalysisV1beta1.fromValue(guardedValue as String)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

