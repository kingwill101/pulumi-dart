// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ContainerRegistries resources.
class ContainerRegistriesState {
  final pulumi.Input<String>? createdAt;
  final pulumi.Input<String>? endpoint;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? serverUrl;
  final pulumi.Input<int>? storageUsageBytes;
  final pulumi.Input<String>? subscriptionTierSlug;

  /// Creates a new [ContainerRegistriesState].
  /// [createdAt] Optional.
  /// [endpoint] Optional.
  /// [name] Optional.
  /// [region] Optional.
  /// [serverUrl] Optional.
  /// [storageUsageBytes] Optional.
  /// [subscriptionTierSlug] Optional.
  ContainerRegistriesState({
    this.createdAt,
    this.endpoint,
    this.name,
    this.region,
    this.serverUrl,
    this.storageUsageBytes,
    this.subscriptionTierSlug,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'endpoint': ?endpoint,
      'name': ?name,
      'region': ?region,
      'serverUrl': ?serverUrl,
      'storageUsageBytes': ?storageUsageBytes,
      'subscriptionTierSlug': ?subscriptionTierSlug,
    };
  }

  factory ContainerRegistriesState.fromMap(Map<String, dynamic> map) {
    return ContainerRegistriesState(
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      serverUrl: map['serverUrl'] == null ? null : (map['serverUrl']! as String).input(),
      storageUsageBytes: map['storageUsageBytes'] == null ? null : (map['storageUsageBytes']! as int).input(),
      subscriptionTierSlug: map['subscriptionTierSlug'] == null ? null : (map['subscriptionTierSlug']! as String).input(),
    );
  }
}

