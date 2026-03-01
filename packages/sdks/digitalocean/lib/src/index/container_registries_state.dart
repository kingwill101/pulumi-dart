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

  factory ContainerRegistriesState.fromMap(Map<String, dynamic> map) {
    return ContainerRegistriesState(
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

