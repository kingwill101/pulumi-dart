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
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? serverUrl,
    pulumi.Output<int>? storageUsageBytes,
    pulumi.Output<String>? subscriptionTierSlug,
  }) :
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      serverUrl = pulumi.Input.asOptionalInput<String>(serverUrl),
      storageUsageBytes = pulumi.Input.asOptionalInput<int>(storageUsageBytes),
      subscriptionTierSlug = pulumi.Input.asOptionalInput<String>(subscriptionTierSlug);

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
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serverUrl: map['serverUrl'] == null ? null : pulumi.Output.create<String>(map['serverUrl'] as String),
      storageUsageBytes: map['storageUsageBytes'] == null ? null : pulumi.Output.create<int>(map['storageUsageBytes'] as int),
      subscriptionTierSlug: map['subscriptionTierSlug'] == null ? null : pulumi.Output.create<String>(map['subscriptionTierSlug'] as String),
    );
  }
}

