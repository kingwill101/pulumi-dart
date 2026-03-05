// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAccount.
class GetAccountResult {
  /// When this account was first activated.
  final String activeSince;

  /// First line of this Account's billing address.
  final String address1;

  /// Second line of this Account's billing address.
  final String address2;

  /// This Account's balance, in US dollars.
  final double balance;

  /// A set containing all the capabilities of the current Account.
  final List<String> capabilities;

  /// The city for this Account's billing address.
  final String city;

  /// The company name associated with this Account.
  final String company;

  /// The two-letter country code of this Account's billing address.
  final String country;

  /// The email address for this Account, for account management communications, and may be used for other communications as configured.
  final String email;
  final String euuid;

  /// The first name of the person associated with this Account.
  final String firstName;
  final String id;

  /// The last name of the person associated with this Account.
  final String lastName;

  /// The phone number associated with this Account.
  final String phone;

  /// If billing address is in the United States, this is the State portion of the Account's billing address. If the address is outside the US, this is the Province associated with the Account's billing address.
  final String state;

  /// The zip code of this Account's billing address.
  final String zip;

  /// Creates a new [GetAccountResult].
  /// [activeSince] When this account was first activated.
  /// [address1] First line of this Account's billing address.
  /// [address2] Second line of this Account's billing address.
  /// [balance] This Account's balance, in US dollars.
  /// [capabilities] A set containing all the capabilities of the current Account.
  /// [city] The city for this Account's billing address.
  /// [company] The company name associated with this Account.
  /// [country] The two-letter country code of this Account's billing address.
  /// [email] The email address for this Account, for account management communications, and may be used for other communications as configured.
  /// [euuid] Required.
  /// [firstName] The first name of the person associated with this Account.
  /// [id] Required.
  /// [lastName] The last name of the person associated with this Account.
  /// [phone] The phone number associated with this Account.
  /// [state] If billing address is in the United States, this is the State portion of the Account's billing address. If the address is outside the US, this is the Province associated with the Account's billing address.
  /// [zip] The zip code of this Account's billing address.
  GetAccountResult({
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

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      activeSince: map['activeSince'] as String,
      address1: map['address1'] as String,
      address2: map['address2'] as String,
      balance: map['balance'] as double,
      capabilities: (map['capabilities'] as List).cast<String>(),
      city: map['city'] as String,
      company: map['company'] as String,
      country: map['country'] as String,
      email: map['email'] as String,
      euuid: map['euuid'] as String,
      firstName: map['firstName'] as String,
      id: map['id'] as String,
      lastName: map['lastName'] as String,
      phone: map['phone'] as String,
      state: map['state'] as String,
      zip: map['zip'] as String,
    );
  }
}
