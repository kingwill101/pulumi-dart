// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_meta_tenant_flags.dart';

class GetOrganizationMeta {
  /// Ordered chain of organization tags from the root organization down to
  /// (and including) this organization itself. Root organizations return a
  /// single-element array containing their own tag; sub-organizations return
  /// `[rootTag, ...intermediateTags, parentTag, selfTag]`. Useful for
  /// constructing authorization scopes that need to cover every ancestor
  /// in the hierarchy.
  final pulumi.Input<List<String>> hierarchyTags;
  final pulumi.Input<String> managedBy;
  /// Enable features for Organizations.
  final pulumi.Input<GetOrganizationMetaTenantFlags> tenantFlags;

  /// Creates a new [GetOrganizationMeta].
  /// [hierarchyTags] Ordered chain of organization tags from the root organization down to
  /// [managedBy] Required.
  /// [tenantFlags] Enable features for Organizations.
  const GetOrganizationMeta({
    required this.hierarchyTags,
    required this.managedBy,
    required this.tenantFlags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hierarchyTags': hierarchyTags,
      'managedBy': managedBy,
      'tenantFlags': pulumi.Input.mapInputValue<GetOrganizationMetaTenantFlags, Map<String, dynamic>>(tenantFlags, (value) => value.toMap()),
    };
  }

  factory GetOrganizationMeta.fromMap(Map<String, dynamic> map) {
    return GetOrganizationMeta(
      hierarchyTags: pulumi.Input.fromValue((map['hierarchyTags'] as List).cast<String>()),
      managedBy: pulumi.Input.fromValue(map['managedBy'] as String),
      tenantFlags: pulumi.Input.fromValue(GetOrganizationMetaTenantFlags.fromMap((map['tenantFlags']! as Map).cast<String, dynamic>())),
    );
  }
}
