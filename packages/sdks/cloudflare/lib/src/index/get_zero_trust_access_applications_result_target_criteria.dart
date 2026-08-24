// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultTargetCriteria {
  /// The port that the targets use for the chosen communication protocol. A port cannot be assigned to multiple protocols.
  final pulumi.Input<int> port;
  /// The communication protocol your application secures.
  /// Available values: "SSH", "RDP".
  final pulumi.Input<String> protocol;
  /// Contains a map of target attribute keys to target attribute values.
  final pulumi.Input<Map<String, List<String>>> targetAttributes;

  /// Creates a new [GetZeroTrustAccessApplicationsResultTargetCriteria].
  /// [port] The port that the targets use for the chosen communication protocol. A port cannot be assigned to multiple protocols.
  /// [protocol] The communication protocol your application secures.
  /// [targetAttributes] Contains a map of target attribute keys to target attribute values.
  const GetZeroTrustAccessApplicationsResultTargetCriteria({
    required this.port,
    required this.protocol,
    required this.targetAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'protocol': protocol,
      'targetAttributes': targetAttributes,
    };
  }

  factory GetZeroTrustAccessApplicationsResultTargetCriteria.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultTargetCriteria(
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      targetAttributes: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(map['targetAttributes']!, (value) => (value as List).cast<String>())),
    );
  }
}
