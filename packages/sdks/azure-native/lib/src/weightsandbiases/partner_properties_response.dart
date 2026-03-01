// ignore_for_file: unused_element, unnecessary_cast


/// Partner's specific Properties
class PartnerPropertiesResponse {
  /// The region of the instance
  final String region;
  /// The subdomain of the instance
  final String subdomain;

  /// Creates a new [PartnerPropertiesResponse].
  /// [region] The region of the instance
  /// [subdomain] The subdomain of the instance
  PartnerPropertiesResponse({
    required this.region,
    required this.subdomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
      'subdomain': subdomain,
    };
  }

  factory PartnerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PartnerPropertiesResponse(
      region: map['region'] as String,
      subdomain: map['subdomain'] as String,
    );
  }
}

