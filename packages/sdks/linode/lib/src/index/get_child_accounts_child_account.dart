// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetChildAccountsChildAccount {
  /// When this account was first activated
  final pulumi.Input<String> activeSince;
  /// First line of this Account's billing address.
  final pulumi.Input<String> address1;
  /// Second line of this Account's billing address.
  final pulumi.Input<String> address2;
  /// This Account's balance, in US dollars.
  final pulumi.Input<double> balance;
  /// A set containing all the capabilities of this Account.
  final pulumi.Input<List<String>> capabilities;
  /// The city for this Account's billing address.
  final pulumi.Input<String> city;
  /// The company name associated with this Account.
  final pulumi.Input<String> company;
  /// The two-letter country code of this Account's billing address.
  final pulumi.Input<String> country;
  /// The email address for this Account, for account management communications, and may be used for other communications as configured.
  final pulumi.Input<String> email;
  /// The unique ID of this Account.
  final pulumi.Input<String> euuid;
  /// The first name of the person associated with this Account.
  final pulumi.Input<String> firstName;
  /// The Email of the Account.
  final pulumi.Input<String> id;
  /// The last name of the person associated with this Account.
  final pulumi.Input<String> lastName;
  /// The phone number associated with this Account.
  final pulumi.Input<String> phone;
  /// If billing address is in the United States, this is the State portion of the Account's billing address. If the address is outside the US, this is the Province associated with the Account's billing address.
  final pulumi.Input<String> state;
  /// The zip code of this Account's billing address.
  final pulumi.Input<String> zip;

  /// Creates a new [GetChildAccountsChildAccount].
  /// [activeSince] When this account was first activated
  /// [address1] First line of this Account's billing address.
  /// [address2] Second line of this Account's billing address.
  /// [balance] This Account's balance, in US dollars.
  /// [capabilities] A set containing all the capabilities of this Account.
  /// [city] The city for this Account's billing address.
  /// [company] The company name associated with this Account.
  /// [country] The two-letter country code of this Account's billing address.
  /// [email] The email address for this Account, for account management communications, and may be used for other communications as configured.
  /// [euuid] The unique ID of this Account.
  /// [firstName] The first name of the person associated with this Account.
  /// [id] The Email of the Account.
  /// [lastName] The last name of the person associated with this Account.
  /// [phone] The phone number associated with this Account.
  /// [state] If billing address is in the United States, this is the State portion of the Account's billing address. If the address is outside the US, this is the Province associated with the Account's billing address.
  /// [zip] The zip code of this Account's billing address.
  GetChildAccountsChildAccount({
    required this.activeSince,
    required this.address1,
    required this.address2,
    required this.balance,
    required this.capabilities,
    required this.city,
    required this.company,
    required this.country,
    required this.email,
    required this.euuid,
    required this.firstName,
    required this.id,
    required this.lastName,
    required this.phone,
    required this.state,
    required this.zip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeSince': activeSince,
      'address1': address1,
      'address2': address2,
      'balance': balance,
      'capabilities': capabilities,
      'city': city,
      'company': company,
      'country': country,
      'email': email,
      'euuid': euuid,
      'firstName': firstName,
      'id': id,
      'lastName': lastName,
      'phone': phone,
      'state': state,
      'zip': zip,
    };
  }

  factory GetChildAccountsChildAccount.fromMap(Map<String, dynamic> map) {
    return GetChildAccountsChildAccount(
      activeSince: (map['activeSince'] as String).input(),
      address1: (map['address1'] as String).input(),
      address2: (map['address2'] as String).input(),
      balance: (map['balance'] as double).input(),
      capabilities: ((map['capabilities'] as List).cast<String>()).input(),
      city: (map['city'] as String).input(),
      company: (map['company'] as String).input(),
      country: (map['country'] as String).input(),
      email: (map['email'] as String).input(),
      euuid: (map['euuid'] as String).input(),
      firstName: (map['firstName'] as String).input(),
      id: (map['id'] as String).input(),
      lastName: (map['lastName'] as String).input(),
      phone: (map['phone'] as String).input(),
      state: (map['state'] as String).input(),
      zip: (map['zip'] as String).input(),
    );
  }
}

