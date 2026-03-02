// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the Azure Active Directory allowed principals.
class AllowedPrincipals {
  /// The list of the allowed groups.
  final pulumi.Input<List<String>>? groups;
  /// The list of the allowed identities.
  final pulumi.Input<List<String>>? identities;

  /// Creates a new [AllowedPrincipals].
  /// [groups] The list of the allowed groups.
  /// [identities] The list of the allowed identities.
  AllowedPrincipals({
    this.groups,
    this.identities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groups': ?groups,
      'identities': ?identities,
    };
  }

  factory AllowedPrincipals.fromMap(Map<String, dynamic> map) {
    return AllowedPrincipals(
      groups: map['groups'] == null ? null : ((map['groups']! as List).cast<String>()).input(),
      identities: map['identities'] == null ? null : ((map['identities']! as List).cast<String>()).input(),
    );
  }
}

