// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ContainerRegistry resources.
class ContainerRegistryState {
  /// The date and time when the registry was created
  final pulumi.Input<String>? createdAt;
  /// The URL endpoint of the container registry. Ex: `registry.digitalocean.com/my_registry`
  final pulumi.Input<String>? endpoint;
  /// The name of the container_registry
  final pulumi.Input<String>? name;
  /// The slug identifier of for region where registry data will be stored. When not provided, a region will be selected automatically.
  final pulumi.Input<String>? region;
  /// The domain of the container registry. Ex: `registry.digitalocean.com`
  final pulumi.Input<String>? serverUrl;
  /// The amount of storage used in the registry in bytes.
  final pulumi.Input<int>? storageUsageBytes;
  /// The slug identifier for the subscription tier to use (`starter`, `basic`, or `professional`)
  final pulumi.Input<String>? subscriptionTierSlug;

  /// Creates a new [ContainerRegistryState].
  /// [createdAt] The date and time when the registry was created
  /// [endpoint] The URL endpoint of the container registry. Ex: `registry.digitalocean.com/my_registry`
  /// [name] The name of the container_registry
  /// [region] The slug identifier of for region where registry data will be stored. When not provided, a region will be selected automatically.
  /// [serverUrl] The domain of the container registry. Ex: `registry.digitalocean.com`
  /// [storageUsageBytes] The amount of storage used in the registry in bytes.
  /// [subscriptionTierSlug] The slug identifier for the subscription tier to use (`starter`, `basic`, or `professional`)
  ContainerRegistryState({
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

  factory ContainerRegistryState.fromMap(Map<String, dynamic> map) {
    return ContainerRegistryState(
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

