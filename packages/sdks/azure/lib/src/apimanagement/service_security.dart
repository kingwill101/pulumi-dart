// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceSecurity {
  /// Should SSL 3.0 be enabled on the backend of the gateway? Defaults to `false`.
  ///
  /// &gt; **Note:** This maps to the `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Ssl30` field
  final pulumi.Input<bool>? backendSsl30Enabled;

  /// Should TLS 1.0 be enabled on the backend of the gateway? Defaults to `false`.
  ///
  /// &gt; **Note:** This maps to the `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls10` field
  final pulumi.Input<bool>? backendTls10Enabled;

  /// Should TLS 1.1 be enabled on the backend of the gateway? Defaults to `false`.
  ///
  /// &gt; **Note:** This maps to the `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls11` field
  final pulumi.Input<bool>? backendTls11Enabled;
  final pulumi.Input<bool>? enableBackendSsl30;
  final pulumi.Input<bool>? enableBackendTls10;
  final pulumi.Input<bool>? enableBackendTls11;
  final pulumi.Input<bool>? enableFrontendSsl30;
  final pulumi.Input<bool>? enableFrontendTls10;
  final pulumi.Input<bool>? enableFrontendTls11;

  /// Should SSL 3.0 be enabled on the frontend of the gateway? Defaults to `false`.
  ///
  /// &gt; **Note:** This maps to the `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Ssl30` field
  final pulumi.Input<bool>? frontendSsl30Enabled;

  /// Should TLS 1.0 be enabled on the frontend of the gateway? Defaults to `false`.
  ///
  /// &gt; **Note:** This maps to the `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls10` field
  final pulumi.Input<bool>? frontendTls10Enabled;

  /// Should TLS 1.1 be enabled on the frontend of the gateway? Defaults to `false`.
  ///
  /// &gt; **Note:** This maps to the `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls11` field
  final pulumi.Input<bool>? frontendTls11Enabled;

  /// Should the `TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA` cipher be enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** This maps to the `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA` field
  final pulumi.Input<bool>? tlsEcdheEcdsaWithAes128CbcShaCiphersEnabled;

  /// Should the `TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA` cipher be enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** This maps to the `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA` field
  final pulumi.Input<bool>? tlsEcdheEcdsaWithAes256CbcShaCiphersEnabled;

  /// Should the `TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA` cipher be enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** This maps to the `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA` field
  final pulumi.Input<bool>? tlsEcdheRsaWithAes128CbcShaCiphersEnabled;

  /// Should the `TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA` cipher be enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** This maps to the `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA` field
  final pulumi.Input<bool>? tlsEcdheRsaWithAes256CbcShaCiphersEnabled;

  /// Should the `TLS_RSA_WITH_AES_128_CBC_SHA256` cipher be enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** This maps to the `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_RSA_WITH_AES_128_CBC_SHA256` field
  final pulumi.Input<bool>? tlsRsaWithAes128CbcSha256CiphersEnabled;

  /// Should the `TLS_RSA_WITH_AES_128_CBC_SHA` cipher be enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** This maps to the `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_RSA_WITH_AES_128_CBC_SHA` field
  final pulumi.Input<bool>? tlsRsaWithAes128CbcShaCiphersEnabled;

  /// Should the `TLS_RSA_WITH_AES_128_GCM_SHA256` cipher be enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** This maps to the `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_RSA_WITH_AES_128_GCM_SHA256` field
  final pulumi.Input<bool>? tlsRsaWithAes128GcmSha256CiphersEnabled;

  /// Should the `TLS_RSA_WITH_AES_256_CBC_SHA256` cipher be enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** This maps to the `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_RSA_WITH_AES_256_CBC_SHA256` field
  final pulumi.Input<bool>? tlsRsaWithAes256CbcSha256CiphersEnabled;

  /// Should the `TLS_RSA_WITH_AES_256_CBC_SHA` cipher be enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** This maps to the `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_RSA_WITH_AES_256_CBC_SHA` field
  final pulumi.Input<bool>? tlsRsaWithAes256CbcShaCiphersEnabled;

  /// Should the `TLS_RSA_WITH_AES_256_GCM_SHA384` cipher be enabled? Defaults to `false`.
  ///
  /// &gt; **Note:** This maps to the `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_RSA_WITH_AES_256_GCM_SHA384` field
  final pulumi.Input<bool>? tlsRsaWithAes256GcmSha384CiphersEnabled;

  /// Should the `TLS_RSA_WITH_3DES_EDE_CBC_SHA` cipher be enabled for alL TLS versions (1.0, 1.1 and 1.2)?
  ///
  /// &gt; **Note:** This maps to the `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TripleDes168` field
  final pulumi.Input<bool>? tripleDesCiphersEnabled;

  /// Creates a new [ServiceSecurity].
  /// [backendSsl30Enabled] Should SSL 3.0 be enabled on the backend of the gateway? Defaults to `false`.
  /// [backendTls10Enabled] Should TLS 1.0 be enabled on the backend of the gateway? Defaults to `false`.
  /// [backendTls11Enabled] Should TLS 1.1 be enabled on the backend of the gateway? Defaults to `false`.
  /// [enableBackendSsl30] Optional.
  /// [enableBackendTls10] Optional.
  /// [enableBackendTls11] Optional.
  /// [enableFrontendSsl30] Optional.
  /// [enableFrontendTls10] Optional.
  /// [enableFrontendTls11] Optional.
  /// [frontendSsl30Enabled] Should SSL 3.0 be enabled on the frontend of the gateway? Defaults to `false`.
  /// [frontendTls10Enabled] Should TLS 1.0 be enabled on the frontend of the gateway? Defaults to `false`.
  /// [frontendTls11Enabled] Should TLS 1.1 be enabled on the frontend of the gateway? Defaults to `false`.
  /// [tlsEcdheEcdsaWithAes128CbcShaCiphersEnabled] Should the `TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA` cipher be enabled? Defaults to `false`.
  /// [tlsEcdheEcdsaWithAes256CbcShaCiphersEnabled] Should the `TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA` cipher be enabled? Defaults to `false`.
  /// [tlsEcdheRsaWithAes128CbcShaCiphersEnabled] Should the `TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA` cipher be enabled? Defaults to `false`.
  /// [tlsEcdheRsaWithAes256CbcShaCiphersEnabled] Should the `TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA` cipher be enabled? Defaults to `false`.
  /// [tlsRsaWithAes128CbcSha256CiphersEnabled] Should the `TLS_RSA_WITH_AES_128_CBC_SHA256` cipher be enabled? Defaults to `false`.
  /// [tlsRsaWithAes128CbcShaCiphersEnabled] Should the `TLS_RSA_WITH_AES_128_CBC_SHA` cipher be enabled? Defaults to `false`.
  /// [tlsRsaWithAes128GcmSha256CiphersEnabled] Should the `TLS_RSA_WITH_AES_128_GCM_SHA256` cipher be enabled? Defaults to `false`.
  /// [tlsRsaWithAes256CbcSha256CiphersEnabled] Should the `TLS_RSA_WITH_AES_256_CBC_SHA256` cipher be enabled? Defaults to `false`.
  /// [tlsRsaWithAes256CbcShaCiphersEnabled] Should the `TLS_RSA_WITH_AES_256_CBC_SHA` cipher be enabled? Defaults to `false`.
  /// [tlsRsaWithAes256GcmSha384CiphersEnabled] Should the `TLS_RSA_WITH_AES_256_GCM_SHA384` cipher be enabled? Defaults to `false`.
  /// [tripleDesCiphersEnabled] Should the `TLS_RSA_WITH_3DES_EDE_CBC_SHA` cipher be enabled for alL TLS versions (1.0, 1.1 and 1.2)?
  ServiceSecurity({
    this.backendSsl30Enabled,
    this.backendTls10Enabled,
    this.backendTls11Enabled,
    this.enableBackendSsl30,
    this.enableBackendTls10,
    this.enableBackendTls11,
    this.enableFrontendSsl30,
    this.enableFrontendTls10,
    this.enableFrontendTls11,
    this.frontendSsl30Enabled,
    this.frontendTls10Enabled,
    this.frontendTls11Enabled,
    this.tlsEcdheEcdsaWithAes128CbcShaCiphersEnabled,
    this.tlsEcdheEcdsaWithAes256CbcShaCiphersEnabled,
    this.tlsEcdheRsaWithAes128CbcShaCiphersEnabled,
    this.tlsEcdheRsaWithAes256CbcShaCiphersEnabled,
    this.tlsRsaWithAes128CbcSha256CiphersEnabled,
    this.tlsRsaWithAes128CbcShaCiphersEnabled,
    this.tlsRsaWithAes128GcmSha256CiphersEnabled,
    this.tlsRsaWithAes256CbcSha256CiphersEnabled,
    this.tlsRsaWithAes256CbcShaCiphersEnabled,
    this.tlsRsaWithAes256GcmSha384CiphersEnabled,
    this.tripleDesCiphersEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendSsl30Enabled': ?backendSsl30Enabled,
      'backendTls10Enabled': ?backendTls10Enabled,
      'backendTls11Enabled': ?backendTls11Enabled,
      'enableBackendSsl30': ?enableBackendSsl30,
      'enableBackendTls10': ?enableBackendTls10,
      'enableBackendTls11': ?enableBackendTls11,
      'enableFrontendSsl30': ?enableFrontendSsl30,
      'enableFrontendTls10': ?enableFrontendTls10,
      'enableFrontendTls11': ?enableFrontendTls11,
      'frontendSsl30Enabled': ?frontendSsl30Enabled,
      'frontendTls10Enabled': ?frontendTls10Enabled,
      'frontendTls11Enabled': ?frontendTls11Enabled,
      'tlsEcdheEcdsaWithAes128CbcShaCiphersEnabled':
          ?tlsEcdheEcdsaWithAes128CbcShaCiphersEnabled,
      'tlsEcdheEcdsaWithAes256CbcShaCiphersEnabled':
          ?tlsEcdheEcdsaWithAes256CbcShaCiphersEnabled,
      'tlsEcdheRsaWithAes128CbcShaCiphersEnabled':
          ?tlsEcdheRsaWithAes128CbcShaCiphersEnabled,
      'tlsEcdheRsaWithAes256CbcShaCiphersEnabled':
          ?tlsEcdheRsaWithAes256CbcShaCiphersEnabled,
      'tlsRsaWithAes128CbcSha256CiphersEnabled':
          ?tlsRsaWithAes128CbcSha256CiphersEnabled,
      'tlsRsaWithAes128CbcShaCiphersEnabled':
          ?tlsRsaWithAes128CbcShaCiphersEnabled,
      'tlsRsaWithAes128GcmSha256CiphersEnabled':
          ?tlsRsaWithAes128GcmSha256CiphersEnabled,
      'tlsRsaWithAes256CbcSha256CiphersEnabled':
          ?tlsRsaWithAes256CbcSha256CiphersEnabled,
      'tlsRsaWithAes256CbcShaCiphersEnabled':
          ?tlsRsaWithAes256CbcShaCiphersEnabled,
      'tlsRsaWithAes256GcmSha384CiphersEnabled':
          ?tlsRsaWithAes256GcmSha384CiphersEnabled,
      'tripleDesCiphersEnabled': ?tripleDesCiphersEnabled,
    };
  }

  factory ServiceSecurity.fromMap(Map<String, dynamic> map) {
    return ServiceSecurity(
      backendSsl30Enabled: (() {
        final guardedValue = map['backendSsl30Enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      backendTls10Enabled: (() {
        final guardedValue = map['backendTls10Enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      backendTls11Enabled: (() {
        final guardedValue = map['backendTls11Enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableBackendSsl30: (() {
        final guardedValue = map['enableBackendSsl30'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableBackendTls10: (() {
        final guardedValue = map['enableBackendTls10'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableBackendTls11: (() {
        final guardedValue = map['enableBackendTls11'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableFrontendSsl30: (() {
        final guardedValue = map['enableFrontendSsl30'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableFrontendTls10: (() {
        final guardedValue = map['enableFrontendTls10'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableFrontendTls11: (() {
        final guardedValue = map['enableFrontendTls11'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      frontendSsl30Enabled: (() {
        final guardedValue = map['frontendSsl30Enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      frontendTls10Enabled: (() {
        final guardedValue = map['frontendTls10Enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      frontendTls11Enabled: (() {
        final guardedValue = map['frontendTls11Enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tlsEcdheEcdsaWithAes128CbcShaCiphersEnabled: (() {
        final guardedValue = map['tlsEcdheEcdsaWithAes128CbcShaCiphersEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tlsEcdheEcdsaWithAes256CbcShaCiphersEnabled: (() {
        final guardedValue = map['tlsEcdheEcdsaWithAes256CbcShaCiphersEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tlsEcdheRsaWithAes128CbcShaCiphersEnabled: (() {
        final guardedValue = map['tlsEcdheRsaWithAes128CbcShaCiphersEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tlsEcdheRsaWithAes256CbcShaCiphersEnabled: (() {
        final guardedValue = map['tlsEcdheRsaWithAes256CbcShaCiphersEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tlsRsaWithAes128CbcSha256CiphersEnabled: (() {
        final guardedValue = map['tlsRsaWithAes128CbcSha256CiphersEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tlsRsaWithAes128CbcShaCiphersEnabled: (() {
        final guardedValue = map['tlsRsaWithAes128CbcShaCiphersEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tlsRsaWithAes128GcmSha256CiphersEnabled: (() {
        final guardedValue = map['tlsRsaWithAes128GcmSha256CiphersEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tlsRsaWithAes256CbcSha256CiphersEnabled: (() {
        final guardedValue = map['tlsRsaWithAes256CbcSha256CiphersEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tlsRsaWithAes256CbcShaCiphersEnabled: (() {
        final guardedValue = map['tlsRsaWithAes256CbcShaCiphersEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tlsRsaWithAes256GcmSha384CiphersEnabled: (() {
        final guardedValue = map['tlsRsaWithAes256GcmSha384CiphersEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tripleDesCiphersEnabled: (() {
        final guardedValue = map['tripleDesCiphersEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
