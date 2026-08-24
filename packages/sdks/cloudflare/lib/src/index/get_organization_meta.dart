// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_meta_flags.dart';

class GetOrganizationMeta {
  /// Enable features for Organizations.
  final pulumi.Input<GetOrganizationMetaFlags> flags;
  /// Ordered chain of organization tags from the root organization down to
  /// (and including) this organization itself. Root organizations return a
  /// single-element array containing their own tag; sub-organizations return
  /// `[rootTag, ...intermediateTags, parentTag, selfTag]`. Useful for
  /// constructing authorization scopes that need to cover every ancestor
  /// in the hierarchy.
  final pulumi.Input<List<String>> hierarchyTags;
  final pulumi.Input<String> managedBy;

  /// Creates a new [GetOrganizationMeta].
  /// [flags] Enable features for Organizations.
  /// [hierarchyTags] Ordered chain of organization tags from the root organization down to
  /// [managedBy] Required.
  const GetOrganizationMeta({
    required this.flags,
    required this.hierarchyTags,
    required this.managedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flags': pulumi.Input.mapInputValue<GetOrganizationMetaFlags, Map<String, dynamic>>(flags, (value) => value.toMap()),
      'hierarchyTags': hierarchyTags,
      'managedBy': managedBy,
    };
  }

  factory GetOrganizationMeta.fromMap(Map<String, dynamic> map) {
    return GetOrganizationMeta(
      flags: pulumi.Input.fromValue(GetOrganizationMetaFlags.fromMap((map['flags']! as Map).cast<String, dynamic>())),
      hierarchyTags: pulumi.Input.fromValue((map['hierarchyTags'] as List).cast<String>()),
      managedBy: pulumi.Input.fromValue(map['managedBy'] as String),
    );
  }
}
