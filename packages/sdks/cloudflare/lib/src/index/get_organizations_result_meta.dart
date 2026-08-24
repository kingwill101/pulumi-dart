// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organizations_result_meta_flags.dart';

class GetOrganizationsResultMeta {
  /// Enable features for Organizations.
  final pulumi.Input<GetOrganizationsResultMetaFlags> flags;
  /// Ordered chain of organization tags from the root organization down to
  /// (and including) this organization itself. Root organizations return a
  /// single-element array containing their own tag; sub-organizations return
  /// `[rootTag, ...intermediateTags, parentTag, selfTag]`. Useful for
  /// constructing authorization scopes that need to cover every ancestor
  /// in the hierarchy.
  final pulumi.Input<List<String>> hierarchyTags;
  final pulumi.Input<String> managedBy;

  /// Creates a new [GetOrganizationsResultMeta].
  /// [flags] Enable features for Organizations.
  /// [hierarchyTags] Ordered chain of organization tags from the root organization down to
  /// [managedBy] Required.
  const GetOrganizationsResultMeta({
    required this.flags,
    required this.hierarchyTags,
    required this.managedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flags': pulumi.Input.mapInputValue<GetOrganizationsResultMetaFlags, Map<String, dynamic>>(flags, (value) => value.toMap()),
      'hierarchyTags': hierarchyTags,
      'managedBy': managedBy,
    };
  }

  factory GetOrganizationsResultMeta.fromMap(Map<String, dynamic> map) {
    return GetOrganizationsResultMeta(
      flags: pulumi.Input.fromValue(GetOrganizationsResultMetaFlags.fromMap((map['flags']! as Map).cast<String, dynamic>())),
      hierarchyTags: pulumi.Input.fromValue((map['hierarchyTags'] as List).cast<String>()),
      managedBy: pulumi.Input.fromValue(map['managedBy'] as String),
    );
  }
}
