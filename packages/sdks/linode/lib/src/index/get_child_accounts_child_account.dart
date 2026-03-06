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
  const GetChildAccountsChildAccount({
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
      activeSince: pulumi.Input.fromValue(map['activeSince'] as String),
      address1: pulumi.Input.fromValue(map['address1'] as String),
      address2: pulumi.Input.fromValue(map['address2'] as String),
      balance: pulumi.Input.fromValue(map['balance'] as double),
      capabilities: pulumi.Input.fromValue((map['capabilities'] as List).cast<String>()),
      city: pulumi.Input.fromValue(map['city'] as String),
      company: pulumi.Input.fromValue(map['company'] as String),
      country: pulumi.Input.fromValue(map['country'] as String),
      email: pulumi.Input.fromValue(map['email'] as String),
      euuid: pulumi.Input.fromValue(map['euuid'] as String),
      firstName: pulumi.Input.fromValue(map['firstName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastName: pulumi.Input.fromValue(map['lastName'] as String),
      phone: pulumi.Input.fromValue(map['phone'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      zip: pulumi.Input.fromValue(map['zip'] as String),
    );
  }
}

