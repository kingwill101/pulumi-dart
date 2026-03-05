// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConditionalAccessPolicySessionControls {
  /// Whether application enforced restrictions are enabled. Defaults to `false`.
  ///
  /// &gt; Only Office 365, Exchange Online and Sharepoint Online support application enforced restrictions.
  final pulumi.Input<bool>? applicationEnforcedRestrictionsEnabled;
  /// Enables cloud app security and specifies the cloud app security policy to use. Possible values are: `blockDownloads`, `mcasConfigured`, `monitorOnly` or `unknownFutureValue`.
  final pulumi.Input<String>? cloudAppSecurityPolicy;
  /// Disables [resilience defaults](https://learn.microsoft.com/en-us/azure/active-directory/conditional-access/resilience-defaults). Defaults to `false`.
  final pulumi.Input<bool>? disableResilienceDefaults;
  /// Session control to define whether to persist cookies. Possible values are: `always` or `never`.
  final pulumi.Input<String>? persistentBrowserMode;
  /// Number of days or hours to enforce sign-in frequency. Required when `sign_in_frequency_period` is specified.
  final pulumi.Input<int>? signInFrequency;
  /// Authentication type for enforcing sign-in frequency. Possible values are: `primaryAndSecondaryAuthentication` or `secondaryAuthentication`. Defaults to `primaryAndSecondaryAuthentication`.
  final pulumi.Input<String>? signInFrequencyAuthenticationType;
  /// The interval to apply to sign-in frequency control. Possible values are: `timeBased` or `everyTime`. Defaults to `timeBased`.
  final pulumi.Input<String>? signInFrequencyInterval;
  /// The time period to enforce sign-in frequency. Possible values are: `hours` or `days`. Required when `sign_in_frequency_period` is specified.
  final pulumi.Input<String>? signInFrequencyPeriod;

  /// Creates a new [ConditionalAccessPolicySessionControls].
  /// [applicationEnforcedRestrictionsEnabled] Whether application enforced restrictions are enabled. Defaults to `false`.
  /// [cloudAppSecurityPolicy] Enables cloud app security and specifies the cloud app security policy to use. Possible values are: `blockDownloads`, `mcasConfigured`, `monitorOnly` or `unknownFutureValue`.
  /// [disableResilienceDefaults] Disables [resilience defaults](https://learn.microsoft.com/en-us/azure/active-directory/conditional-access/resilience-defaults). Defaults to `false`.
  /// [persistentBrowserMode] Session control to define whether to persist cookies. Possible values are: `always` or `never`.
  /// [signInFrequency] Number of days or hours to enforce sign-in frequency. Required when `sign_in_frequency_period` is specified.
  /// [signInFrequencyAuthenticationType] Authentication type for enforcing sign-in frequency. Possible values are: `primaryAndSecondaryAuthentication` or `secondaryAuthentication`. Defaults to `primaryAndSecondaryAuthentication`.
  /// [signInFrequencyInterval] The interval to apply to sign-in frequency control. Possible values are: `timeBased` or `everyTime`. Defaults to `timeBased`.
  /// [signInFrequencyPeriod] The time period to enforce sign-in frequency. Possible values are: `hours` or `days`. Required when `sign_in_frequency_period` is specified.
  ConditionalAccessPolicySessionControls({
    this.applicationEnforcedRestrictionsEnabled,
    this.cloudAppSecurityPolicy,
    this.disableResilienceDefaults,
    this.persistentBrowserMode,
    this.signInFrequency,
    this.signInFrequencyAuthenticationType,
    this.signInFrequencyInterval,
    this.signInFrequencyPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationEnforcedRestrictionsEnabled': ?applicationEnforcedRestrictionsEnabled,
      'cloudAppSecurityPolicy': ?cloudAppSecurityPolicy,
      'disableResilienceDefaults': ?disableResilienceDefaults,
      'persistentBrowserMode': ?persistentBrowserMode,
      'signInFrequency': ?signInFrequency,
      'signInFrequencyAuthenticationType': ?signInFrequencyAuthenticationType,
      'signInFrequencyInterval': ?signInFrequencyInterval,
      'signInFrequencyPeriod': ?signInFrequencyPeriod,
    };
  }

  factory ConditionalAccessPolicySessionControls.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicySessionControls(
      applicationEnforcedRestrictionsEnabled: (() { final guardedValue = map['applicationEnforcedRestrictionsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cloudAppSecurityPolicy: (() { final guardedValue = map['cloudAppSecurityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableResilienceDefaults: (() { final guardedValue = map['disableResilienceDefaults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      persistentBrowserMode: (() { final guardedValue = map['persistentBrowserMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signInFrequency: (() { final guardedValue = map['signInFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      signInFrequencyAuthenticationType: (() { final guardedValue = map['signInFrequencyAuthenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signInFrequencyInterval: (() { final guardedValue = map['signInFrequencyInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signInFrequencyPeriod: (() { final guardedValue = map['signInFrequencyPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

