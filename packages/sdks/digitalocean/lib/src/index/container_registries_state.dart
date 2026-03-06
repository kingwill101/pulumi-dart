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
  const ContainerRegistriesState({
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
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverUrl: (() { final guardedValue = map['serverUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageUsageBytes: (() { final guardedValue = map['storageUsageBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      subscriptionTierSlug: (() { final guardedValue = map['subscriptionTierSlug']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

