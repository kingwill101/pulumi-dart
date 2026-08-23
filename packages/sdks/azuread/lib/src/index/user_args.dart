// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_user_user_args_doc}
/// The set of arguments for User.
/// {@endtemplate}
/// {@macro pulumi_index_user_user_args_doc}
class UserArgs {
  /// Whether or not the account should be enabled.
  final pulumi.Input<bool>? accountEnabled;
  /// The age group of the user. Supported values are `Adult`, `NotAdult` and `Minor`. Omit this property or specify a blank string to unset.
  final pulumi.Input<String>? ageGroup;
  /// A list of telephone numbers for the user. Only one number can be set for this property. Read-only for users synced with Azure AD Connect.
  final pulumi.Input<List<String>>? businessPhones;
  /// The city in which the user is located.
  final pulumi.Input<String>? city;
  /// The company name which the user is associated. This property can be useful for describing the company that an external user comes from.
  final pulumi.Input<String>? companyName;
  /// Whether consent has been obtained for minors. Supported values are `Granted`, `Denied` and `NotRequired`. Omit this property or specify a blank string to unset.
  final pulumi.Input<String>? consentProvidedForMinor;
  /// The cost center associated with the user.
  final pulumi.Input<String>? costCenter;
  /// The country/region in which the user is located. Examples include: `NO`, `JP`, and `GB`.
  final pulumi.Input<String>? country;
  /// The name for the department in which the user works.
  final pulumi.Input<String>? department;
  /// Whether the user's password is exempt from expiring. Defaults to `false`.
  final pulumi.Input<bool>? disablePasswordExpiration;
  /// Whether the user is allowed weaker passwords than the default policy to be specified. Defaults to `false`.
  final pulumi.Input<bool>? disableStrongPassword;
  /// The name to display in the address book for the user.
  final pulumi.Input<String> displayName;
  /// The name of the division in which the user works.
  final pulumi.Input<String>? division;
  /// The hire date of the user, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`).
  final pulumi.Input<String>? employeeHireDate;
  /// The employee identifier assigned to the user by the organisation.
  final pulumi.Input<String>? employeeId;
  /// Captures enterprise worker type. For example, Employee, Contractor, Consultant, or Vendor.
  final pulumi.Input<String>? employeeType;
  /// The fax number of the user.
  final pulumi.Input<String>? faxNumber;
  /// Whether the user is forced to change the password during the next sign-in. Only takes effect when also changing the password. Defaults to `false`.
  final pulumi.Input<bool>? forcePasswordChange;
  /// The given name (first name) of the user.
  final pulumi.Input<String>? givenName;
  /// The user’s job title.
  final pulumi.Input<String>? jobTitle;
  /// The SMTP address for the user. This property cannot be unset once specified.
  final pulumi.Input<String>? mail;
  /// The mail alias for the user. Defaults to the user name part of the user principal name (UPN).
  final pulumi.Input<String>? mailNickname;
  /// The object ID of the user's manager.
  final pulumi.Input<String>? managerId;
  /// The primary cellular telephone number for the user.
  final pulumi.Input<String>? mobilePhone;
  /// The office location in the user's place of business.
  final pulumi.Input<String>? officeLocation;
  /// The value used to associate an on-premise Active Directory user account with their Azure AD user object. This must be specified if you are using a federated domain for the user's `userPrincipalName` property when creating a new user account.
  final pulumi.Input<String>? onpremisesImmutableId;
  /// A list of additional email addresses for the user.
  final pulumi.Input<List<String>>? otherMails;
  /// The password for the user. The password must satisfy minimum requirements as specified by the password policy. The maximum length is 256 characters. This property is required when creating a new user.
  ///
  /// &gt; **Passwords and importing users** Passwords can be changed but not cleared. Removing the `password` property for an existing user resource, or setting the password value to a blank string, will not remove the password. When importing a user, Terraform will not reset the password unless the value is subsequently changed in your configuration.
  final pulumi.Input<String>? password;
  /// The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code.
  final pulumi.Input<String>? postalCode;
  /// The user's preferred language, in ISO 639-1 notation.
  final pulumi.Input<String>? preferredLanguage;
  /// Whether or not the Outlook global address list should include this user. Defaults to `true`.
  final pulumi.Input<bool>? showInAddressList;
  /// The state or province in the user's address.
  final pulumi.Input<String>? state;
  /// The street address of the user's place of business.
  final pulumi.Input<String>? streetAddress;
  /// The user's surname (family name or last name).
  final pulumi.Input<String>? surname;
  /// The usage location of the user. Required for users that will be assigned licenses due to legal requirement to check for availability of services in countries. The usage location is a two letter country code (ISO standard 3166). Examples include: `NO`, `JP`, and `GB`. Cannot be reset to null once set.
  final pulumi.Input<String>? usageLocation;
  /// The user principal name (UPN) of the user.
  final pulumi.Input<String> userPrincipalName;

