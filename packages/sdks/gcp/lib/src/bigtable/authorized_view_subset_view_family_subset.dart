// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthorizedViewSubsetViewFamilySubset {
  /// Name of the column family to be included in the authorized view. The specified column family must exist in the parent table of this authorized view.
  final pulumi.Input<String> familyName;
  /// A list of Base64-encoded prefixes for qualifiers of the column family to be included in the authorized view.
  /// Every qualifier starting with one of these prefixes is included in the authorized view. To provide access to all qualifiers, include the empty string as a prefix ("").
  final pulumi.Input<List<String>>? qualifierPrefixes;
  /// A list of Base64-encoded individual exact column qualifiers of the column family to be included in the authorized view.
  final pulumi.Input<List<String>>? qualifiers;

  /// Creates a new [AuthorizedViewSubsetViewFamilySubset].
  /// [familyName] Name of the column family to be included in the authorized view. The specified column family must exist in the parent table of this authorized view.
  /// [qualifierPrefixes] A list of Base64-encoded prefixes for qualifiers of the column family to be included in the authorized view.
  /// [qualifiers] A list of Base64-encoded individual exact column qualifiers of the column family to be included in the authorized view.
  AuthorizedViewSubsetViewFamilySubset({
    required this.familyName,
    this.qualifierPrefixes,
    this.qualifiers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'familyName': familyName,
      'qualifierPrefixes': ?qualifierPrefixes,
      'qualifiers': ?qualifiers,
    };
  }

  factory AuthorizedViewSubsetViewFamilySubset.fromMap(Map<String, dynamic> map) {
    return AuthorizedViewSubsetViewFamilySubset(
      familyName: (map['familyName'] as String).input(),
      qualifierPrefixes: map['qualifierPrefixes'] == null ? null : ((map['qualifierPrefixes']! as List).cast<String>()).input(),
      qualifiers: map['qualifiers'] == null ? null : ((map['qualifiers']! as List).cast<String>()).input(),
    );
  }
}

