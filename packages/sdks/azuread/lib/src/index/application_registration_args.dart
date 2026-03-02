// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_application_registration_application_registration_args_doc}
/// The set of arguments for ApplicationRegistration.
/// {@endtemplate}
/// {@macro pulumi_index_application_registration_application_registration_args_doc}
class ApplicationRegistrationArgs {
  /// A description of the application, as shown to end users.
  final pulumi.Input<String>? description;
  /// The display name for the application.
  final pulumi.Input<String> displayName;
  /// Configures the `groups` claim issued in a user or OAuth access token that the app expects. Possible values are `None`, `SecurityGroup`, `DirectoryRole`, `ApplicationGroup` or `All`.
  final pulumi.Input<List<String>>? groupMembershipClaims;
  /// Home page or landing page of the application.
  final pulumi.Input<String>? homepageUrl;
  /// Whether this web application can request an access token using OAuth implicit flow.
  final pulumi.Input<bool>? implicitAccessTokenIssuanceEnabled;
  /// Whether this web application can request an ID token using OAuth implicit flow.
  final pulumi.Input<bool>? implicitIdTokenIssuanceEnabled;
  /// The URL that will be used by Microsoft's authorization service to sign out a user using front-channel, back-channel or SAML logout protocols.
  final pulumi.Input<String>? logoutUrl;
  /// URL of the marketing page for the application.
  final pulumi.Input<String>? marketingUrl;
  /// User-specified notes relevant for the management of the application.
  final pulumi.Input<String>? notes;
  /// URL of the privacy statement for the application.
  final pulumi.Input<String>? privacyStatementUrl;
  /// The access token version expected by this resource. Must be one of `1` or `2`, and must be `2` when `sign_in_audience` is either `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount` Defaults to `2`.
  final pulumi.Input<int>? requestedAccessTokenVersion;
  /// References application context information from a Service or Asset Management database.
  final pulumi.Input<String>? serviceManagementReference;
  /// The Microsoft account types that are supported for the current application. Must be one of `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`. Defaults to `AzureADMyOrg`.
  final pulumi.Input<String>? signInAudience;
  /// URL of the support page for the application.
  final pulumi.Input<String>? supportUrl;
  /// URL of the terms of service statement for the application.
  final pulumi.Input<String>? termsOfServiceUrl;

  /// Creates a new [ApplicationRegistrationArgs].
  /// [description] A description of the application, as shown to end users.
  /// [displayName] The display name for the application.
  /// [groupMembershipClaims] Configures the `groups` claim issued in a user or OAuth access token that the app expects. Possible values are `None`, `SecurityGroup`, `DirectoryRole`, `ApplicationGroup` or `All`.
  /// [homepageUrl] Home page or landing page of the application.
  /// [implicitAccessTokenIssuanceEnabled] Whether this web application can request an access token using OAuth implicit flow.
  /// [implicitIdTokenIssuanceEnabled] Whether this web application can request an ID token using OAuth implicit flow.
  /// [logoutUrl] The URL that will be used by Microsoft's authorization service to sign out a user using front-channel, back-channel or SAML logout protocols.
  /// [marketingUrl] URL of the marketing page for the application.
  /// [notes] User-specified notes relevant for the management of the application.
  /// [privacyStatementUrl] URL of the privacy statement for the application.
  /// [requestedAccessTokenVersion] The access token version expected by this resource. Must be one of `1` or `2`, and must be `2` when `sign_in_audience` is either `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount` Defaults to `2`.
  /// [serviceManagementReference] References application context information from a Service or Asset Management database.
  /// [signInAudience] The Microsoft account types that are supported for the current application. Must be one of `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`. Defaults to `AzureADMyOrg`.
  /// [supportUrl] URL of the support page for the application.
  /// [termsOfServiceUrl] URL of the terms of service statement for the application.
  ApplicationRegistrationArgs({
    this.description,
    required this.displayName,
    this.groupMembershipClaims,
    this.homepageUrl,
    this.implicitAccessTokenIssuanceEnabled,
    this.implicitIdTokenIssuanceEnabled,
    this.logoutUrl,
    this.marketingUrl,
    this.notes,
    this.privacyStatementUrl,
    this.requestedAccessTokenVersion,
    this.serviceManagementReference,
    this.signInAudience,
    this.supportUrl,
    this.termsOfServiceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': displayName,
      'groupMembershipClaims': ?groupMembershipClaims,
      'homepageUrl': ?homepageUrl,
      'implicitAccessTokenIssuanceEnabled': ?implicitAccessTokenIssuanceEnabled,
      'implicitIdTokenIssuanceEnabled': ?implicitIdTokenIssuanceEnabled,
      'logoutUrl': ?logoutUrl,
      'marketingUrl': ?marketingUrl,
      'notes': ?notes,
      'privacyStatementUrl': ?privacyStatementUrl,
      'requestedAccessTokenVersion': ?requestedAccessTokenVersion,
      'serviceManagementReference': ?serviceManagementReference,
      'signInAudience': ?signInAudience,
      'supportUrl': ?supportUrl,
      'termsOfServiceUrl': ?termsOfServiceUrl,
    };
  }

  factory ApplicationRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationRegistrationArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      groupMembershipClaims: map['groupMembershipClaims'] == null ? null : ((map['groupMembershipClaims']! as List).cast<String>()).input(),
      homepageUrl: map['homepageUrl'] == null ? null : (map['homepageUrl']! as String).input(),
      implicitAccessTokenIssuanceEnabled: map['implicitAccessTokenIssuanceEnabled'] == null ? null : (map['implicitAccessTokenIssuanceEnabled']! as bool).input(),
      implicitIdTokenIssuanceEnabled: map['implicitIdTokenIssuanceEnabled'] == null ? null : (map['implicitIdTokenIssuanceEnabled']! as bool).input(),
      logoutUrl: map['logoutUrl'] == null ? null : (map['logoutUrl']! as String).input(),
      marketingUrl: map['marketingUrl'] == null ? null : (map['marketingUrl']! as String).input(),
      notes: map['notes'] == null ? null : (map['notes']! as String).input(),
      privacyStatementUrl: map['privacyStatementUrl'] == null ? null : (map['privacyStatementUrl']! as String).input(),
      requestedAccessTokenVersion: map['requestedAccessTokenVersion'] == null ? null : (map['requestedAccessTokenVersion']! as int).input(),
      serviceManagementReference: map['serviceManagementReference'] == null ? null : (map['serviceManagementReference']! as String).input(),
      signInAudience: map['signInAudience'] == null ? null : (map['signInAudience']! as String).input(),
      supportUrl: map['supportUrl'] == null ? null : (map['supportUrl']! as String).input(),
      termsOfServiceUrl: map['termsOfServiceUrl'] == null ? null : (map['termsOfServiceUrl']! as String).input(),
    );
  }
}

