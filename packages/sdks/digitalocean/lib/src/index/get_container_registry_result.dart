// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getContainerRegistry.
class GetContainerRegistryResult {
  /// The date and time when the registry was created
  final String createdAt;
  /// The URL endpoint of the container registry. Ex: `registry.digitalocean.com/my_registry`
  final String endpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The name of the container registry
  final String name;
  /// The slug identifier for the  region
  final String region;
  /// The domain of the container registry. Ex: `registry.digitalocean.com`
  final String serverUrl;
  /// The amount of storage used in the registry in bytes.
  final int storageUsageBytes;
  /// The slug identifier for the subscription tier
  final String subscriptionTierSlug;

  /// Creates a new [GetContainerRegistryResult].
  /// [createdAt] The date and time when the registry was created
  /// [endpoint] The URL endpoint of the container registry. Ex: `registry.digitalocean.com/my_registry`
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of the container registry
  /// [region] The slug identifier for the  region
  /// [serverUrl] The domain of the container registry. Ex: `registry.digitalocean.com`
  /// [storageUsageBytes] The amount of storage used in the registry in bytes.
  /// [subscriptionTierSlug] The slug identifier for the subscription tier
  const GetContainerRegistryResult({
    required this.createdAt,
    required this.endpoint,
    required this.id,
    required this.name,
    required this.region,
    required this.serverUrl,
    required this.storageUsageBytes,
    required this.subscriptionTierSlug,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'endpoint': endpoint,
      'id': id,
      'name': name,
      'region': region,
      'serverUrl': serverUrl,
      'storageUsageBytes': storageUsageBytes,
      'subscriptionTierSlug': subscriptionTierSlug,
    };
  }

  factory GetContainerRegistryResult.fromMap(Map<String, dynamic> map) {
    return GetContainerRegistryResult(
      createdAt: map['createdAt'] as String,
      endpoint: map['endpoint'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      serverUrl: map['serverUrl'] as String,
      storageUsageBytes: map['storageUsageBytes'] as int,
      subscriptionTierSlug: map['subscriptionTierSlug'] as String,
    );
  }
}

