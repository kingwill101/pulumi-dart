// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_macsec_pre_shared_key_response_compute_beta.dart';

/// Configuration information for enabling Media Access Control security (MACsec) on this Cloud Interconnect connection between Google and your on-premises router.
class InterconnectMacsecResponseComputeBeta {
  /// If set to true, the Interconnect connection is configured with a should-secure MACsec security policy, that allows the Google router to fallback to cleartext traffic if the MKA session cannot be established. By default, the Interconnect connection is configured with a must-secure security policy that drops all traffic if the MKA session cannot be established with your router.
  final pulumi.Input<bool> failOpen;
  /// A keychain placeholder describing a set of named key objects along with their start times. A MACsec CKN/CAK is generated for each key in the key chain. Google router automatically picks the key with the most recent startTime when establishing or re-establishing a MACsec secure link.
  final pulumi.Input<List<InterconnectMacsecPreSharedKeyResponseComputeBeta>> preSharedKeys;

  /// Creates a new [InterconnectMacsecResponseComputeBeta].
  /// [failOpen] If set to true, the Interconnect connection is configured with a should-secure MACsec security policy, that allows the Google router to fallback to cleartext traffic if the MKA session cannot be established. By default, the Interconnect connection is configured with a must-secure security policy that drops all traffic if the MKA session cannot be established with your router.
  /// [preSharedKeys] A keychain placeholder describing a set of named key objects along with their start times. A MACsec CKN/CAK is generated for each key in the key chain. Google router automatically picks the key with the most recent startTime when establishing or re-establishing a MACsec secure link.
  const InterconnectMacsecResponseComputeBeta({
    required this.failOpen,
    required this.preSharedKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failOpen': failOpen,
      'preSharedKeys': pulumi.Input.mapInputValue<List<InterconnectMacsecPreSharedKeyResponseComputeBeta>, List<Map<String, dynamic>>>(preSharedKeys, (value) => pulumi.Input.encodeList<InterconnectMacsecPreSharedKeyResponseComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InterconnectMacsecResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return InterconnectMacsecResponseComputeBeta(
      failOpen: pulumi.Input.fromValue(map['failOpen'] as bool),
      preSharedKeys: pulumi.Input.fromValue(pulumi.Input.decodeList<InterconnectMacsecPreSharedKeyResponseComputeBeta>(map['preSharedKeys']!, (value) => InterconnectMacsecPreSharedKeyResponseComputeBeta.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
