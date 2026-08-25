// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReferenceListScopeInfoReferenceListScope {
  /// Optional. The list of scope names of the reference list. The scope names should be
  /// full resource names and should be of the format:
  /// "projects/{project}/locations/{location}/instances/{instance}/dataAccessScopes/{scope_name}".
  final pulumi.Input<List<String>?>? scopeNames;

  /// Creates a new [ReferenceListScopeInfoReferenceListScope].
  /// [scopeNames] Optional. The list of scope names of the reference list. The scope names should be
  const ReferenceListScopeInfoReferenceListScope({
    this.scopeNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scopeNames': ?scopeNames,
    };
  }

  factory ReferenceListScopeInfoReferenceListScope.fromMap(Map<String, dynamic> map) {
    return ReferenceListScopeInfoReferenceListScope(
      scopeNames: (() { final guardedValue = map['scopeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
