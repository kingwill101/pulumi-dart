// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegistrarDomainsResultRegistrantContact {
  /// Address.
  final pulumi.Input<String> address;
  /// Optional address line for unit, floor, suite, etc.
  final pulumi.Input<String> address2;
  /// City.
  final pulumi.Input<String> city;
  /// The country in which the user lives.
  final pulumi.Input<String> country;
  /// The contact email address of the user.
  final pulumi.Input<String> email;
  /// Contact fax number.
  final pulumi.Input<String> fax;
  /// User's first name
  final pulumi.Input<String> firstName;
  /// Contact Identifier.
  final pulumi.Input<String> id;
  /// User's last name
  final pulumi.Input<String> lastName;
  /// Name of organization.
  final pulumi.Input<String> organization;
  /// User's telephone number
  final pulumi.Input<String> phone;
  /// State.
  final pulumi.Input<String> state;
  /// The zipcode or postal code where the user lives.
  final pulumi.Input<String> zip;

  /// Creates a new [GetRegistrarDomainsResultRegistrantContact].
  /// [address] Address.
  /// [address2] Optional address line for unit, floor, suite, etc.
  /// [city] City.
  /// [country] The country in which the user lives.
  /// [email] The contact email address of the user.
  /// [fax] Contact fax number.
  /// [firstName] User's first name
  /// [id] Contact Identifier.
  /// [lastName] User's last name
  /// [organization] Name of organization.
  /// [phone] User's telephone number
  /// [state] State.
  /// [zip] The zipcode or postal code where the user lives.
  const GetRegistrarDomainsResultRegistrantContact({
    required this.address,
    required this.address2,
    required this.city,
    required this.country,
    required this.email,
    required this.fax,
    required this.firstName,
    required this.id,
    required this.lastName,
    required this.organization,
    required this.phone,
    required this.state,
    required this.zip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'address2': address2,
      'city': city,
      'country': country,
      'email': email,
      'fax': fax,
      'firstName': firstName,
      'id': id,
      'lastName': lastName,
      'organization': organization,
      'phone': phone,
      'state': state,
      'zip': zip,
    };
  }

  factory GetRegistrarDomainsResultRegistrantContact.fromMap(Map<String, dynamic> map) {
    return GetRegistrarDomainsResultRegistrantContact(
      address: pulumi.Input.fromValue(map['address'] as String),
      address2: pulumi.Input.fromValue(map['address2'] as String),
      city: pulumi.Input.fromValue(map['city'] as String),
      country: pulumi.Input.fromValue(map['country'] as String),
      email: pulumi.Input.fromValue(map['email'] as String),
      fax: pulumi.Input.fromValue(map['fax'] as String),
      firstName: pulumi.Input.fromValue(map['firstName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastName: pulumi.Input.fromValue(map['lastName'] as String),
      organization: pulumi.Input.fromValue(map['organization'] as String),
      phone: pulumi.Input.fromValue(map['phone'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      zip: pulumi.Input.fromValue(map['zip'] as String),
    );
  }
}
