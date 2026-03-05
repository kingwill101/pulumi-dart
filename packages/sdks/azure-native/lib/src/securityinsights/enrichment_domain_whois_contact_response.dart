// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An individual contact associated with this domain
class EnrichmentDomainWhoisContactResponse {
  /// The city for this contact
  final pulumi.Input<String>? city;
  /// The country for this contact
  final pulumi.Input<String>? country;
  /// The email address for this contact
  final pulumi.Input<String>? email;
  /// The fax number for this contact
  final pulumi.Input<String>? fax;
  /// The name of this contact
  final pulumi.Input<String>? name;
  /// The organization for this contact
  final pulumi.Input<String>? org;
  /// The phone number for this contact
  final pulumi.Input<String>? phone;
  /// The postal code for this contact
  final pulumi.Input<String>? postal;
  /// The state for this contact
  final pulumi.Input<String>? state;
  /// A list describing the street address for this contact
  final pulumi.Input<List<String>>? street;

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
      city: (() { final guardedValue = map['city']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fax: (() { final guardedValue = map['fax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      org: (() { final guardedValue = map['org']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      phone: (() { final guardedValue = map['phone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postal: (() { final guardedValue = map['postal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      street: (() { final guardedValue = map['street']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