  /// Creates a new [UserArgs].
  /// [accountEnabled] Whether or not the account should be enabled.
  /// [ageGroup] The age group of the user. Supported values are `Adult`, `NotAdult` and `Minor`. Omit this property or specify a blank string to unset.
  /// [businessPhones] A list of telephone numbers for the user. Only one number can be set for this property. Read-only for users synced with Azure AD Connect.
  /// [city] The city in which the user is located.
  /// [companyName] The company name which the user is associated. This property can be useful for describing the company that an external user comes from.
  /// [consentProvidedForMinor] Whether consent has been obtained for minors. Supported values are `Granted`, `Denied` and `NotRequired`. Omit this property or specify a blank string to unset.
  /// [costCenter] The cost center associated with the user.
  /// [country] The country/region in which the user is located. Examples include: `NO`, `JP`, and `GB`.
  /// [department] The name for the department in which the user works.
  /// [disablePasswordExpiration] Whether the user's password is exempt from expiring. Defaults to `false`.
  /// [disableStrongPassword] Whether the user is allowed weaker passwords than the default policy to be specified. Defaults to `false`.
  /// [displayName] The name to display in the address book for the user.
  /// [division] The name of the division in which the user works.
  /// [employeeHireDate] The hire date of the user, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`).
  /// [employeeId] The employee identifier assigned to the user by the organisation.
  /// [employeeType] Captures enterprise worker type. For example, Employee, Contractor, Consultant, or Vendor.
  /// [faxNumber] The fax number of the user.
  /// [forcePasswordChange] Whether the user is forced to change the password during the next sign-in. Only takes effect when also changing the password. Defaults to `false`.
  /// [givenName] The given name (first name) of the user.
  /// [jobTitle] The user’s job title.
  /// [mail] The SMTP address for the user. This property cannot be unset once specified.
  /// [mailNickname] The mail alias for the user. Defaults to the user name part of the user principal name (UPN).
  /// [managerId] The object ID of the user's manager.
  /// [mobilePhone] The primary cellular telephone number for the user.
  /// [officeLocation] The office location in the user's place of business.
  /// [onpremisesImmutableId] The value used to associate an on-premise Active Directory user account with their Azure AD user object. This must be specified if you are using a federated domain for the user's `userPrincipalName` property when creating a new user account.
  /// [otherMails] A list of additional email addresses for the user.
  /// [password] The password for the user. The password must satisfy minimum requirements as specified by the password policy. The maximum length is 256 characters. This property is required when creating a new user.
  /// [postalCode] The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code.
  /// [preferredLanguage] The user's preferred language, in ISO 639-1 notation.
  /// [showInAddressList] Whether or not the Outlook global address list should include this user. Defaults to `true`.
  /// [state] The state or province in the user's address.
  /// [streetAddress] The street address of the user's place of business.
  /// [surname] The user's surname (family name or last name).
  /// [usageLocation] The usage location of the user. Required for users that will be assigned licenses due to legal requirement to check for availability of services in countries. The usage location is a two letter country code (ISO standard 3166). Examples include: `NO`, `JP`, and `GB`. Cannot be reset to null once set.
  /// [userPrincipalName] The user principal name (UPN) of the user.
  const UserArgs({
    this.accountEnabled,
    this.ageGroup,
    this.businessPhones,
    this.city,
    this.companyName,
    this.consentProvidedForMinor,
    this.costCenter,
    this.country,
    this.department,
    this.disablePasswordExpiration,
    this.disableStrongPassword,
    required this.displayName,
    this.division,
    this.employeeHireDate,
    this.employeeId,
    this.employeeType,
    this.faxNumber,
    this.forcePasswordChange,
    this.givenName,
    this.jobTitle,
    this.mail,
    this.mailNickname,
    this.managerId,
    this.mobilePhone,
    this.officeLocation,
    this.onpremisesImmutableId,
    this.otherMails,
    this.password,
    this.postalCode,
    this.preferredLanguage,
    this.showInAddressList,
    this.state,
    this.streetAddress,
    this.surname,
    this.usageLocation,
    required this.userPrincipalName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountEnabled': ?accountEnabled,
      'ageGroup': ?ageGroup,
      'businessPhones': ?businessPhones,
      'city': ?city,
      'companyName': ?companyName,
      'consentProvidedForMinor': ?consentProvidedForMinor,
      'costCenter': ?costCenter,
      'country': ?country,
      'department': ?department,
      'disablePasswordExpiration': ?disablePasswordExpiration,
      'disableStrongPassword': ?disableStrongPassword,
      'displayName': displayName,
      'division': ?division,
      'employeeHireDate': ?employeeHireDate,
      'employeeId': ?employeeId,
      'employeeType': ?employeeType,
      'faxNumber': ?faxNumber,
      'forcePasswordChange': ?forcePasswordChange,
      'givenName': ?givenName,
      'jobTitle': ?jobTitle,
      'mail': ?mail,
      'mailNickname': ?mailNickname,
      'managerId': ?managerId,
      'mobilePhone': ?mobilePhone,
      'officeLocation': ?officeLocation,
      'onpremisesImmutableId': ?onpremisesImmutableId,
      'otherMails': ?otherMails,
      'password': ?password,
      'postalCode': ?postalCode,
      'preferredLanguage': ?preferredLanguage,
      'showInAddressList': ?showInAddressList,
      'state': ?state,
      'streetAddress': ?streetAddress,
      'surname': ?surname,
      'usageLocation': ?usageLocation,
      'userPrincipalName': userPrincipalName,
    };
  }

