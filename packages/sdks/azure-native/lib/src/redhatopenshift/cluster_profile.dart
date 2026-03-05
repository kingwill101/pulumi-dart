// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ClusterProfile represents a cluster profile.
class ClusterProfile {
  /// The domain for the cluster.
  final pulumi.Input<String>? domain;
  /// If FIPS validated crypto modules are used
  final pulumi.Input<String>? fipsValidatedModules;
  /// The pull secret for the cluster.
  final pulumi.Input<String>? pullSecret;
  /// The ID of the cluster resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The version of the cluster.
  final pulumi.Input<String>? version;

  /// Creates a new [ClusterProfile].
  /// [domain] The domain for the cluster.
  /// [fipsValidatedModules] If FIPS validated crypto modules are used
  /// [pullSecret] The pull secret for the cluster.
  /// [resourceGroupId] The ID of the cluster resource group.
  /// [version] The version of the cluster.
  ClusterProfile({
    this.domain,
    this.fipsValidatedModules,
    this.pullSecret,
    this.resourceGroupId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'fipsValidatedModules': ?fipsValidatedModules,
      'pullSecret': ?pullSecret,
      'resourceGroupId': ?resourceGroupId,
      'version': ?version,
    };
  }

  factory ClusterProfile.fromMap(Map<String, dynamic> map) {
    return ClusterProfile(
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fipsValidatedModules: (() { final guardedValue = map['fipsValidatedModules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pullSecret: (() { final guardedValue = map['pullSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

