// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_meta_tenant_flags.dart';

class OrganizationMeta {
  /// Ordered chain of organization tags from the root organization down to
  /// (and including) this organization itself. Root organizations return a
  /// single-element array containing their own tag; sub-organizations return
  /// `[rootTag, ...intermediateTags, parentTag, selfTag]`. Useful for
  /// constructing authorization scopes that need to cover every ancestor
  /// in the hierarchy.
  final pulumi.Input<List<String>?>? hierarchyTags;
  final pulumi.Input<String?>? managedBy;
  /// Enable features for Organizations.
  final pulumi.Input<OrganizationMetaTenantFlags?>? tenantFlags;

  /// Creates a new [OrganizationMeta].
  /// [hierarchyTags] Ordered chain of organization tags from the root organization down to
  /// [managedBy] Optional.
  /// [tenantFlags] Enable features for Organizations.
  const OrganizationMeta({
    this.hierarchyTags,
    this.managedBy,
    this.tenantFlags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hierarchyTags': ?hierarchyTags,
      'managedBy': ?managedBy,
      'tenantFlags': ?pulumi.Input.mapOptionalInputValue<OrganizationMetaTenantFlags, Map<String, dynamic>>(tenantFlags, (value) => value.toMap()),
    };
  }

  factory OrganizationMeta.fromMap(Map<String, dynamic> map) {
    return OrganizationMeta(
      hierarchyTags: (() { final guardedValue = map['hierarchyTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantFlags: (() { final guardedValue = map['tenantFlags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationMetaTenantFlags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
