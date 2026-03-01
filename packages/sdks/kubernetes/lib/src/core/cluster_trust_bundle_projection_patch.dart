// ignore_for_file: unused_element, unnecessary_cast

import '../meta/label_selector_patch.dart';

/// ClusterTrustBundleProjection describes how to select a set of ClusterTrustBundle objects and project their contents into the pod filesystem.
class ClusterTrustBundleProjectionPatch {
  /// Select all ClusterTrustBundles that match this label selector.  Only has effect if signerName is set.  Mutually-exclusive with name.  If unset, interpreted as "match nothing".  If set but empty, interpreted as "match everything".
  final LabelSelectorPatch? labelSelector;
  /// Select a single ClusterTrustBundle by object name.  Mutually-exclusive with signerName and labelSelector.
  final String? name;
  /// If true, don't block pod startup if the referenced ClusterTrustBundle(s) aren't available.  If using name, then the named ClusterTrustBundle is allowed not to exist.  If using signerName, then the combination of signerName and labelSelector is allowed to match zero ClusterTrustBundles.
  final bool? optional;
  /// Relative path from the volume root to write the bundle.
  final String? path;
  /// Select all ClusterTrustBundles that match this signer name. Mutually-exclusive with name.  The contents of all selected ClusterTrustBundles will be unified and deduplicated.
  final String? signerName;

  /// Creates a new [ClusterTrustBundleProjectionPatch].
  /// [labelSelector] Select all ClusterTrustBundles that match this label selector.  Only has effect if signerName is set.  Mutually-exclusive with name.  If unset, interpreted as "match nothing".  If set but empty, interpreted as "match everything".
  /// [name] Select a single ClusterTrustBundle by object name.  Mutually-exclusive with signerName and labelSelector.
  /// [optional] If true, don't block pod startup if the referenced ClusterTrustBundle(s) aren't available.  If using name, then the named ClusterTrustBundle is allowed not to exist.  If using signerName, then the combination of signerName and labelSelector is allowed to match zero ClusterTrustBundles.
  /// [path] Relative path from the volume root to write the bundle.
  /// [signerName] Select all ClusterTrustBundles that match this signer name. Mutually-exclusive with name.  The contents of all selected ClusterTrustBundles will be unified and deduplicated.
  ClusterTrustBundleProjectionPatch({
    this.labelSelector,
    this.name,
    this.optional,
    this.path,
    this.signerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSelector': ?labelSelector == null ? null : labelSelector!.toMap(),
      'name': ?name,
      'optional': ?optional,
      'path': ?path,
      'signerName': ?signerName,
    };
  }

  factory ClusterTrustBundleProjectionPatch.fromMap(Map<String, dynamic> map) {
    return ClusterTrustBundleProjectionPatch(
      labelSelector: map['labelSelector'] == null ? null : LabelSelectorPatch.fromMap((map['labelSelector'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      optional: map['optional'] == null ? null : map['optional'] as bool,
      path: map['path'] == null ? null : map['path'] as String,
      signerName: map['signerName'] == null ? null : map['signerName'] as String,
    );
  }
}

