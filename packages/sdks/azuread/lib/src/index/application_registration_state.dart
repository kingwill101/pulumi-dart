// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationRegistration resources.
class ApplicationRegistrationState {
  /// The Client ID for the application, which is globally unique.
  final pulumi.Input<String>? clientId;
  /// A description of the application, as shown to end users.
  final pulumi.Input<String>? description;
  /// Whether Microsoft has disabled the registered application. If the application is disabled, this will be a string indicating the status/reason, e.g. `DisabledDueToViolationOfServicesAgreement`
  final pulumi.Input<String>? disabledByMicrosoft;
  /// The display name for the application.
  final pulumi.Input<String>? displayName;
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
  /// The object ID of the application within the tenant.
  final pulumi.Input<String>? objectId;
  /// URL of the privacy statement for the application.
  final pulumi.Input<String>? privacyStatementUrl;
  /// The verified publisher domain for the application.
  final pulumi.Input<String>? publisherDomain;
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

  /// Creates a new [ApplicationRegistrationState].
  /// [clientId] The Client ID for the application, which is globally unique.
  /// [description] A description of the application, as shown to end users.
  /// [disabledByMicrosoft] Whether Microsoft has disabled the registered application. If the application is disabled, this will be a string indicating the status/reason, e.g. `DisabledDueToViolationOfServicesAgreement`
  /// [displayName] The display name for the application.
  /// [groupMembershipClaims] Configures the `groups` claim issued in a user or OAuth access token that the app expects. Possible values are `None`, `SecurityGroup`, `DirectoryRole`, `ApplicationGroup` or `All`.
  /// [homepageUrl] Home page or landing page of the application.
  /// [implicitAccessTokenIssuanceEnabled] Whether this web application can request an access token using OAuth implicit flow.
  /// [implicitIdTokenIssuanceEnabled] Whether this web application can request an ID token using OAuth implicit flow.
  /// [logoutUrl] The URL that will be used by Microsoft's authorization service to sign out a user using front-channel, back-channel or SAML logout protocols.
  /// [marketingUrl] URL of the marketing page for the application.
  /// [notes] User-specified notes relevant for the management of the application.
  /// [objectId] The object ID of the application within the tenant.
  /// [privacyStatementUrl] URL of the privacy statement for the application.
  /// [publisherDomain] The verified publisher domain for the application.
  /// [requestedAccessTokenVersion] The access token version expected by this resource. Must be one of `1` or `2`, and must be `2` when `sign_in_audience` is either `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount` Defaults to `2`.
  /// [serviceManagementReference] References application context information from a Service or Asset Management database.
  /// [signInAudience] The Microsoft account types that are supported for the current application. Must be one of `AzureADMyOrg`, `AzureADMultipleOrgs`, `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount`. Defaults to `AzureADMyOrg`.
  /// [supportUrl] URL of the support page for the application.
  /// [termsOfServiceUrl] URL of the terms of service statement for the application.
  ApplicationRegistrationState({
    this.clientId,
    this.description,
    this.disabledByMicrosoft,
    this.displayName,
    this.groupMembershipClaims,
    this.homepageUrl,
    this.implicitAccessTokenIssuanceEnabled,
    this.implicitIdTokenIssuanceEnabled,
    this.logoutUrl,
    this.marketingUrl,
    this.notes,
    this.objectId,
    this.privacyStatementUrl,
    this.publisherDomain,
    this.requestedAccessTokenVersion,
    this.serviceManagementReference,
    this.signInAudience,
    this.supportUrl,
    this.termsOfServiceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'description': ?description,
      'disabledByMicrosoft': ?disabledByMicrosoft,
      'displayName': ?displayName,
      'groupMembershipClaims': ?groupMembershipClaims,
      'homepageUrl': ?homepageUrl,
      'implicitAccessTokenIssuanceEnabled': ?implicitAccessTokenIssuanceEnabled,
      'implicitIdTokenIssuanceEnabled': ?implicitIdTokenIssuanceEnabled,
      'logoutUrl': ?logoutUrl,
      'marketingUrl': ?marketingUrl,
      'notes': ?notes,
      'objectId': ?objectId,
      'privacyStatementUrl': ?privacyStatementUrl,
      'publisherDomain': ?publisherDomain,
      'requestedAccessTokenVersion': ?requestedAccessTokenVersion,
      'serviceManagementReference': ?serviceManagementReference,
      'signInAudience': ?signInAudience,
      'supportUrl': ?supportUrl,
      'termsOfServiceUrl': ?termsOfServiceUrl,
    };
  }

  factory ApplicationRegistrationState.fromMap(Map<String, dynamic> map) {
    return ApplicationRegistrationState(
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disabledByMicrosoft: map['disabledByMicrosoft'] == null ? null : (map['disabledByMicrosoft']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      groupMembershipClaims: map['groupMembershipClaims'] == null ? null : ((map['groupMembershipClaims']! as List).cast<String>()).input(),
      homepageUrl: map['homepageUrl'] == null ? null : (map['homepageUrl']! as String).input(),
      implicitAccessTokenIssuanceEnabled: map['implicitAccessTokenIssuanceEnabled'] == null ? null : (map['implicitAccessTokenIssuanceEnabled']! as bool).input(),
      implicitIdTokenIssuanceEnabled: map['implicitIdTokenIssuanceEnabled'] == null ? null : (map['implicitIdTokenIssuanceEnabled']! as bool).input(),
      logoutUrl: map['logoutUrl'] == null ? null : (map['logoutUrl']! as String).input(),
      marketingUrl: map['marketingUrl'] == null ? null : (map['marketingUrl']! as String).input(),
      notes: map['notes'] == null ? null : (map['notes']! as String).input(),
      objectId: map['objectId'] == null ? null : (map['objectId']! as String).input(),
      privacyStatementUrl: map['privacyStatementUrl'] == null ? null : (map['privacyStatementUrl']! as String).input(),
      publisherDomain: map['publisherDomain'] == null ? null : (map['publisherDomain']! as String).input(),
      requestedAccessTokenVersion: map['requestedAccessTokenVersion'] == null ? null : (map['requestedAccessTokenVersion']! as int).input(),
      serviceManagementReference: map['serviceManagementReference'] == null ? null : (map['serviceManagementReference']! as String).input(),
      signInAudience: map['signInAudience'] == null ? null : (map['signInAudience']! as String).input(),
      supportUrl: map['supportUrl'] == null ? null : (map['supportUrl']! as String).input(),
      termsOfServiceUrl: map['termsOfServiceUrl'] == null ? null : (map['termsOfServiceUrl']! as String).input(),
    );
  }
}

