// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An alias to a repo revision.
class GoogleDevtoolsContaineranalysisV1alpha1AliasContextResponse {
  /// The alias kind.
  final pulumi.Input<String> kind;
  /// The alias name.
  final pulumi.Input<String> name;

  /// Creates a new [GoogleDevtoolsContaineranalysisV1alpha1AliasContextResponse].
  /// [kind] The alias kind.
  /// [name] The alias name.
  GoogleDevtoolsContaineranalysisV1alpha1AliasContextResponse({
    required this.kind,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'name': name,
    };
  }

  factory GoogleDevtoolsContaineranalysisV1alpha1AliasContextResponse.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsContaineranalysisV1alpha1AliasContextResponse(
      kind: (map['kind'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

