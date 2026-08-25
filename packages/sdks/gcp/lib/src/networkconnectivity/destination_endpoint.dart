// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DestinationEndpoint {
  /// The ASN of the remote IP prefix.
  final pulumi.Input<String> asn;
  /// The CSP of the remote IP prefix.
  final pulumi.Input<String> csp;
  /// (Output)
  /// The state of the DestinationEndpoint resource.
  final pulumi.Input<String?>? state;
  /// (Output)
  /// Time when the DestinationEndpoint resource was updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [DestinationEndpoint].
  /// [asn] The ASN of the remote IP prefix.
  /// [csp] The CSP of the remote IP prefix.
  /// [state] (Output)
  /// [updateTime] (Output)
  const DestinationEndpoint({
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
      asn: pulumi.Input.fromValue(map['asn'] as String),
      csp: pulumi.Input.fromValue(map['csp'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
