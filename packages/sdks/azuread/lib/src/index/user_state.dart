// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// A freeform field for the user to describe themselves
  final pulumi.Input<String>? aboutMe;
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
  /// Indicates whether the user account was created as a regular school or work account (`null`), an external account (`Invitation`), a local account for an Azure Active Directory B2C tenant (`LocalAccount`) or self-service sign-up using email verification (`EmailVerified`).
  final pulumi.Input<String>? creationType;
  /// The name for the department in which the user works.
  final pulumi.Input<String>? department;
  /// Whether the user's password is exempt from expiring. Defaults to `false`.
  final pulumi.Input<bool>? disablePasswordExpiration;
  /// Whether the user is allowed weaker passwords than the default policy to be specified. Defaults to `false`.
  final pulumi.Input<bool>? disableStrongPassword;
  /// The name to display in the address book for the user.
  final pulumi.Input<String>? displayName;
  /// The name of the division in which the user works.
  final pulumi.Input<String>? division;
  /// The hire date of the user, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`).
  final pulumi.Input<String>? employeeHireDate;
  /// The employee identifier assigned to the user by the organisation.
  final pulumi.Input<String>? employeeId;
  /// Captures enterprise worker type. For example, Employee, Contractor, Consultant, or Vendor.
  final pulumi.Input<String>? employeeType;
  /// For an external user invited to the tenant, this property represents the invited user's invitation status. Possible values are `PendingAcceptance` or `Accepted`.
  final pulumi.Input<String>? externalUserState;
  /// The fax number of the user.
  final pulumi.Input<String>? faxNumber;
  /// Whether the user is forced to change the password during the next sign-in. Only takes effect when also changing the password. Defaults to `false`.
  final pulumi.Input<bool>? forcePasswordChange;
  /// The given name (first name) of the user.
  final pulumi.Input<String>? givenName;
  /// A list of instant message voice over IP (VOIP) session initiation protocol (SIP) addresses for the user.
  final pulumi.Input<List<String>>? imAddresses;
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
  /// The object ID of the user.
  final pulumi.Input<String>? objectId;
  /// The office location in the user's place of business.
  final pulumi.Input<String>? officeLocation;
  /// The on-premises distinguished name (DN) of the user, synchronised from the on-premises directory when Azure AD Connect is used.
  final pulumi.Input<String>? onpremisesDistinguishedName;
  /// The on-premises FQDN, also called dnsDomainName, synchronised from the on-premises directory when Azure AD Connect is used.
  final pulumi.Input<String>? onpremisesDomainName;
  /// The value used to associate an on-premise Active Directory user account with their Azure AD user object. This must be specified if you are using a federated domain for the user's `user_principal_name` property when creating a new user account.
  final pulumi.Input<String>? onpremisesImmutableId;
  /// The on-premise SAM account name of the user.
  final pulumi.Input<String>? onpremisesSamAccountName;
  /// The on-premises security identifier (SID), synchronised from the on-premises directory when Azure AD Connect is used.
  final pulumi.Input<String>? onpremisesSecurityIdentifier;
  /// Whether this user is synchronised from an on-premises directory (`true`), no longer synchronised (`false`), or has never been synchronised (`null`).
  final pulumi.Input<bool>? onpremisesSyncEnabled;
  /// The on-premise user principal name of the user.
  final pulumi.Input<String>? onpremisesUserPrincipalName;
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
  /// List of email addresses for the user that direct to the same mailbox.
  final pulumi.Input<List<String>>? proxyAddresses;
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
  final pulumi.Input<String>? userPrincipalName;
  /// The user type in the directory. Possible values are `Guest` or `Member`.
  final pulumi.Input<String>? userType;

  /// Creates a new [UserState].
  /// [aboutMe] A freeform field for the user to describe themselves
  /// [accountEnabled] Whether or not the account should be enabled.
  /// [ageGroup] The age group of the user. Supported values are `Adult`, `NotAdult` and `Minor`. Omit this property or specify a blank string to unset.
  /// [businessPhones] A list of telephone numbers for the user. Only one number can be set for this property. Read-only for users synced with Azure AD Connect.
  /// [city] The city in which the user is located.
  /// [companyName] The company name which the user is associated. This property can be useful for describing the company that an external user comes from.
  /// [consentProvidedForMinor] Whether consent has been obtained for minors. Supported values are `Granted`, `Denied` and `NotRequired`. Omit this property or specify a blank string to unset.
  /// [costCenter] The cost center associated with the user.
  /// [country] The country/region in which the user is located. Examples include: `NO`, `JP`, and `GB`.
  /// [creationType] Indicates whether the user account was created as a regular school or work account (`null`), an external account (`Invitation`), a local account for an Azure Active Directory B2C tenant (`LocalAccount`) or self-service sign-up using email verification (`EmailVerified`).
  /// [department] The name for the department in which the user works.
  /// [disablePasswordExpiration] Whether the user's password is exempt from expiring. Defaults to `false`.
  /// [disableStrongPassword] Whether the user is allowed weaker passwords than the default policy to be specified. Defaults to `false`.
  /// [displayName] The name to display in the address book for the user.
  /// [division] The name of the division in which the user works.
  /// [employeeHireDate] The hire date of the user, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`).
  /// [employeeId] The employee identifier assigned to the user by the organisation.
  /// [employeeType] Captures enterprise worker type. For example, Employee, Contractor, Consultant, or Vendor.
  /// [externalUserState] For an external user invited to the tenant, this property represents the invited user's invitation status. Possible values are `PendingAcceptance` or `Accepted`.
  /// [faxNumber] The fax number of the user.
  /// [forcePasswordChange] Whether the user is forced to change the password during the next sign-in. Only takes effect when also changing the password. Defaults to `false`.
  /// [givenName] The given name (first name) of the user.
  /// [imAddresses] A list of instant message voice over IP (VOIP) session initiation protocol (SIP) addresses for the user.
  /// [jobTitle] The user’s job title.
  /// [mail] The SMTP address for the user. This property cannot be unset once specified.
  /// [mailNickname] The mail alias for the user. Defaults to the user name part of the user principal name (UPN).
  /// [managerId] The object ID of the user's manager.
  /// [mobilePhone] The primary cellular telephone number for the user.
  /// [objectId] The object ID of the user.
  /// [officeLocation] The office location in the user's place of business.
  /// [onpremisesDistinguishedName] The on-premises distinguished name (DN) of the user, synchronised from the on-premises directory when Azure AD Connect is used.
  /// [onpremisesDomainName] The on-premises FQDN, also called dnsDomainName, synchronised from the on-premises directory when Azure AD Connect is used.
  /// [onpremisesImmutableId] The value used to associate an on-premise Active Directory user account with their Azure AD user object. This must be specified if you are using a federated domain for the user's `user_principal_name` property when creating a new user account.
  /// [onpremisesSamAccountName] The on-premise SAM account name of the user.
  /// [onpremisesSecurityIdentifier] The on-premises security identifier (SID), synchronised from the on-premises directory when Azure AD Connect is used.
  /// [onpremisesSyncEnabled] Whether this user is synchronised from an on-premises directory (`true`), no longer synchronised (`false`), or has never been synchronised (`null`).
  /// [onpremisesUserPrincipalName] The on-premise user principal name of the user.
  /// [otherMails] A list of additional email addresses for the user.
  /// [password] The password for the user. The password must satisfy minimum requirements as specified by the password policy. The maximum length is 256 characters. This property is required when creating a new user.
  /// [postalCode] The postal code for the user's postal address. The postal code is specific to the user's country/region. In the United States of America, this attribute contains the ZIP code.
  /// [preferredLanguage] The user's preferred language, in ISO 639-1 notation.
  /// [proxyAddresses] List of email addresses for the user that direct to the same mailbox.
  /// [showInAddressList] Whether or not the Outlook global address list should include this user. Defaults to `true`.
  /// [state] The state or province in the user's address.
  /// [streetAddress] The street address of the user's place of business.
  /// [surname] The user's surname (family name or last name).
  /// [usageLocation] The usage location of the user. Required for users that will be assigned licenses due to legal requirement to check for availability of services in countries. The usage location is a two letter country code (ISO standard 3166). Examples include: `NO`, `JP`, and `GB`. Cannot be reset to null once set.
  /// [userPrincipalName] The user principal name (UPN) of the user.
  /// [userType] The user type in the directory. Possible values are `Guest` or `Member`.
  UserState({
    this.aboutMe,
    this.accountEnabled,
    this.ageGroup,
    this.businessPhones,
    this.city,
    this.companyName,
    this.consentProvidedForMinor,
    this.costCenter,
    this.country,
    this.creationType,
    this.department,
    this.disablePasswordExpiration,
    this.disableStrongPassword,
    this.displayName,
    this.division,
    this.employeeHireDate,
    this.employeeId,
    this.employeeType,
    this.externalUserState,
    this.faxNumber,
    this.forcePasswordChange,
    this.givenName,
    this.imAddresses,
    this.jobTitle,
    this.mail,
    this.mailNickname,
    this.managerId,
    this.mobilePhone,
    this.objectId,
    this.officeLocation,
    this.onpremisesDistinguishedName,
    this.onpremisesDomainName,
    this.onpremisesImmutableId,
    this.onpremisesSamAccountName,
    this.onpremisesSecurityIdentifier,
    this.onpremisesSyncEnabled,
    this.onpremisesUserPrincipalName,
    this.otherMails,
    this.password,
    this.postalCode,
    this.preferredLanguage,
    this.proxyAddresses,
    this.showInAddressList,
    this.state,
    this.streetAddress,
    this.surname,
    this.usageLocation,
    this.userPrincipalName,
    this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aboutMe': ?aboutMe,
      'accountEnabled': ?accountEnabled,
      'ageGroup': ?ageGroup,
      'businessPhones': ?businessPhones,
      'city': ?city,
      'companyName': ?companyName,
      'consentProvidedForMinor': ?consentProvidedForMinor,
      'costCenter': ?costCenter,
      'country': ?country,
      'creationType': ?creationType,
      'department': ?department,
      'disablePasswordExpiration': ?disablePasswordExpiration,
      'disableStrongPassword': ?disableStrongPassword,
      'displayName': ?displayName,
      'division': ?division,
      'employeeHireDate': ?employeeHireDate,
      'employeeId': ?employeeId,
      'employeeType': ?employeeType,
      'externalUserState': ?externalUserState,
      'faxNumber': ?faxNumber,
      'forcePasswordChange': ?forcePasswordChange,
      'givenName': ?givenName,
      'imAddresses': ?imAddresses,
      'jobTitle': ?jobTitle,
      'mail': ?mail,
      'mailNickname': ?mailNickname,
      'managerId': ?managerId,
      'mobilePhone': ?mobilePhone,
      'objectId': ?objectId,
      'officeLocation': ?officeLocation,
      'onpremisesDistinguishedName': ?onpremisesDistinguishedName,
      'onpremisesDomainName': ?onpremisesDomainName,
      'onpremisesImmutableId': ?onpremisesImmutableId,
      'onpremisesSamAccountName': ?onpremisesSamAccountName,
      'onpremisesSecurityIdentifier': ?onpremisesSecurityIdentifier,
      'onpremisesSyncEnabled': ?onpremisesSyncEnabled,
      'onpremisesUserPrincipalName': ?onpremisesUserPrincipalName,
      'otherMails': ?otherMails,
      'password': ?password,
      'postalCode': ?postalCode,
      'preferredLanguage': ?preferredLanguage,
      'proxyAddresses': ?proxyAddresses,
      'showInAddressList': ?showInAddressList,
      'state': ?state,
      'streetAddress': ?streetAddress,
      'surname': ?surname,
      'usageLocation': ?usageLocation,
      'userPrincipalName': ?userPrincipalName,
      'userType': ?userType,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      aboutMe: (() { final guardedValue = map['aboutMe']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountEnabled: (() { final guardedValue = map['accountEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ageGroup: (() { final guardedValue = map['ageGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      businessPhones: (() { final guardedValue = map['businessPhones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      city: (() { final guardedValue = map['city']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      companyName: (() { final guardedValue = map['companyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consentProvidedForMinor: (() { final guardedValue = map['consentProvidedForMinor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      costCenter: (() { final guardedValue = map['costCenter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationType: (() { final guardedValue = map['creationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      department: (() { final guardedValue = map['department']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disablePasswordExpiration: (() { final guardedValue = map['disablePasswordExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableStrongPassword: (() { final guardedValue = map['disableStrongPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      division: (() { final guardedValue = map['division']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      employeeHireDate: (() { final guardedValue = map['employeeHireDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      employeeId: (() { final guardedValue = map['employeeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      employeeType: (() { final guardedValue = map['employeeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalUserState: (() { final guardedValue = map['externalUserState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      faxNumber: (() { final guardedValue = map['faxNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forcePasswordChange: (() { final guardedValue = map['forcePasswordChange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      givenName: (() { final guardedValue = map['givenName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imAddresses: (() { final guardedValue = map['imAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      jobTitle: (() { final guardedValue = map['jobTitle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mail: (() { final guardedValue = map['mail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mailNickname: (() { final guardedValue = map['mailNickname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managerId: (() { final guardedValue = map['managerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mobilePhone: (() { final guardedValue = map['mobilePhone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      officeLocation: (() { final guardedValue = map['officeLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onpremisesDistinguishedName: (() { final guardedValue = map['onpremisesDistinguishedName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onpremisesDomainName: (() { final guardedValue = map['onpremisesDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onpremisesImmutableId: (() { final guardedValue = map['onpremisesImmutableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onpremisesSamAccountName: (() { final guardedValue = map['onpremisesSamAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onpremisesSecurityIdentifier: (() { final guardedValue = map['onpremisesSecurityIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onpremisesSyncEnabled: (() { final guardedValue = map['onpremisesSyncEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      onpremisesUserPrincipalName: (() { final guardedValue = map['onpremisesUserPrincipalName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      otherMails: (() { final guardedValue = map['otherMails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postalCode: (() { final guardedValue = map['postalCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredLanguage: (() { final guardedValue = map['preferredLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyAddresses: (() { final guardedValue = map['proxyAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      showInAddressList: (() { final guardedValue = map['showInAddressList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streetAddress: (() { final guardedValue = map['streetAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      surname: (() { final guardedValue = map['surname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usageLocation: (() { final guardedValue = map['usageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userPrincipalName: (() { final guardedValue = map['userPrincipalName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userType: (() { final guardedValue = map['userType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

