// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apple.dart';
import 'azure_active_directory.dart';
import 'azure_static_web_apps.dart';
import 'custom_open_id_connect_provider.dart';
import 'facebook.dart';
import 'git_hub.dart';
import 'google.dart';
import 'legacy_microsoft_account.dart';
import 'twitter.dart';

/// The configuration settings of each of the identity providers used to configure App Service Authentication/Authorization.
class IdentityProviders {
  /// The configuration settings of the Apple provider.
  final pulumi.Input<Apple>? apple;
  /// The configuration settings of the Azure Active directory provider.
  final pulumi.Input<AzureActiveDirectory>? azureActiveDirectory;
  /// The configuration settings of the Azure Static Web Apps provider.
  final pulumi.Input<AzureStaticWebApps>? azureStaticWebApps;
  /// The map of the name of the alias of each custom Open ID Connect provider to the
  /// configuration settings of the custom Open ID Connect provider.
  final pulumi.Input<Map<String, CustomOpenIdConnectProvider>>? customOpenIdConnectProviders;
  /// The configuration settings of the Facebook provider.
  final pulumi.Input<Facebook>? facebook;
  /// The configuration settings of the GitHub provider.
  final pulumi.Input<GitHub>? gitHub;
  /// The configuration settings of the Google provider.
  final pulumi.Input<Google>? google;
  /// The configuration settings of the legacy Microsoft Account provider.
  final pulumi.Input<LegacyMicrosoftAccount>? legacyMicrosoftAccount;
  /// The configuration settings of the Twitter provider.
  final pulumi.Input<Twitter>? twitter;

  /// Creates a new [IdentityProviders].
  /// [apple] The configuration settings of the Apple provider.
  /// [azureActiveDirectory] The configuration settings of the Azure Active directory provider.
  /// [azureStaticWebApps] The configuration settings of the Azure Static Web Apps provider.
  /// [customOpenIdConnectProviders] The map of the name of the alias of each custom Open ID Connect provider to the
  /// [facebook] The configuration settings of the Facebook provider.
  /// [gitHub] The configuration settings of the GitHub provider.
  /// [google] The configuration settings of the Google provider.
  /// [legacyMicrosoftAccount] The configuration settings of the legacy Microsoft Account provider.
  /// [twitter] The configuration settings of the Twitter provider.
  IdentityProviders({
    this.apple,
    this.azureActiveDirectory,
    this.azureStaticWebApps,
    this.customOpenIdConnectProviders,
    this.facebook,
    this.gitHub,
    this.google,
    this.legacyMicrosoftAccount,
    this.twitter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apple': ?pulumi.Input.mapOptionalInputValue<Apple, Map<String, dynamic>>(apple, (value) => value.toMap()),
      'azureActiveDirectory': ?pulumi.Input.mapOptionalInputValue<AzureActiveDirectory, Map<String, dynamic>>(azureActiveDirectory, (value) => value.toMap()),
      'azureStaticWebApps': ?pulumi.Input.mapOptionalInputValue<AzureStaticWebApps, Map<String, dynamic>>(azureStaticWebApps, (value) => value.toMap()),
      'customOpenIdConnectProviders': ?pulumi.Input.mapOptionalInputValue<Map<String, CustomOpenIdConnectProvider>, Map<String, Map<String, dynamic>>>(customOpenIdConnectProviders, (value) => pulumi.Input.encodeMapValues<CustomOpenIdConnectProvider, Map<String, dynamic>>(value, (value) => value.toMap())),
      'facebook': ?pulumi.Input.mapOptionalInputValue<Facebook, Map<String, dynamic>>(facebook, (value) => value.toMap()),
      'gitHub': ?pulumi.Input.mapOptionalInputValue<GitHub, Map<String, dynamic>>(gitHub, (value) => value.toMap()),
      'google': ?pulumi.Input.mapOptionalInputValue<Google, Map<String, dynamic>>(google, (value) => value.toMap()),
      'legacyMicrosoftAccount': ?pulumi.Input.mapOptionalInputValue<LegacyMicrosoftAccount, Map<String, dynamic>>(legacyMicrosoftAccount, (value) => value.toMap()),
      'twitter': ?pulumi.Input.mapOptionalInputValue<Twitter, Map<String, dynamic>>(twitter, (value) => value.toMap()),
    };
  }

  factory IdentityProviders.fromMap(Map<String, dynamic> map) {
    return IdentityProviders(
      apple: map['apple'] == null ? null : (Apple.fromMap((map['apple'] as Map).cast<String, dynamic>())).input(),
      azureActiveDirectory: map['azureActiveDirectory'] == null ? null : (AzureActiveDirectory.fromMap((map['azureActiveDirectory'] as Map).cast<String, dynamic>())).input(),
      azureStaticWebApps: map['azureStaticWebApps'] == null ? null : (AzureStaticWebApps.fromMap((map['azureStaticWebApps'] as Map).cast<String, dynamic>())).input(),
      customOpenIdConnectProviders: map['customOpenIdConnectProviders'] == null ? null : (pulumi.Input.decodeMapValues<CustomOpenIdConnectProvider>(map['customOpenIdConnectProviders'], (value) => CustomOpenIdConnectProvider.fromMap((value as Map).cast<String, dynamic>()))).input(),
      facebook: map['facebook'] == null ? null : (Facebook.fromMap((map['facebook'] as Map).cast<String, dynamic>())).input(),
      gitHub: map['gitHub'] == null ? null : (GitHub.fromMap((map['gitHub'] as Map).cast<String, dynamic>())).input(),
      google: map['google'] == null ? null : (Google.fromMap((map['google'] as Map).cast<String, dynamic>())).input(),
      legacyMicrosoftAccount: map['legacyMicrosoftAccount'] == null ? null : (LegacyMicrosoftAccount.fromMap((map['legacyMicrosoftAccount'] as Map).cast<String, dynamic>())).input(),
      twitter: map['twitter'] == null ? null : (Twitter.fromMap((map['twitter'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

