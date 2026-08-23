// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listGeodataByIp.
class ListGeodataByIpResult {
  /// The autonomous system number associated with this IP address
  final String? asn;
  /// The name of the carrier for this IP address
  final String? carrier;
  /// The city this IP address is located in
  final String? city;
  /// A numeric rating of confidence that the value in the 'city' field is correct, on a scale of 0-100
  final int? cityConfidenceFactor;
  /// The continent this IP address is located on
  final String? continent;
  /// The county this IP address is located in
  final String? country;
  /// A numeric rating of confidence that the value in the 'country' field is correct on a scale of 0-100
  final int? countryConfidenceFactor;
  /// The dotted-decimal or colon-separated string representation of the IP address
  final String? ipAddr;
  /// A description of the connection type of this IP address
  final String? ipRoutingType;
  /// The latitude of this IP address
  final String? latitude;
  /// The longitude of this IP address
  final String? longitude;
  /// The name of the organization for this IP address
  final String? organization;
  /// The type of the organization for this IP address
  final String? organizationType;
  /// The geographic region this IP address is located in
  final String? region;
  /// The state this IP address is located in
  final String? state;
  /// The abbreviated name for the state this IP address is located in
  final String? stateCode;
  /// A numeric rating of confidence that the value in the 'state' field is correct on a scale of 0-100
  final int? stateConfidenceFactor;

  /// Creates a new [ListGeodataByIpResult].
  /// [asn] The autonomous system number associated with this IP address
  /// [carrier] The name of the carrier for this IP address
  /// [city] The city this IP address is located in
  /// [cityConfidenceFactor] A numeric rating of confidence that the value in the 'city' field is correct, on a scale of 0-100
  /// [continent] The continent this IP address is located on
  /// [country] The county this IP address is located in
  /// [countryConfidenceFactor] A numeric rating of confidence that the value in the 'country' field is correct on a scale of 0-100
  /// [ipAddr] The dotted-decimal or colon-separated string representation of the IP address
  /// [ipRoutingType] A description of the connection type of this IP address
  /// [latitude] The latitude of this IP address
  /// [longitude] The longitude of this IP address
  /// [organization] The name of the organization for this IP address
  /// [organizationType] The type of the organization for this IP address
  /// [region] The geographic region this IP address is located in
  /// [state] The state this IP address is located in
  /// [stateCode] The abbreviated name for the state this IP address is located in
  /// [stateConfidenceFactor] A numeric rating of confidence that the value in the 'state' field is correct on a scale of 0-100
  const ListGeodataByIpResult({
    this.asn,
    this.carrier,
    this.city,
    this.cityConfidenceFactor,
    this.continent,
    this.country,
    this.countryConfidenceFactor,
    this.ipAddr,
    this.ipRoutingType,
    this.latitude,
    this.longitude,
    this.organization,
    this.organizationType,
    this.region,
    this.state,
    this.stateCode,
    this.stateConfidenceFactor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'carrier': ?carrier,
      'city': ?city,
      'cityConfidenceFactor': ?cityConfidenceFactor,
      'continent': ?continent,
      'country': ?country,
      'countryConfidenceFactor': ?countryConfidenceFactor,
      'ipAddr': ?ipAddr,
      'ipRoutingType': ?ipRoutingType,
      'latitude': ?latitude,
      'longitude': ?longitude,
      'organization': ?organization,
      'organizationType': ?organizationType,
      'region': ?region,
      'state': ?state,
      'stateCode': ?stateCode,
      'stateConfidenceFactor': ?stateConfidenceFactor,
    };
  }

  factory ListGeodataByIpResult.fromMap(Map<String, dynamic> map) {
    return ListGeodataByIpResult(
      asn: (() { final guardedValue = map['asn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      carrier: (() { final guardedValue = map['carrier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      city: (() { final guardedValue = map['city']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cityConfidenceFactor: (() { final guardedValue = map['cityConfidenceFactor']; if (guardedValue == null) return null; return guardedValue as int; })(),
      continent: (() { final guardedValue = map['continent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return guardedValue as String; })(),
      countryConfidenceFactor: (() { final guardedValue = map['countryConfidenceFactor']; if (guardedValue == null) return null; return guardedValue as int; })(),
      ipAddr: (() { final guardedValue = map['ipAddr']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipRoutingType: (() { final guardedValue = map['ipRoutingType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      latitude: (() { final guardedValue = map['latitude']; if (guardedValue == null) return null; return guardedValue as String; })(),
      longitude: (() { final guardedValue = map['longitude']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return guardedValue as String; })(),
      organizationType: (() { final guardedValue = map['organizationType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateCode: (() { final guardedValue = map['stateCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateConfidenceFactor: (() { final guardedValue = map['stateConfidenceFactor']; if (guardedValue == null) return null; return guardedValue as int; })(),
    );
  }
}
