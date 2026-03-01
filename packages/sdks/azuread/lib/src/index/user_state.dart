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
  /// > **Passwords and importing users** Passwords can be changed but not cleared. Removing the `password` property for an existing user resource, or setting the password value to a blank string, will not remove the password. When importing a user, Terraform will not reset the password unless the value is subsequently changed in your configuration.
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
    pulumi.Output<String>? aboutMe,
    pulumi.Output<bool>? accountEnabled,
    pulumi.Output<String>? ageGroup,
    pulumi.Output<List<String>>? businessPhones,
    pulumi.Output<String>? city,
    pulumi.Output<String>? companyName,
    pulumi.Output<String>? consentProvidedForMinor,
    pulumi.Output<String>? costCenter,
    pulumi.Output<String>? country,
    pulumi.Output<String>? creationType,
    pulumi.Output<String>? department,
    pulumi.Output<bool>? disablePasswordExpiration,
    pulumi.Output<bool>? disableStrongPassword,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? division,
    pulumi.Output<String>? employeeHireDate,
    pulumi.Output<String>? employeeId,
    pulumi.Output<String>? employeeType,
    pulumi.Output<String>? externalUserState,
    pulumi.Output<String>? faxNumber,
    pulumi.Output<bool>? forcePasswordChange,
    pulumi.Output<String>? givenName,
    pulumi.Output<List<String>>? imAddresses,
    pulumi.Output<String>? jobTitle,
    pulumi.Output<String>? mail,
    pulumi.Output<String>? mailNickname,
    pulumi.Output<String>? managerId,
    pulumi.Output<String>? mobilePhone,
    pulumi.Output<String>? objectId,
    pulumi.Output<String>? officeLocation,
    pulumi.Output<String>? onpremisesDistinguishedName,
    pulumi.Output<String>? onpremisesDomainName,
    pulumi.Output<String>? onpremisesImmutableId,
    pulumi.Output<String>? onpremisesSamAccountName,
    pulumi.Output<String>? onpremisesSecurityIdentifier,
    pulumi.Output<bool>? onpremisesSyncEnabled,
    pulumi.Output<String>? onpremisesUserPrincipalName,
    pulumi.Output<List<String>>? otherMails,
    pulumi.Output<String>? password,
    pulumi.Output<String>? postalCode,
    pulumi.Output<String>? preferredLanguage,
    pulumi.Output<List<String>>? proxyAddresses,
    pulumi.Output<bool>? showInAddressList,
    pulumi.Output<String>? state,
    pulumi.Output<String>? streetAddress,
    pulumi.Output<String>? surname,
    pulumi.Output<String>? usageLocation,
    pulumi.Output<String>? userPrincipalName,
    pulumi.Output<String>? userType,
  }) :
      aboutMe = pulumi.Input.asOptionalInput<String>(aboutMe),
      accountEnabled = pulumi.Input.asOptionalInput<bool>(accountEnabled),
      ageGroup = pulumi.Input.asOptionalInput<String>(ageGroup),
      businessPhones = pulumi.Input.asOptionalInput<List<String>>(businessPhones),
      city = pulumi.Input.asOptionalInput<String>(city),
      companyName = pulumi.Input.asOptionalInput<String>(companyName),
      consentProvidedForMinor = pulumi.Input.asOptionalInput<String>(consentProvidedForMinor),
      costCenter = pulumi.Input.asOptionalInput<String>(costCenter),
      country = pulumi.Input.asOptionalInput<String>(country),
      creationType = pulumi.Input.asOptionalInput<String>(creationType),
      department = pulumi.Input.asOptionalInput<String>(department),
      disablePasswordExpiration = pulumi.Input.asOptionalInput<bool>(disablePasswordExpiration),
      disableStrongPassword = pulumi.Input.asOptionalInput<bool>(disableStrongPassword),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      division = pulumi.Input.asOptionalInput<String>(division),
      employeeHireDate = pulumi.Input.asOptionalInput<String>(employeeHireDate),
      employeeId = pulumi.Input.asOptionalInput<String>(employeeId),
      employeeType = pulumi.Input.asOptionalInput<String>(employeeType),
      externalUserState = pulumi.Input.asOptionalInput<String>(externalUserState),
      faxNumber = pulumi.Input.asOptionalInput<String>(faxNumber),
      forcePasswordChange = pulumi.Input.asOptionalInput<bool>(forcePasswordChange),
      givenName = pulumi.Input.asOptionalInput<String>(givenName),
      imAddresses = pulumi.Input.asOptionalInput<List<String>>(imAddresses),
      jobTitle = pulumi.Input.asOptionalInput<String>(jobTitle),
      mail = pulumi.Input.asOptionalInput<String>(mail),
      mailNickname = pulumi.Input.asOptionalInput<String>(mailNickname),
      managerId = pulumi.Input.asOptionalInput<String>(managerId),
      mobilePhone = pulumi.Input.asOptionalInput<String>(mobilePhone),
      objectId = pulumi.Input.asOptionalInput<String>(objectId),
      officeLocation = pulumi.Input.asOptionalInput<String>(officeLocation),
      onpremisesDistinguishedName = pulumi.Input.asOptionalInput<String>(onpremisesDistinguishedName),
      onpremisesDomainName = pulumi.Input.asOptionalInput<String>(onpremisesDomainName),
      onpremisesImmutableId = pulumi.Input.asOptionalInput<String>(onpremisesImmutableId),
      onpremisesSamAccountName = pulumi.Input.asOptionalInput<String>(onpremisesSamAccountName),
      onpremisesSecurityIdentifier = pulumi.Input.asOptionalInput<String>(onpremisesSecurityIdentifier),
      onpremisesSyncEnabled = pulumi.Input.asOptionalInput<bool>(onpremisesSyncEnabled),
      onpremisesUserPrincipalName = pulumi.Input.asOptionalInput<String>(onpremisesUserPrincipalName),
      otherMails = pulumi.Input.asOptionalInput<List<String>>(otherMails),
      password = pulumi.Input.asOptionalInput<String>(password),
      postalCode = pulumi.Input.asOptionalInput<String>(postalCode),
      preferredLanguage = pulumi.Input.asOptionalInput<String>(preferredLanguage),
      proxyAddresses = pulumi.Input.asOptionalInput<List<String>>(proxyAddresses),
      showInAddressList = pulumi.Input.asOptionalInput<bool>(showInAddressList),
      state = pulumi.Input.asOptionalInput<String>(state),
      streetAddress = pulumi.Input.asOptionalInput<String>(streetAddress),
      surname = pulumi.Input.asOptionalInput<String>(surname),
      usageLocation = pulumi.Input.asOptionalInput<String>(usageLocation),
      userPrincipalName = pulumi.Input.asOptionalInput<String>(userPrincipalName),
      userType = pulumi.Input.asOptionalInput<String>(userType);

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
      aboutMe: map['aboutMe'] == null ? null : pulumi.Output.create<String>(map['aboutMe'] as String),
      accountEnabled: map['accountEnabled'] == null ? null : pulumi.Output.create<bool>(map['accountEnabled'] as bool),
      ageGroup: map['ageGroup'] == null ? null : pulumi.Output.create<String>(map['ageGroup'] as String),
      businessPhones: map['businessPhones'] == null ? null : pulumi.Output.create<List<String>>((map['businessPhones'] as List).cast<String>()),
      city: map['city'] == null ? null : pulumi.Output.create<String>(map['city'] as String),
      companyName: map['companyName'] == null ? null : pulumi.Output.create<String>(map['companyName'] as String),
      consentProvidedForMinor: map['consentProvidedForMinor'] == null ? null : pulumi.Output.create<String>(map['consentProvidedForMinor'] as String),
      costCenter: map['costCenter'] == null ? null : pulumi.Output.create<String>(map['costCenter'] as String),
      country: map['country'] == null ? null : pulumi.Output.create<String>(map['country'] as String),
      creationType: map['creationType'] == null ? null : pulumi.Output.create<String>(map['creationType'] as String),
      department: map['department'] == null ? null : pulumi.Output.create<String>(map['department'] as String),
      disablePasswordExpiration: map['disablePasswordExpiration'] == null ? null : pulumi.Output.create<bool>(map['disablePasswordExpiration'] as bool),
      disableStrongPassword: map['disableStrongPassword'] == null ? null : pulumi.Output.create<bool>(map['disableStrongPassword'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      division: map['division'] == null ? null : pulumi.Output.create<String>(map['division'] as String),
      employeeHireDate: map['employeeHireDate'] == null ? null : pulumi.Output.create<String>(map['employeeHireDate'] as String),
      employeeId: map['employeeId'] == null ? null : pulumi.Output.create<String>(map['employeeId'] as String),
      employeeType: map['employeeType'] == null ? null : pulumi.Output.create<String>(map['employeeType'] as String),
      externalUserState: map['externalUserState'] == null ? null : pulumi.Output.create<String>(map['externalUserState'] as String),
      faxNumber: map['faxNumber'] == null ? null : pulumi.Output.create<String>(map['faxNumber'] as String),
      forcePasswordChange: map['forcePasswordChange'] == null ? null : pulumi.Output.create<bool>(map['forcePasswordChange'] as bool),
      givenName: map['givenName'] == null ? null : pulumi.Output.create<String>(map['givenName'] as String),
      imAddresses: map['imAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['imAddresses'] as List).cast<String>()),
      jobTitle: map['jobTitle'] == null ? null : pulumi.Output.create<String>(map['jobTitle'] as String),
      mail: map['mail'] == null ? null : pulumi.Output.create<String>(map['mail'] as String),
      mailNickname: map['mailNickname'] == null ? null : pulumi.Output.create<String>(map['mailNickname'] as String),
      managerId: map['managerId'] == null ? null : pulumi.Output.create<String>(map['managerId'] as String),
      mobilePhone: map['mobilePhone'] == null ? null : pulumi.Output.create<String>(map['mobilePhone'] as String),
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
      officeLocation: map['officeLocation'] == null ? null : pulumi.Output.create<String>(map['officeLocation'] as String),
      onpremisesDistinguishedName: map['onpremisesDistinguishedName'] == null ? null : pulumi.Output.create<String>(map['onpremisesDistinguishedName'] as String),
      onpremisesDomainName: map['onpremisesDomainName'] == null ? null : pulumi.Output.create<String>(map['onpremisesDomainName'] as String),
      onpremisesImmutableId: map['onpremisesImmutableId'] == null ? null : pulumi.Output.create<String>(map['onpremisesImmutableId'] as String),
      onpremisesSamAccountName: map['onpremisesSamAccountName'] == null ? null : pulumi.Output.create<String>(map['onpremisesSamAccountName'] as String),
      onpremisesSecurityIdentifier: map['onpremisesSecurityIdentifier'] == null ? null : pulumi.Output.create<String>(map['onpremisesSecurityIdentifier'] as String),
      onpremisesSyncEnabled: map['onpremisesSyncEnabled'] == null ? null : pulumi.Output.create<bool>(map['onpremisesSyncEnabled'] as bool),
      onpremisesUserPrincipalName: map['onpremisesUserPrincipalName'] == null ? null : pulumi.Output.create<String>(map['onpremisesUserPrincipalName'] as String),
      otherMails: map['otherMails'] == null ? null : pulumi.Output.create<List<String>>((map['otherMails'] as List).cast<String>()),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      postalCode: map['postalCode'] == null ? null : pulumi.Output.create<String>(map['postalCode'] as String),
      preferredLanguage: map['preferredLanguage'] == null ? null : pulumi.Output.create<String>(map['preferredLanguage'] as String),
      proxyAddresses: map['proxyAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['proxyAddresses'] as List).cast<String>()),
      showInAddressList: map['showInAddressList'] == null ? null : pulumi.Output.create<bool>(map['showInAddressList'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      streetAddress: map['streetAddress'] == null ? null : pulumi.Output.create<String>(map['streetAddress'] as String),
      surname: map['surname'] == null ? null : pulumi.Output.create<String>(map['surname'] as String),
      usageLocation: map['usageLocation'] == null ? null : pulumi.Output.create<String>(map['usageLocation'] as String),
      userPrincipalName: map['userPrincipalName'] == null ? null : pulumi.Output.create<String>(map['userPrincipalName'] as String),
      userType: map['userType'] == null ? null : pulumi.Output.create<String>(map['userType'] as String),
    );
  }
}

