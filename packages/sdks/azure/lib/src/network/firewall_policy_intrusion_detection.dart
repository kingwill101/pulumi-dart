// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_intrusion_detection_signature_override.dart';
import 'firewall_policy_intrusion_detection_traffic_bypass.dart';

class FirewallPolicyIntrusionDetection {
  /// In which mode you want to run intrusion detection: `Off`, `Alert` or `Deny`.
  final pulumi.Input<String?>? mode;
  /// A list of Private IP address ranges to identify traffic direction. By default, only ranges defined by IANA RFC 1918 are considered private IP addresses.
  final pulumi.Input<List<String>?>? privateRanges;
  /// One or more `signatureOverrides` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyIntrusionDetectionSignatureOverride>?>? signatureOverrides;
  /// One or more `trafficBypass` blocks as defined below.
  final pulumi.Input<List<FirewallPolicyIntrusionDetectionTrafficBypass>?>? trafficBypasses;

  /// Creates a new [FirewallPolicyIntrusionDetection].
  /// [mode] In which mode you want to run intrusion detection: `Off`, `Alert` or `Deny`.
  /// [privateRanges] A list of Private IP address ranges to identify traffic direction. By default, only ranges defined by IANA RFC 1918 are considered private IP addresses.
  /// [signatureOverrides] One or more `signatureOverrides` blocks as defined below.
  /// [trafficBypasses] One or more `trafficBypass` blocks as defined below.
  const FirewallPolicyIntrusionDetection({
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
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateRanges: (() { final guardedValue = map['privateRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      signatureOverrides: (() { final guardedValue = map['signatureOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyIntrusionDetectionSignatureOverride>(guardedValue, (value) => FirewallPolicyIntrusionDetectionSignatureOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      trafficBypasses: (() { final guardedValue = map['trafficBypasses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyIntrusionDetectionTrafficBypass>(guardedValue, (value) => FirewallPolicyIntrusionDetectionTrafficBypass.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
