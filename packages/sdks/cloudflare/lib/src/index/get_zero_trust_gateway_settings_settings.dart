// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_gateway_settings_settings_activity_log.dart';
import 'get_zero_trust_gateway_settings_settings_antivirus.dart';
import 'get_zero_trust_gateway_settings_settings_block_page.dart';
import 'get_zero_trust_gateway_settings_settings_body_scanning.dart';
import 'get_zero_trust_gateway_settings_settings_browser_isolation.dart';
import 'get_zero_trust_gateway_settings_settings_certificate.dart';
import 'get_zero_trust_gateway_settings_settings_custom_certificate.dart';
import 'get_zero_trust_gateway_settings_settings_extended_email_matching.dart';
import 'get_zero_trust_gateway_settings_settings_fips.dart';
import 'get_zero_trust_gateway_settings_settings_host_selector.dart';
import 'get_zero_trust_gateway_settings_settings_inspection.dart';
import 'get_zero_trust_gateway_settings_settings_protocol_detection.dart';
import 'get_zero_trust_gateway_settings_settings_sandbox.dart';
import 'get_zero_trust_gateway_settings_settings_tls_decrypt.dart';

class GetZeroTrustGatewaySettingsSettings {
  /// Specify activity log settings.
  final pulumi.Input<GetZeroTrustGatewaySettingsSettingsActivityLog> activityLog;
  /// Specify anti-virus settings.
  final pulumi.Input<GetZeroTrustGatewaySettingsSettingsAntivirus> antivirus;
  /// Specify block page layout settings.
  final pulumi.Input<GetZeroTrustGatewaySettingsSettingsBlockPage> blockPage;
  /// Specify the DLP inspection mode.
  final pulumi.Input<GetZeroTrustGatewaySettingsSettingsBodyScanning> bodyScanning;
  /// Specify Clientless Browser Isolation settings.
  final pulumi.Input<GetZeroTrustGatewaySettingsSettingsBrowserIsolation> browserIsolation;
  /// Specify certificate settings for Gateway TLS interception. If unset, the Cloudflare Root CA handles interception.
  final pulumi.Input<GetZeroTrustGatewaySettingsSettingsCertificate> certificate;
  /// Specify custom certificate settings for BYO-PKI. This field is deprecated; use `certificate` instead.
  final pulumi.Input<GetZeroTrustGatewaySettingsSettingsCustomCertificate> customCertificate;
  /// Configures user email settings for firewall policies. When you enable this, the system standardizes email addresses in the identity portion of the rule to match extended email variants in firewall policies. When you disable this setting, the system matches email addresses exactly as you provide them. Enable this setting if your email uses `.` or `+` modifiers.
  final pulumi.Input<GetZeroTrustGatewaySettingsSettingsExtendedEmailMatching> extendedEmailMatching;
  /// Specify FIPS settings.
  final pulumi.Input<GetZeroTrustGatewaySettingsSettingsFips> fips;
  /// Enable host selection in egress policies.
  final pulumi.Input<GetZeroTrustGatewaySettingsSettingsHostSelector> hostSelector;
  /// Define the proxy inspection mode.
  final pulumi.Input<GetZeroTrustGatewaySettingsSettingsInspection> inspection;
  /// Account-level cap on DNS response TTLs, in seconds. Gateway rewrites DNS responses so returned record TTLs do not exceed this value. Null means no cap. Each DNS location can inherit, override, or disable it through the location `maxTtl` setting.
  final pulumi.Input<int> maxTtlSecs;
  /// Specify whether to detect protocols from the initial bytes of client traffic.
  final pulumi.Input<GetZeroTrustGatewaySettingsSettingsProtocolDetection> protocolDetection;
  /// Specify whether to enable the sandbox.
  final pulumi.Input<GetZeroTrustGatewaySettingsSettingsSandbox> sandbox;
  /// Specify whether to inspect encrypted HTTP traffic.
  final pulumi.Input<GetZeroTrustGatewaySettingsSettingsTlsDecrypt> tlsDecrypt;

