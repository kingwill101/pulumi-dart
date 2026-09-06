// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'apple_response.dart';
import 'azure_active_directory_response.dart';
import 'azure_static_web_apps_response.dart';
import 'custom_open_id_connect_provider_response.dart';
import 'facebook_response.dart';
import 'git_hub_response.dart';
import 'google_response.dart';
import 'legacy_microsoft_account_response.dart';
import 'twitter_response.dart';

/// The configuration settings of each of the identity providers used to configure App Service Authentication/Authorization.
class IdentityProvidersResponse {
  /// The configuration settings of the Apple provider.
  final pulumi.Input<AppleResponse?>? apple;
  /// The configuration settings of the Azure Active directory provider.
  final pulumi.Input<AzureActiveDirectoryResponse?>? azureActiveDirectory;
  /// The configuration settings of the Azure Static Web Apps provider.
  final pulumi.Input<AzureStaticWebAppsResponse?>? azureStaticWebApps;
  /// The map of the name of the alias of each custom Open ID Connect provider to the
  /// configuration settings of the custom Open ID Connect provider.
  final pulumi.Input<Map<String, CustomOpenIdConnectProviderResponse>?>? customOpenIdConnectProviders;
  /// The configuration settings of the Facebook provider.
  final pulumi.Input<FacebookResponse?>? facebook;
  /// The configuration settings of the GitHub provider.
  final pulumi.Input<GitHubResponse?>? gitHub;
  /// The configuration settings of the Google provider.
  final pulumi.Input<GoogleResponse?>? google;
  /// The configuration settings of the legacy Microsoft Account provider.
  final pulumi.Input<LegacyMicrosoftAccountResponse?>? legacyMicrosoftAccount;
  /// The configuration settings of the Twitter provider.
  final pulumi.Input<TwitterResponse?>? twitter;

  /// Creates a new [IdentityProvidersResponse].
  /// [apple] The configuration settings of the Apple provider.
  /// [azureActiveDirectory] The configuration settings of the Azure Active directory provider.
  /// [azureStaticWebApps] The configuration settings of the Azure Static Web Apps provider.
  /// [customOpenIdConnectProviders] The map of the name of the alias of each custom Open ID Connect provider to the
  /// [facebook] The configuration settings of the Facebook provider.
  /// [gitHub] The configuration settings of the GitHub provider.
  /// [google] The configuration settings of the Google provider.
  /// [legacyMicrosoftAccount] The configuration settings of the legacy Microsoft Account provider.
  /// [twitter] The configuration settings of the Twitter provider.
  const IdentityProvidersResponse({
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
      'apple': ?pulumi.Input.mapOptionalInputValue<AppleResponse, Map<String, dynamic>>(apple, (value) => value.toMap()),
      'azureActiveDirectory': ?pulumi.Input.mapOptionalInputValue<AzureActiveDirectoryResponse, Map<String, dynamic>>(azureActiveDirectory, (value) => value.toMap()),
      'azureStaticWebApps': ?pulumi.Input.mapOptionalInputValue<AzureStaticWebAppsResponse, Map<String, dynamic>>(azureStaticWebApps, (value) => value.toMap()),
      'customOpenIdConnectProviders': ?pulumi.Input.mapOptionalInputValue<Map<String, CustomOpenIdConnectProviderResponse>, Map<String, Map<String, dynamic>>>(customOpenIdConnectProviders, (value) => pulumi.Input.encodeMapValues<CustomOpenIdConnectProviderResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'facebook': ?pulumi.Input.mapOptionalInputValue<FacebookResponse, Map<String, dynamic>>(facebook, (value) => value.toMap()),
      'gitHub': ?pulumi.Input.mapOptionalInputValue<GitHubResponse, Map<String, dynamic>>(gitHub, (value) => value.toMap()),
      'google': ?pulumi.Input.mapOptionalInputValue<GoogleResponse, Map<String, dynamic>>(google, (value) => value.toMap()),
      'legacyMicrosoftAccount': ?pulumi.Input.mapOptionalInputValue<LegacyMicrosoftAccountResponse, Map<String, dynamic>>(legacyMicrosoftAccount, (value) => value.toMap()),
      'twitter': ?pulumi.Input.mapOptionalInputValue<TwitterResponse, Map<String, dynamic>>(twitter, (value) => value.toMap()),
    };
  }

  factory IdentityProvidersResponse.fromMap(Map<String, dynamic> map) {
    return IdentityProvidersResponse(
      apple: (() { final guardedValue = map['apple']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureActiveDirectory: (() { final guardedValue = map['azureActiveDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureActiveDirectoryResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureStaticWebApps: (() { final guardedValue = map['azureStaticWebApps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureStaticWebAppsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customOpenIdConnectProviders: (() { final guardedValue = map['customOpenIdConnectProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<CustomOpenIdConnectProviderResponse>(guardedValue, (value) => CustomOpenIdConnectProviderResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      facebook: (() { final guardedValue = map['facebook']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FacebookResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gitHub: (() { final guardedValue = map['gitHub']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GitHubResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      google: (() { final guardedValue = map['google']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      legacyMicrosoftAccount: (() { final guardedValue = map['legacyMicrosoftAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LegacyMicrosoftAccountResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      twitter: (() { final guardedValue = map['twitter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TwitterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
