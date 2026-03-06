// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_containeranalysis_v1alpha1_alias_context_kind.dart';

/// An alias to a repo revision.
class GoogleDevtoolsContaineranalysisV1alpha1AliasContext {
  /// The alias kind.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1AliasContextKind>? kind;
  /// The alias name.
  final pulumi.Input<String>? name;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1AliasContext].
  /// [kind] The alias kind.
  /// [name] The alias name.
  const GoogleDevtoolsContaineranalysisV1alpha1AliasContext({
    this.kind,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsContaineranalysisV1alpha1AliasContextKind, String>(kind, (value) => value.wireValue),
      'name': ?name,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1AliasContext.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1AliasContext(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsContaineranalysisV1alpha1AliasContextKind.fromValue(guardedValue as String)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