  /// Creates a new [GetZeroTrustGatewaySettingsSettings].
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
  const GetZeroTrustGatewaySettingsSettings({
    required this.activityLog,
    required this.antivirus,
    required this.blockPage,
    required this.bodyScanning,
    required this.browserIsolation,
    required this.certificate,
    required this.customCertificate,
    required this.extendedEmailMatching,
    required this.fips,
    required this.hostSelector,
    required this.inspection,
    required this.maxTtlSecs,
    required this.protocolDetection,
    required this.sandbox,
    required this.tlsDecrypt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityLog': pulumi.Input.mapInputValue<GetZeroTrustGatewaySettingsSettingsActivityLog, Map<String, dynamic>>(activityLog, (value) => value.toMap()),
      'antivirus': pulumi.Input.mapInputValue<GetZeroTrustGatewaySettingsSettingsAntivirus, Map<String, dynamic>>(antivirus, (value) => value.toMap()),
      'blockPage': pulumi.Input.mapInputValue<GetZeroTrustGatewaySettingsSettingsBlockPage, Map<String, dynamic>>(blockPage, (value) => value.toMap()),
      'bodyScanning': pulumi.Input.mapInputValue<GetZeroTrustGatewaySettingsSettingsBodyScanning, Map<String, dynamic>>(bodyScanning, (value) => value.toMap()),
      'browserIsolation': pulumi.Input.mapInputValue<GetZeroTrustGatewaySettingsSettingsBrowserIsolation, Map<String, dynamic>>(browserIsolation, (value) => value.toMap()),
      'certificate': pulumi.Input.mapInputValue<GetZeroTrustGatewaySettingsSettingsCertificate, Map<String, dynamic>>(certificate, (value) => value.toMap()),
      'customCertificate': pulumi.Input.mapInputValue<GetZeroTrustGatewaySettingsSettingsCustomCertificate, Map<String, dynamic>>(customCertificate, (value) => value.toMap()),
      'extendedEmailMatching': pulumi.Input.mapInputValue<GetZeroTrustGatewaySettingsSettingsExtendedEmailMatching, Map<String, dynamic>>(extendedEmailMatching, (value) => value.toMap()),
      'fips': pulumi.Input.mapInputValue<GetZeroTrustGatewaySettingsSettingsFips, Map<String, dynamic>>(fips, (value) => value.toMap()),
      'hostSelector': pulumi.Input.mapInputValue<GetZeroTrustGatewaySettingsSettingsHostSelector, Map<String, dynamic>>(hostSelector, (value) => value.toMap()),
      'inspection': pulumi.Input.mapInputValue<GetZeroTrustGatewaySettingsSettingsInspection, Map<String, dynamic>>(inspection, (value) => value.toMap()),
      'maxTtlSecs': maxTtlSecs,
      'protocolDetection': pulumi.Input.mapInputValue<GetZeroTrustGatewaySettingsSettingsProtocolDetection, Map<String, dynamic>>(protocolDetection, (value) => value.toMap()),
      'sandbox': pulumi.Input.mapInputValue<GetZeroTrustGatewaySettingsSettingsSandbox, Map<String, dynamic>>(sandbox, (value) => value.toMap()),
      'tlsDecrypt': pulumi.Input.mapInputValue<GetZeroTrustGatewaySettingsSettingsTlsDecrypt, Map<String, dynamic>>(tlsDecrypt, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustGatewaySettingsSettings.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewaySettingsSettings(
      activityLog: pulumi.Input.fromValue(GetZeroTrustGatewaySettingsSettingsActivityLog.fromMap((map['activityLog']! as Map).cast<String, dynamic>())),
      antivirus: pulumi.Input.fromValue(GetZeroTrustGatewaySettingsSettingsAntivirus.fromMap((map['antivirus']! as Map).cast<String, dynamic>())),
      blockPage: pulumi.Input.fromValue(GetZeroTrustGatewaySettingsSettingsBlockPage.fromMap((map['blockPage']! as Map).cast<String, dynamic>())),
      bodyScanning: pulumi.Input.fromValue(GetZeroTrustGatewaySettingsSettingsBodyScanning.fromMap((map['bodyScanning']! as Map).cast<String, dynamic>())),
      browserIsolation: pulumi.Input.fromValue(GetZeroTrustGatewaySettingsSettingsBrowserIsolation.fromMap((map['browserIsolation']! as Map).cast<String, dynamic>())),
      certificate: pulumi.Input.fromValue(GetZeroTrustGatewaySettingsSettingsCertificate.fromMap((map['certificate']! as Map).cast<String, dynamic>())),
      customCertificate: pulumi.Input.fromValue(GetZeroTrustGatewaySettingsSettingsCustomCertificate.fromMap((map['customCertificate']! as Map).cast<String, dynamic>())),
      extendedEmailMatching: pulumi.Input.fromValue(GetZeroTrustGatewaySettingsSettingsExtendedEmailMatching.fromMap((map['extendedEmailMatching']! as Map).cast<String, dynamic>())),
      fips: pulumi.Input.fromValue(GetZeroTrustGatewaySettingsSettingsFips.fromMap((map['fips']! as Map).cast<String, dynamic>())),
      hostSelector: pulumi.Input.fromValue(GetZeroTrustGatewaySettingsSettingsHostSelector.fromMap((map['hostSelector']! as Map).cast<String, dynamic>())),
      inspection: pulumi.Input.fromValue(GetZeroTrustGatewaySettingsSettingsInspection.fromMap((map['inspection']! as Map).cast<String, dynamic>())),
      maxTtlSecs: pulumi.Input.fromValue((map['maxTtlSecs'] as num).toInt()),
      protocolDetection: pulumi.Input.fromValue(GetZeroTrustGatewaySettingsSettingsProtocolDetection.fromMap((map['protocolDetection']! as Map).cast<String, dynamic>())),
      sandbox: pulumi.Input.fromValue(GetZeroTrustGatewaySettingsSettingsSandbox.fromMap((map['sandbox']! as Map).cast<String, dynamic>())),
      tlsDecrypt: pulumi.Input.fromValue(GetZeroTrustGatewaySettingsSettingsTlsDecrypt.fromMap((map['tlsDecrypt']! as Map).cast<String, dynamic>())),
    );
  }
}
