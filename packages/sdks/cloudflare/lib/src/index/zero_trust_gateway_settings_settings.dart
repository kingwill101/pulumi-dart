// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_gateway_settings_settings_activity_log.dart';
import 'zero_trust_gateway_settings_settings_antivirus.dart';
import 'zero_trust_gateway_settings_settings_block_page.dart';
import 'zero_trust_gateway_settings_settings_body_scanning.dart';
import 'zero_trust_gateway_settings_settings_browser_isolation.dart';
import 'zero_trust_gateway_settings_settings_certificate.dart';
import 'zero_trust_gateway_settings_settings_custom_certificate.dart';
import 'zero_trust_gateway_settings_settings_extended_email_matching.dart';
import 'zero_trust_gateway_settings_settings_fips.dart';
import 'zero_trust_gateway_settings_settings_host_selector.dart';
import 'zero_trust_gateway_settings_settings_inspection.dart';
import 'zero_trust_gateway_settings_settings_protocol_detection.dart';
import 'zero_trust_gateway_settings_settings_sandbox.dart';
import 'zero_trust_gateway_settings_settings_tls_decrypt.dart';

class ZeroTrustGatewaySettingsSettings {
  /// Specify activity log settings.
  final pulumi.Input<ZeroTrustGatewaySettingsSettingsActivityLog?>? activityLog;
  /// Specify anti-virus settings.
  final pulumi.Input<ZeroTrustGatewaySettingsSettingsAntivirus?>? antivirus;
  /// Specify block page layout settings.
  final pulumi.Input<ZeroTrustGatewaySettingsSettingsBlockPage?>? blockPage;
  /// Specify the DLP inspection mode.
  final pulumi.Input<ZeroTrustGatewaySettingsSettingsBodyScanning?>? bodyScanning;
  /// Specify Clientless Browser Isolation settings.
  final pulumi.Input<ZeroTrustGatewaySettingsSettingsBrowserIsolation?>? browserIsolation;
  /// Specify certificate settings for Gateway TLS interception. If unset, the Cloudflare Root CA handles interception.
  final pulumi.Input<ZeroTrustGatewaySettingsSettingsCertificate?>? certificate;
  /// Specify custom certificate settings for BYO-PKI. This field is deprecated; use `certificate` instead.
  final pulumi.Input<ZeroTrustGatewaySettingsSettingsCustomCertificate?>? customCertificate;
  /// Configures user email settings for firewall policies. When you enable this, the system standardizes email addresses in the identity portion of the rule to match extended email variants in firewall policies. When you disable this setting, the system matches email addresses exactly as you provide them. Enable this setting if your email uses `.` or `+` modifiers.
  final pulumi.Input<ZeroTrustGatewaySettingsSettingsExtendedEmailMatching?>? extendedEmailMatching;
  /// Specify FIPS settings.
  final pulumi.Input<ZeroTrustGatewaySettingsSettingsFips?>? fips;
  /// Enable host selection in egress policies.
  final pulumi.Input<ZeroTrustGatewaySettingsSettingsHostSelector?>? hostSelector;
  /// Define the proxy inspection mode.
  final pulumi.Input<ZeroTrustGatewaySettingsSettingsInspection?>? inspection;
  /// Account-level cap on DNS response TTLs, in seconds. Gateway rewrites DNS responses so returned record TTLs do not exceed this value. Null means no cap. Each DNS location can inherit, override, or disable it through the location `maxTtl` setting.
  final pulumi.Input<int?>? maxTtlSecs;
  /// Specify whether to detect protocols from the initial bytes of client traffic.
  final pulumi.Input<ZeroTrustGatewaySettingsSettingsProtocolDetection?>? protocolDetection;
  /// Specify whether to enable the sandbox.
  final pulumi.Input<ZeroTrustGatewaySettingsSettingsSandbox?>? sandbox;
  /// Specify whether to inspect encrypted HTTP traffic.
  final pulumi.Input<ZeroTrustGatewaySettingsSettingsTlsDecrypt?>? tlsDecrypt;