  factory UserArgs.fromMap(Map<String, dynamic> map) {
    return UserArgs(
      accountEnabled: (() { final guardedValue = map['accountEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ageGroup: (() { final guardedValue = map['ageGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      businessPhones: (() { final guardedValue = map['businessPhones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      city: (() { final guardedValue = map['city']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      companyName: (() { final guardedValue = map['companyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consentProvidedForMinor: (() { final guardedValue = map['consentProvidedForMinor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      costCenter: (() { final guardedValue = map['costCenter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      department: (() { final guardedValue = map['department']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disablePasswordExpiration: (() { final guardedValue = map['disablePasswordExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableStrongPassword: (() { final guardedValue = map['disableStrongPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      division: (() { final guardedValue = map['division']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      employeeHireDate: (() { final guardedValue = map['employeeHireDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      employeeId: (() { final guardedValue = map['employeeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      employeeType: (() { final guardedValue = map['employeeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      faxNumber: (() { final guardedValue = map['faxNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forcePasswordChange: (() { final guardedValue = map['forcePasswordChange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      givenName: (() { final guardedValue = map['givenName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobTitle: (() { final guardedValue = map['jobTitle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mail: (() { final guardedValue = map['mail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mailNickname: (() { final guardedValue = map['mailNickname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managerId: (() { final guardedValue = map['managerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mobilePhone: (() { final guardedValue = map['mobilePhone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      officeLocation: (() { final guardedValue = map['officeLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onpremisesImmutableId: (() { final guardedValue = map['onpremisesImmutableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      otherMails: (() { final guardedValue = map['otherMails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postalCode: (() { final guardedValue = map['postalCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredLanguage: (() { final guardedValue = map['preferredLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      showInAddressList: (() { final guardedValue = map['showInAddressList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streetAddress: (() { final guardedValue = map['streetAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      surname: (() { final guardedValue = map['surname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usageLocation: (() { final guardedValue = map['usageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userPrincipalName: pulumi.Input.fromValue(map['userPrincipalName'] as String),
    );
  }
}
