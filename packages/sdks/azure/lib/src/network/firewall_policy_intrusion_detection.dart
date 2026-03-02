// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_intrusion_detection_signature_override.dart';
import 'firewall_policy_intrusion_detection_traffic_bypass.dart';

class FirewallPolicyIntrusionDetection {
  /// In which mode you want to run intrusion detection: `Off`, `Alert` or `Deny`.
  final pulumi.Input<String>? mode;
  /// A list of Private IP address ranges to identify traffic direction. By default, only ranges defined by IANA RFC 1918 are considered private IP addresses.
  final pulumi.Input<List<String>>? privateRanges;
  /// One or more `signature_overrides` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyIntrusionDetectionSignatureOverride>>? signatureOverrides;
  /// One or more `traffic_bypass` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyIntrusionDetectionTrafficBypass>>? trafficBypasses;

  /// Creates a new [FirewallPolicyIntrusionDetection].
  /// [mode] In which mode you want to run intrusion detection: `Off`, `Alert` or `Deny`.
  /// [privateRanges] A list of Private IP address ranges to identify traffic direction. By default, only ranges defined by IANA RFC 1918 are considered private IP addresses.
  /// [signatureOverrides] One or more `signature_overrides` blocks as defined below.
  /// [trafficBypasses] One or more `traffic_bypass` blocks as defined below.
  FirewallPolicyIntrusionDetection({
    this.mode,
    this.privateRanges,
    this.signatureOverrides,
    this.trafficBypasses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'privateRanges': ?privateRanges,
      'signatureOverrides': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyIntrusionDetectionSignatureOverride>, List<Map<String, dynamic>>>(signatureOverrides, (value) => pulumi.Input.encodeList<FirewallPolicyIntrusionDetectionSignatureOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trafficBypasses': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyIntrusionDetectionTrafficBypass>, List<Map<String, dynamic>>>(trafficBypasses, (value) => pulumi.Input.encodeList<FirewallPolicyIntrusionDetectionTrafficBypass, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallPolicyIntrusionDetection.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyIntrusionDetection(
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      privateRanges: map['privateRanges'] == null ? null : ((map['privateRanges'] as List).cast<String>()).input(),
      signatureOverrides: map['signatureOverrides'] == null ? null : (pulumi.Input.decodeList<FirewallPolicyIntrusionDetectionSignatureOverride>(map['signatureOverrides'], (value) => FirewallPolicyIntrusionDetectionSignatureOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      trafficBypasses: map['trafficBypasses'] == null ? null : (pulumi.Input.decodeList<FirewallPolicyIntrusionDetectionTrafficBypass>(map['trafficBypasses'], (value) => FirewallPolicyIntrusionDetectionTrafficBypass.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

