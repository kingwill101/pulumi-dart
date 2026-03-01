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
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<List<String>>? groupMembershipClaims,
    pulumi.Output<String>? homepageUrl,
    pulumi.Output<bool>? implicitAccessTokenIssuanceEnabled,
    pulumi.Output<bool>? implicitIdTokenIssuanceEnabled,
    pulumi.Output<String>? logoutUrl,
    pulumi.Output<String>? marketingUrl,
    pulumi.Output<String>? notes,
    pulumi.Output<String>? privacyStatementUrl,
    pulumi.Output<int>? requestedAccessTokenVersion,
    pulumi.Output<String>? serviceManagementReference,
    pulumi.Output<String>? signInAudience,
    pulumi.Output<String>? supportUrl,
    pulumi.Output<String>? termsOfServiceUrl,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      groupMembershipClaims = pulumi.Input.asOptionalInput<List<String>>(groupMembershipClaims),
      homepageUrl = pulumi.Input.asOptionalInput<String>(homepageUrl),
      implicitAccessTokenIssuanceEnabled = pulumi.Input.asOptionalInput<bool>(implicitAccessTokenIssuanceEnabled),
      implicitIdTokenIssuanceEnabled = pulumi.Input.asOptionalInput<bool>(implicitIdTokenIssuanceEnabled),
      logoutUrl = pulumi.Input.asOptionalInput<String>(logoutUrl),
      marketingUrl = pulumi.Input.asOptionalInput<String>(marketingUrl),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      privacyStatementUrl = pulumi.Input.asOptionalInput<String>(privacyStatementUrl),
      requestedAccessTokenVersion = pulumi.Input.asOptionalInput<int>(requestedAccessTokenVersion),
      serviceManagementReference = pulumi.Input.asOptionalInput<String>(serviceManagementReference),
      signInAudience = pulumi.Input.asOptionalInput<String>(signInAudience),
      supportUrl = pulumi.Input.asOptionalInput<String>(supportUrl),
      termsOfServiceUrl = pulumi.Input.asOptionalInput<String>(termsOfServiceUrl);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      groupMembershipClaims: map['groupMembershipClaims'] == null ? null : pulumi.Output.create<List<String>>((map['groupMembershipClaims'] as List).cast<String>()),
      homepageUrl: map['homepageUrl'] == null ? null : pulumi.Output.create<String>(map['homepageUrl'] as String),
      implicitAccessTokenIssuanceEnabled: map['implicitAccessTokenIssuanceEnabled'] == null ? null : pulumi.Output.create<bool>(map['implicitAccessTokenIssuanceEnabled'] as bool),
      implicitIdTokenIssuanceEnabled: map['implicitIdTokenIssuanceEnabled'] == null ? null : pulumi.Output.create<bool>(map['implicitIdTokenIssuanceEnabled'] as bool),
      logoutUrl: map['logoutUrl'] == null ? null : pulumi.Output.create<String>(map['logoutUrl'] as String),
      marketingUrl: map['marketingUrl'] == null ? null : pulumi.Output.create<String>(map['marketingUrl'] as String),
      notes: map['notes'] == null ? null : pulumi.Output.create<String>(map['notes'] as String),
      privacyStatementUrl: map['privacyStatementUrl'] == null ? null : pulumi.Output.create<String>(map['privacyStatementUrl'] as String),
      requestedAccessTokenVersion: map['requestedAccessTokenVersion'] == null ? null : pulumi.Output.create<int>(map['requestedAccessTokenVersion'] as int),
      serviceManagementReference: map['serviceManagementReference'] == null ? null : pulumi.Output.create<String>(map['serviceManagementReference'] as String),
      signInAudience: map['signInAudience'] == null ? null : pulumi.Output.create<String>(map['signInAudience'] as String),
      supportUrl: map['supportUrl'] == null ? null : pulumi.Output.create<String>(map['supportUrl'] as String),
      termsOfServiceUrl: map['termsOfServiceUrl'] == null ? null : pulumi.Output.create<String>(map['termsOfServiceUrl'] as String),
    );
  }
}

