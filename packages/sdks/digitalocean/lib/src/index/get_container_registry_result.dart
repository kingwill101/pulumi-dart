// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getContainerRegistry.
class GetContainerRegistryResult {
  /// The date and time when the registry was created
  final String? createdAt;
  /// The URL endpoint of the container registry. Ex: `registry.digitalocean.com/my_registry`
  final String? endpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The name of the container registry
  final String? name;
  /// The slug identifier for the  region
  final String? region;
  /// The domain of the container registry. Ex: `registry.digitalocean.com`
  final String? serverUrl;
  /// The amount of storage used in the registry in bytes.
  final int? storageUsageBytes;
  /// The slug identifier for the subscription tier
  final String? subscriptionTierSlug;

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
    this.createdAt,
    this.endpoint,
    this.id,
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
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'serverUrl': ?serverUrl,
      'storageUsageBytes': ?storageUsageBytes,
      'subscriptionTierSlug': ?subscriptionTierSlug,
    };
  }

  factory GetContainerRegistryResult.fromMap(Map<String, dynamic> map) {
    return GetContainerRegistryResult(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverUrl: (() { final guardedValue = map['serverUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageUsageBytes: (() { final guardedValue = map['storageUsageBytes']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      subscriptionTierSlug: (() { final guardedValue = map['subscriptionTierSlug']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
