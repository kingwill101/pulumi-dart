// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getContainerRegistries.
class GetContainerRegistriesResult {
  final String? createdAt;
  final String? endpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? region;
  final String? serverUrl;
  final int? storageUsageBytes;
  final String? subscriptionTierSlug;

  /// Creates a new [GetContainerRegistriesResult].
  /// [createdAt] Optional.
  /// [endpoint] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [region] Optional.
  /// [serverUrl] Optional.
  /// [storageUsageBytes] Optional.
  /// [subscriptionTierSlug] Optional.
  const GetContainerRegistriesResult({
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

  factory GetContainerRegistriesResult.fromMap(Map<String, dynamic> map) {
    return GetContainerRegistriesResult(
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
