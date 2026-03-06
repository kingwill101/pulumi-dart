// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getContainerRegistries.
class GetContainerRegistriesResult {
  final String createdAt;
  final String endpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String region;
  final String serverUrl;
  final int storageUsageBytes;
  final String subscriptionTierSlug;

  /// Creates a new [GetContainerRegistriesResult].
  /// [createdAt] Required.
  /// [endpoint] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [region] Required.
  /// [serverUrl] Required.
  /// [storageUsageBytes] Required.
  /// [subscriptionTierSlug] Required.
  const GetContainerRegistriesResult({
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

  factory GetContainerRegistriesResult.fromMap(Map<String, dynamic> map) {
    return GetContainerRegistriesResult(
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

