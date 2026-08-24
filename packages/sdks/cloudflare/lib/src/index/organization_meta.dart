// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_meta_flags.dart';

class OrganizationMeta {
  /// Enable features for Organizations.
  final pulumi.Input<OrganizationMetaFlags?>? flags;
  /// Ordered chain of organization tags from the root organization down to
  /// (and including) this organization itself. Root organizations return a
  /// single-element array containing their own tag; sub-organizations return
  /// `[rootTag, ...intermediateTags, parentTag, selfTag]`. Useful for
  /// constructing authorization scopes that need to cover every ancestor
  /// in the hierarchy.
  final pulumi.Input<List<String>?>? hierarchyTags;
  final pulumi.Input<String?>? managedBy;

  /// Creates a new [OrganizationMeta].
  /// [flags] Enable features for Organizations.
  /// [hierarchyTags] Ordered chain of organization tags from the root organization down to
  /// [managedBy] Optional.
  const OrganizationMeta({
    this.flags,
    this.hierarchyTags,
    this.managedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flags': ?pulumi.Input.mapOptionalInputValue<OrganizationMetaFlags, Map<String, dynamic>>(flags, (value) => value.toMap()),
      'hierarchyTags': ?hierarchyTags,
      'managedBy': ?managedBy,
    };
  }

  factory OrganizationMeta.fromMap(Map<String, dynamic> map) {
    return OrganizationMeta(
      flags: (() { final guardedValue = map['flags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationMetaFlags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hierarchyTags: (() { final guardedValue = map['hierarchyTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
