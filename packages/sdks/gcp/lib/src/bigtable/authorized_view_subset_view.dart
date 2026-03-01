// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorized_view_subset_view_family_subset.dart';

class AuthorizedViewSubsetView {
  /// A group of column family subsets to be included in the authorized view. This can be specified multiple times. Structure is documented below.
  ///
  /// -----
  final List<AuthorizedViewSubsetViewFamilySubset>? familySubsets;
  /// A list of Base64-encoded row prefixes to be included in the authorized view. To provide access to all rows, include the empty string as a prefix ("").
  final List<String>? rowPrefixes;

  /// Creates a new [AuthorizedViewSubsetView].
  /// [familySubsets] A group of column family subsets to be included in the authorized view. This can be specified multiple times. Structure is documented below.
  /// [rowPrefixes] A list of Base64-encoded row prefixes to be included in the authorized view. To provide access to all rows, include the empty string as a prefix ("").
  AuthorizedViewSubsetView({
    this.familySubsets,
    this.rowPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'familySubsets': ?familySubsets == null ? null : pulumi.Input.encodeList<AuthorizedViewSubsetViewFamilySubset, Map<String, dynamic>>(familySubsets!, (value) => value.toMap()),
      'rowPrefixes': ?rowPrefixes,
    };
  }

  factory AuthorizedViewSubsetView.fromMap(Map<String, dynamic> map) {
    return AuthorizedViewSubsetView(
      familySubsets: map['familySubsets'] == null ? null : pulumi.Input.decodeList<AuthorizedViewSubsetViewFamilySubset>(map['familySubsets'], (value) => AuthorizedViewSubsetViewFamilySubset.fromMap((value as Map).cast<String, dynamic>())),
      rowPrefixes: map['rowPrefixes'] == null ? null : (map['rowPrefixes'] as List).cast<String>(),
    );
  }
}

