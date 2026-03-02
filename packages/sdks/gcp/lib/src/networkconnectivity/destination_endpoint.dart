// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DestinationEndpoint {
  /// The ASN of the remote IP prefix.
  final pulumi.Input<String> asn;
  /// The CSP of the remote IP prefix.
  final pulumi.Input<String> csp;
  /// (Output)
  /// The state of the DestinationEndpoint resource.
  final pulumi.Input<String>? state;
  /// (Output)
  /// Time when the DestinationEndpoint resource was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DestinationEndpoint].
  /// [asn] The ASN of the remote IP prefix.
  /// [csp] The CSP of the remote IP prefix.
  /// [state] (Output)
  /// [updateTime] (Output)
  DestinationEndpoint({
    required this.asn,
    required this.csp,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': asn,
      'csp': csp,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory DestinationEndpoint.fromMap(Map<String, dynamic> map) {
    return DestinationEndpoint(
      asn: (map['asn'] as String).input(),
      csp: (map['csp'] as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}

