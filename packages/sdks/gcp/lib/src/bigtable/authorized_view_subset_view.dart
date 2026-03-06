// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorized_view_subset_view_family_subset.dart';

class AuthorizedViewSubsetView {
  /// A group of column family subsets to be included in the authorized view. This can be specified multiple times. Structure is documented below.
  ///
  /// -----
  final pulumi.Input<List<AuthorizedViewSubsetViewFamilySubset>>? familySubsets;
  /// A list of Base64-encoded row prefixes to be included in the authorized view. To provide access to all rows, include the empty string as a prefix ("").
  final pulumi.Input<List<String>>? rowPrefixes;

  /// Creates a new [AuthorizedViewSubsetView].
  /// [familySubsets] A group of column family subsets to be included in the authorized view. This can be specified multiple times. Structure is documented below.
  /// [rowPrefixes] A list of Base64-encoded row prefixes to be included in the authorized view. To provide access to all rows, include the empty string as a prefix ("").
  const AuthorizedViewSubsetView({
    this.familySubsets,
    this.rowPrefixes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'familySubsets': ?pulumi.Input.mapOptionalInputValue<List<AuthorizedViewSubsetViewFamilySubset>, List<Map<String, dynamic>>>(familySubsets, (value) => pulumi.Input.encodeList<AuthorizedViewSubsetViewFamilySubset, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rowPrefixes': ?rowPrefixes,
    };
  }

  factory AuthorizedViewSubsetView.fromMap(Map<String, dynamic> map) {
    return AuthorizedViewSubsetView(
      familySubsets: (() { final guardedValue = map['familySubsets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthorizedViewSubsetViewFamilySubset>(guardedValue, (value) => AuthorizedViewSubsetViewFamilySubset.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rowPrefixes: (() { final guardedValue = map['rowPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

