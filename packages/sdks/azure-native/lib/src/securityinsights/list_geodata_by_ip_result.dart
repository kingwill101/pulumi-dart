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
  ListGeodataByIpResult({
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
      asn: map['asn'] == null ? null : map['asn']! as String,
      carrier: map['carrier'] == null ? null : map['carrier']! as String,
      city: map['city'] == null ? null : map['city']! as String,
      cityConfidenceFactor: map['cityConfidenceFactor'] == null ? null : map['cityConfidenceFactor']! as int,
      continent: map['continent'] == null ? null : map['continent']! as String,
      country: map['country'] == null ? null : map['country']! as String,
      countryConfidenceFactor: map['countryConfidenceFactor'] == null ? null : map['countryConfidenceFactor']! as int,
      ipAddr: map['ipAddr'] == null ? null : map['ipAddr']! as String,
      ipRoutingType: map['ipRoutingType'] == null ? null : map['ipRoutingType']! as String,
      latitude: map['latitude'] == null ? null : map['latitude']! as String,
      longitude: map['longitude'] == null ? null : map['longitude']! as String,
      organization: map['organization'] == null ? null : map['organization']! as String,
      organizationType: map['organizationType'] == null ? null : map['organizationType']! as String,
      region: map['region'] == null ? null : map['region']! as String,
      state: map['state'] == null ? null : map['state']! as String,
      stateCode: map['stateCode'] == null ? null : map['stateCode']! as String,
      stateConfidenceFactor: map['stateConfidenceFactor'] == null ? null : map['stateConfidenceFactor']! as int,
    );
  }
}

