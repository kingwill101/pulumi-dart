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
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? disabledByMicrosoft,
    pulumi.Output<String>? displayName,
    pulumi.Output<List<String>>? groupMembershipClaims,
    pulumi.Output<String>? homepageUrl,
    pulumi.Output<bool>? implicitAccessTokenIssuanceEnabled,
    pulumi.Output<bool>? implicitIdTokenIssuanceEnabled,
    pulumi.Output<String>? logoutUrl,
    pulumi.Output<String>? marketingUrl,
    pulumi.Output<String>? notes,
    pulumi.Output<String>? objectId,
    pulumi.Output<String>? privacyStatementUrl,
    pulumi.Output<String>? publisherDomain,
    pulumi.Output<int>? requestedAccessTokenVersion,
    pulumi.Output<String>? serviceManagementReference,
    pulumi.Output<String>? signInAudience,
    pulumi.Output<String>? supportUrl,
    pulumi.Output<String>? termsOfServiceUrl,
  }) :
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      description = pulumi.Input.asOptionalInput<String>(description),
      disabledByMicrosoft = pulumi.Input.asOptionalInput<String>(disabledByMicrosoft),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      groupMembershipClaims = pulumi.Input.asOptionalInput<List<String>>(groupMembershipClaims),
      homepageUrl = pulumi.Input.asOptionalInput<String>(homepageUrl),
      implicitAccessTokenIssuanceEnabled = pulumi.Input.asOptionalInput<bool>(implicitAccessTokenIssuanceEnabled),
      implicitIdTokenIssuanceEnabled = pulumi.Input.asOptionalInput<bool>(implicitIdTokenIssuanceEnabled),
      logoutUrl = pulumi.Input.asOptionalInput<String>(logoutUrl),
      marketingUrl = pulumi.Input.asOptionalInput<String>(marketingUrl),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      objectId = pulumi.Input.asOptionalInput<String>(objectId),
      privacyStatementUrl = pulumi.Input.asOptionalInput<String>(privacyStatementUrl),
      publisherDomain = pulumi.Input.asOptionalInput<String>(publisherDomain),
      requestedAccessTokenVersion = pulumi.Input.asOptionalInput<int>(requestedAccessTokenVersion),
      serviceManagementReference = pulumi.Input.asOptionalInput<String>(serviceManagementReference),
      signInAudience = pulumi.Input.asOptionalInput<String>(signInAudience),
      supportUrl = pulumi.Input.asOptionalInput<String>(supportUrl),
      termsOfServiceUrl = pulumi.Input.asOptionalInput<String>(termsOfServiceUrl);

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
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disabledByMicrosoft: map['disabledByMicrosoft'] == null ? null : pulumi.Output.create<String>(map['disabledByMicrosoft'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      groupMembershipClaims: map['groupMembershipClaims'] == null ? null : pulumi.Output.create<List<String>>((map['groupMembershipClaims'] as List).cast<String>()),
      homepageUrl: map['homepageUrl'] == null ? null : pulumi.Output.create<String>(map['homepageUrl'] as String),
      implicitAccessTokenIssuanceEnabled: map['implicitAccessTokenIssuanceEnabled'] == null ? null : pulumi.Output.create<bool>(map['implicitAccessTokenIssuanceEnabled'] as bool),
      implicitIdTokenIssuanceEnabled: map['implicitIdTokenIssuanceEnabled'] == null ? null : pulumi.Output.create<bool>(map['implicitIdTokenIssuanceEnabled'] as bool),
      logoutUrl: map['logoutUrl'] == null ? null : pulumi.Output.create<String>(map['logoutUrl'] as String),
      marketingUrl: map['marketingUrl'] == null ? null : pulumi.Output.create<String>(map['marketingUrl'] as String),
      notes: map['notes'] == null ? null : pulumi.Output.create<String>(map['notes'] as String),
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
      privacyStatementUrl: map['privacyStatementUrl'] == null ? null : pulumi.Output.create<String>(map['privacyStatementUrl'] as String),
      publisherDomain: map['publisherDomain'] == null ? null : pulumi.Output.create<String>(map['publisherDomain'] as String),
      requestedAccessTokenVersion: map['requestedAccessTokenVersion'] == null ? null : pulumi.Output.create<int>(map['requestedAccessTokenVersion'] as int),
      serviceManagementReference: map['serviceManagementReference'] == null ? null : pulumi.Output.create<String>(map['serviceManagementReference'] as String),
      signInAudience: map['signInAudience'] == null ? null : pulumi.Output.create<String>(map['signInAudience'] as String),
      supportUrl: map['supportUrl'] == null ? null : pulumi.Output.create<String>(map['supportUrl'] as String),
      termsOfServiceUrl: map['termsOfServiceUrl'] == null ? null : pulumi.Output.create<String>(map['termsOfServiceUrl'] as String),
    );
  }
}

