// ignore_for_file: unused_element, unnecessary_cast


class PreReleaseAccessRequestSpec {
  final String? city;
  final String? companyWebsite;
  final String? countryAndRegion;
  final String? email;
  final List<String>? engagements;
  final String? organizationName;
  final String? stateOrProvince;
  final String? streetAddress;
  final String? zipCode;

  /// Creates a new [PreReleaseAccessRequestSpec].
  /// [city] Optional.
  /// [companyWebsite] Optional.
  /// [countryAndRegion] Optional.
  /// [email] Optional.
  /// [engagements] Optional.
  /// [organizationName] Optional.
  /// [stateOrProvince] Optional.
  /// [streetAddress] Optional.
  /// [zipCode] Optional.
  PreReleaseAccessRequestSpec({
    this.city,
    this.companyWebsite,
    this.countryAndRegion,
    this.email,
    this.engagements,
    this.organizationName,
    this.stateOrProvince,
    this.streetAddress,
    this.zipCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': ?city,
      'companyWebsite': ?companyWebsite,
      'countryAndRegion': ?countryAndRegion,
      'email': ?email,
      'engagements': ?engagements,
      'organizationName': ?organizationName,
      'stateOrProvince': ?stateOrProvince,
      'streetAddress': ?streetAddress,
      'zipCode': ?zipCode,
    };
  }

  factory PreReleaseAccessRequestSpec.fromMap(Map<String, dynamic> map) {
    return PreReleaseAccessRequestSpec(
      city: map['city'] == null ? null : map['city'] as String,
      companyWebsite: map['companyWebsite'] == null ? null : map['companyWebsite'] as String,
      countryAndRegion: map['countryAndRegion'] == null ? null : map['countryAndRegion'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      engagements: map['engagements'] == null ? null : (map['engagements'] as List).cast<String>(),
      organizationName: map['organizationName'] == null ? null : map['organizationName'] as String,
      stateOrProvince: map['stateOrProvince'] == null ? null : map['stateOrProvince'] as String,
      streetAddress: map['streetAddress'] == null ? null : map['streetAddress'] as String,
      zipCode: map['zipCode'] == null ? null : map['zipCode'] as String,
    );
  }
}

