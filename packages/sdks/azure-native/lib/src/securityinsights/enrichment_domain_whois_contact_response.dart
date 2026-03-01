// ignore_for_file: unused_element, unnecessary_cast


/// An individual contact associated with this domain
class EnrichmentDomainWhoisContactResponse {
  /// The city for this contact
  final String? city;
  /// The country for this contact
  final String? country;
  /// The email address for this contact
  final String? email;
  /// The fax number for this contact
  final String? fax;
  /// The name of this contact
  final String? name;
  /// The organization for this contact
  final String? org;
  /// The phone number for this contact
  final String? phone;
  /// The postal code for this contact
  final String? postal;
  /// The state for this contact
  final String? state;
  /// A list describing the street address for this contact
  final List<String>? street;

  /// Creates a new [EnrichmentDomainWhoisContactResponse].
  /// [city] The city for this contact
  /// [country] The country for this contact
  /// [email] The email address for this contact
  /// [fax] The fax number for this contact
  /// [name] The name of this contact
  /// [org] The organization for this contact
  /// [phone] The phone number for this contact
  /// [postal] The postal code for this contact
  /// [state] The state for this contact
  /// [street] A list describing the street address for this contact
  EnrichmentDomainWhoisContactResponse({
    this.city,
    this.country,
    this.email,
    this.fax,
    this.name,
    this.org,
    this.phone,
    this.postal,
    this.state,
    this.street,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': ?city,
      'country': ?country,
      'email': ?email,
      'fax': ?fax,
      'name': ?name,
      'org': ?org,
      'phone': ?phone,
      'postal': ?postal,
      'state': ?state,
      'street': ?street,
    };
  }

  factory EnrichmentDomainWhoisContactResponse.fromMap(Map<String, dynamic> map) {
    return EnrichmentDomainWhoisContactResponse(
      city: map['city'] == null ? null : map['city'] as String,
      country: map['country'] == null ? null : map['country'] as String,
      email: map['email'] == null ? null : map['email'] as String,
      fax: map['fax'] == null ? null : map['fax'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      org: map['org'] == null ? null : map['org'] as String,
      phone: map['phone'] == null ? null : map['phone'] as String,
      postal: map['postal'] == null ? null : map['postal'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      street: map['street'] == null ? null : (map['street'] as List).cast<String>(),
    );
  }
}