  /// Creates a new [ZeroTrustGatewaySettingsSettings].
  /// [activityLog] Specify activity log settings.
  /// [antivirus] Specify anti-virus settings.
  /// [blockPage] Specify block page layout settings.
  /// [bodyScanning] Specify the DLP inspection mode.
  /// [browserIsolation] Specify Clientless Browser Isolation settings.
  /// [certificate] Specify certificate settings for Gateway TLS interception. If unset, the Cloudflare Root CA handles interception.
  /// [customCertificate] Specify custom certificate settings for BYO-PKI. This field is deprecated; use `certificate` instead.
  /// [extendedEmailMatching] Configures user email settings for firewall policies. When you enable this, the system standardizes email addresses in the identity portion of the rule to match extended email variants in firewall policies. When you disable this setting, the system matches email addresses exactly as you provide them. Enable this setting if your email uses `.` or `+` modifiers.
  /// [fips] Specify FIPS settings.
  /// [hostSelector] Enable host selection in egress policies.
  /// [inspection] Define the proxy inspection mode.
  /// [maxTtlSecs] Account-level cap on DNS response TTLs, in seconds. Gateway rewrites DNS responses so returned record TTLs do not exceed this value. Null means no cap. Each DNS location can inherit, override, or disable it through the location `maxTtl` setting.
  /// [protocolDetection] Specify whether to detect protocols from the initial bytes of client traffic.
  /// [sandbox] Specify whether to enable the sandbox.
  /// [tlsDecrypt] Specify whether to inspect encrypted HTTP traffic.
  const ZeroTrustGatewaySettingsSettings({
    this.activityLog,
    this.antivirus,
    this.blockPage,
    this.bodyScanning,
    this.browserIsolation,
    this.certificate,
    this.customCertificate,
    this.extendedEmailMatching,
    this.fips,
    this.hostSelector,
    this.inspection,
    this.maxTtlSecs,
    this.protocolDetection,
    this.sandbox,
    this.tlsDecrypt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityLog': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewaySettingsSettingsActivityLog, Map<String, dynamic>>(activityLog, (value) => value.toMap()),
      'antivirus': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewaySettingsSettingsAntivirus, Map<String, dynamic>>(antivirus, (value) => value.toMap()),
      'blockPage': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewaySettingsSettingsBlockPage, Map<String, dynamic>>(blockPage, (value) => value.toMap()),
      'bodyScanning': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewaySettingsSettingsBodyScanning, Map<String, dynamic>>(bodyScanning, (value) => value.toMap()),
      'browserIsolation': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewaySettingsSettingsBrowserIsolation, Map<String, dynamic>>(browserIsolation, (value) => value.toMap()),
      'certificate': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewaySettingsSettingsCertificate, Map<String, dynamic>>(certificate, (value) => value.toMap()),
      'customCertificate': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewaySettingsSettingsCustomCertificate, Map<String, dynamic>>(customCertificate, (value) => value.toMap()),
      'extendedEmailMatching': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewaySettingsSettingsExtendedEmailMatching, Map<String, dynamic>>(extendedEmailMatching, (value) => value.toMap()),
      'fips': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewaySettingsSettingsFips, Map<String, dynamic>>(fips, (value) => value.toMap()),
      'hostSelector': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewaySettingsSettingsHostSelector, Map<String, dynamic>>(hostSelector, (value) => value.toMap()),
      'inspection': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewaySettingsSettingsInspection, Map<String, dynamic>>(inspection, (value) => value.toMap()),
      'maxTtlSecs': ?maxTtlSecs,
      'protocolDetection': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewaySettingsSettingsProtocolDetection, Map<String, dynamic>>(protocolDetection, (value) => value.toMap()),
      'sandbox': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewaySettingsSettingsSandbox, Map<String, dynamic>>(sandbox, (value) => value.toMap()),
      'tlsDecrypt': ?pulumi.Input.mapOptionalInputValue<ZeroTrustGatewaySettingsSettingsTlsDecrypt, Map<String, dynamic>>(tlsDecrypt, (value) => value.toMap()),
    };
  }

  factory ZeroTrustGatewaySettingsSettings.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewaySettingsSettings(
      activityLog: (() { final guardedValue = map['activityLog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewaySettingsSettingsActivityLog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      antivirus: (() { final guardedValue = map['antivirus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewaySettingsSettingsAntivirus.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      blockPage: (() { final guardedValue = map['blockPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewaySettingsSettingsBlockPage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bodyScanning: (() { final guardedValue = map['bodyScanning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewaySettingsSettingsBodyScanning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      browserIsolation: (() { final guardedValue = map['browserIsolation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewaySettingsSettingsBrowserIsolation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewaySettingsSettingsCertificate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      customCertificate: (() { final guardedValue = map['customCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewaySettingsSettingsCustomCertificate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extendedEmailMatching: (() { final guardedValue = map['extendedEmailMatching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewaySettingsSettingsExtendedEmailMatching.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fips: (() { final guardedValue = map['fips']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewaySettingsSettingsFips.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostSelector: (() { final guardedValue = map['hostSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewaySettingsSettingsHostSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inspection: (() { final guardedValue = map['inspection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewaySettingsSettingsInspection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxTtlSecs: (() { final guardedValue = map['maxTtlSecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      protocolDetection: (() { final guardedValue = map['protocolDetection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewaySettingsSettingsProtocolDetection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sandbox: (() { final guardedValue = map['sandbox']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewaySettingsSettingsSandbox.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tlsDecrypt: (() { final guardedValue = map['tlsDecrypt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustGatewaySettingsSettingsTlsDecrypt.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
