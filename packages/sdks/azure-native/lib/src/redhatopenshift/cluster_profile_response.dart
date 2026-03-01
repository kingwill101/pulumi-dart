// ignore_for_file: unused_element, unnecessary_cast


/// ClusterProfile represents a cluster profile.
class ClusterProfileResponse {
  /// The domain for the cluster.
  final String? domain;
  /// If FIPS validated crypto modules are used
  final String? fipsValidatedModules;
  /// The pull secret for the cluster.
  final String? pullSecret;
  /// The ID of the cluster resource group.
  final String? resourceGroupId;
  /// The version of the cluster.
  final String? version;

  /// Creates a new [ClusterProfileResponse].
  /// [domain] The domain for the cluster.
  /// [fipsValidatedModules] If FIPS validated crypto modules are used
  /// [pullSecret] The pull secret for the cluster.
  /// [resourceGroupId] The ID of the cluster resource group.
  /// [version] The version of the cluster.
  ClusterProfileResponse({
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

  factory ClusterProfileResponse.fromMap(Map<String, dynamic> map) {
    return ClusterProfileResponse(
      domain: map['domain'] == null ? null : map['domain'] as String,
      fipsValidatedModules: map['fipsValidatedModules'] == null ? null : map['fipsValidatedModules'] as String,
      pullSecret: map['pullSecret'] == null ? null : map['pullSecret'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

