// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_intrusion_detection_bypass_traffic_specifications_response.dart';
import 'firewall_policy_intrusion_detection_signature_specification_response.dart';

/// The operation for configuring intrusion detection.
class FirewallPolicyIntrusionDetectionConfigurationResponse {
  /// List of rules for traffic to bypass.
  final pulumi.Input<List<FirewallPolicyIntrusionDetectionBypassTrafficSpecificationsResponse>>? bypassTrafficSettings;
  /// IDPS Private IP address ranges are used to identify traffic direction (i.e. inbound, outbound, etc.). By default, only ranges defined by IANA RFC 1918 are considered private IP addresses. To modify default ranges, specify your Private IP address ranges with this property
  final pulumi.Input<List<String>>? privateRanges;
  /// List of specific signatures states.
  final pulumi.Input<List<FirewallPolicyIntrusionDetectionSignatureSpecificationResponse>>? signatureOverrides;

  /// Creates a new [FirewallPolicyIntrusionDetectionConfigurationResponse].
  /// [bypassTrafficSettings] List of rules for traffic to bypass.
  /// [privateRanges] IDPS Private IP address ranges are used to identify traffic direction (i.e. inbound, outbound, etc.). By default, only ranges defined by IANA RFC 1918 are considered private IP addresses. To modify default ranges, specify your Private IP address ranges with this property
  /// [signatureOverrides] List of specific signatures states.
  FirewallPolicyIntrusionDetectionConfigurationResponse({
    this.bypassTrafficSettings,
    this.privateRanges,
    this.signatureOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassTrafficSettings': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyIntrusionDetectionBypassTrafficSpecificationsResponse>, List<Map<String, dynamic>>>(bypassTrafficSettings, (value) => pulumi.Input.encodeList<FirewallPolicyIntrusionDetectionBypassTrafficSpecificationsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateRanges': ?privateRanges,
      'signatureOverrides': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyIntrusionDetectionSignatureSpecificationResponse>, List<Map<String, dynamic>>>(signatureOverrides, (value) => pulumi.Input.encodeList<FirewallPolicyIntrusionDetectionSignatureSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallPolicyIntrusionDetectionConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyIntrusionDetectionConfigurationResponse(
      bypassTrafficSettings: map['bypassTrafficSettings'] == null ? null : (pulumi.Input.decodeList<FirewallPolicyIntrusionDetectionBypassTrafficSpecificationsResponse>(map['bypassTrafficSettings']!, (value) => FirewallPolicyIntrusionDetectionBypassTrafficSpecificationsResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      privateRanges: map['privateRanges'] == null ? null : ((map['privateRanges']! as List).cast<String>()).input(),
      signatureOverrides: map['signatureOverrides'] == null ? null : (pulumi.Input.decodeList<FirewallPolicyIntrusionDetectionSignatureSpecificationResponse>(map['signatureOverrides']!, (value) => FirewallPolicyIntrusionDetectionSignatureSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

