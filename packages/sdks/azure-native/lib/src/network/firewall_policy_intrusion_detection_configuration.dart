// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_intrusion_detection_bypass_traffic_specifications.dart';
import 'firewall_policy_intrusion_detection_signature_specification.dart';

/// The operation for configuring intrusion detection.
class FirewallPolicyIntrusionDetectionConfiguration {
  /// List of rules for traffic to bypass.
  final pulumi.Input<List<FirewallPolicyIntrusionDetectionBypassTrafficSpecifications>>? bypassTrafficSettings;
  /// IDPS Private IP address ranges are used to identify traffic direction (i.e. inbound, outbound, etc.). By default, only ranges defined by IANA RFC 1918 are considered private IP addresses. To modify default ranges, specify your Private IP address ranges with this property
  final pulumi.Input<List<String>>? privateRanges;
  /// List of specific signatures states.
  final pulumi.Input<List<FirewallPolicyIntrusionDetectionSignatureSpecification>>? signatureOverrides;

  /// Creates a new [FirewallPolicyIntrusionDetectionConfiguration].
  /// [bypassTrafficSettings] List of rules for traffic to bypass.
  /// [privateRanges] IDPS Private IP address ranges are used to identify traffic direction (i.e. inbound, outbound, etc.). By default, only ranges defined by IANA RFC 1918 are considered private IP addresses. To modify default ranges, specify your Private IP address ranges with this property
  /// [signatureOverrides] List of specific signatures states.
  FirewallPolicyIntrusionDetectionConfiguration({
    this.bypassTrafficSettings,
    this.privateRanges,
    this.signatureOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassTrafficSettings': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyIntrusionDetectionBypassTrafficSpecifications>, List<Map<String, dynamic>>>(bypassTrafficSettings, (value) => pulumi.Input.encodeList<FirewallPolicyIntrusionDetectionBypassTrafficSpecifications, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateRanges': ?privateRanges,
      'signatureOverrides': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyIntrusionDetectionSignatureSpecification>, List<Map<String, dynamic>>>(signatureOverrides, (value) => pulumi.Input.encodeList<FirewallPolicyIntrusionDetectionSignatureSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallPolicyIntrusionDetectionConfiguration.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyIntrusionDetectionConfiguration(
      bypassTrafficSettings: map['bypassTrafficSettings'] == null ? null : (pulumi.Input.decodeList<FirewallPolicyIntrusionDetectionBypassTrafficSpecifications>(map['bypassTrafficSettings'], (value) => FirewallPolicyIntrusionDetectionBypassTrafficSpecifications.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateRanges: map['privateRanges'] == null ? null : ((map['privateRanges'] as List).cast<String>()).input(),
      signatureOverrides: map['signatureOverrides'] == null ? null : (pulumi.Input.decodeList<FirewallPolicyIntrusionDetectionSignatureSpecification>(map['signatureOverrides'], (value) => FirewallPolicyIntrusionDetectionSignatureSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

