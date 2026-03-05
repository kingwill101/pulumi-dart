// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/label_selector.dart';

/// ClusterTrustBundleProjection describes how to select a set of ClusterTrustBundle objects and project their contents into the pod filesystem.
class ClusterTrustBundleProjection {
  /// Select all ClusterTrustBundles that match this label selector.  Only has effect if signerName is set.  Mutually-exclusive with name.  If unset, interpreted as "match nothing".  If set but empty, interpreted as "match everything".
  final pulumi.Input<LabelSelector>? labelSelector;
  /// Select a single ClusterTrustBundle by object name.  Mutually-exclusive with signerName and labelSelector.
  final pulumi.Input<String>? name;
  /// If true, don't block pod startup if the referenced ClusterTrustBundle(s) aren't available.  If using name, then the named ClusterTrustBundle is allowed not to exist.  If using signerName, then the combination of signerName and labelSelector is allowed to match zero ClusterTrustBundles.
  final pulumi.Input<bool>? optional;
  /// Relative path from the volume root to write the bundle.
  final pulumi.Input<String> path;
  /// Select all ClusterTrustBundles that match this signer name. Mutually-exclusive with name.  The contents of all selected ClusterTrustBundles will be unified and deduplicated.
  final pulumi.Input<String>? signerName;

  /// Creates a new [ClusterTrustBundleProjection].
  /// [labelSelector] Select all ClusterTrustBundles that match this label selector.  Only has effect if signerName is set.  Mutually-exclusive with name.  If unset, interpreted as "match nothing".  If set but empty, interpreted as "match everything".
  /// [name] Select a single ClusterTrustBundle by object name.  Mutually-exclusive with signerName and labelSelector.
  /// [optional] If true, don't block pod startup if the referenced ClusterTrustBundle(s) aren't available.  If using name, then the named ClusterTrustBundle is allowed not to exist.  If using signerName, then the combination of signerName and labelSelector is allowed to match zero ClusterTrustBundles.
  /// [path] Relative path from the volume root to write the bundle.
  /// [signerName] Select all ClusterTrustBundles that match this signer name. Mutually-exclusive with name.  The contents of all selected ClusterTrustBundles will be unified and deduplicated.
  ClusterTrustBundleProjection({
    this.labelSelector,
    this.name,
    this.optional,
    required this.path,
    this.signerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSelector': ?pulumi.Input.mapOptionalInputValue<LabelSelector, Map<String, dynamic>>(labelSelector, (value) => value.toMap()),
      'name': ?name,
      'optional': ?optional,
      'path': path,
      'signerName': ?signerName,
    };
  }

  factory ClusterTrustBundleProjection.fromMap(Map<String, dynamic> map) {
    return ClusterTrustBundleProjection(
      labelSelector: (() { final guardedValue = map['labelSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabelSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optional: (() { final guardedValue = map['optional']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      signerName: (() { final guardedValue = map['signerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

