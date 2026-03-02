// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An traffic selector policy for a virtual network gateway connection.
class TrafficSelectorPolicy {
  /// A collection of local address spaces in CIDR format.
  final pulumi.Input<List<String>> localAddressRanges;
  /// A collection of remote address spaces in CIDR format.
  final pulumi.Input<List<String>> remoteAddressRanges;

  /// Creates a new [TrafficSelectorPolicy].
  /// [localAddressRanges] A collection of local address spaces in CIDR format.
  /// [remoteAddressRanges] A collection of remote address spaces in CIDR format.
  TrafficSelectorPolicy({
    required this.localAddressRanges,
    required this.remoteAddressRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localAddressRanges': localAddressRanges,
      'remoteAddressRanges': remoteAddressRanges,
    };
  }

  factory TrafficSelectorPolicy.fromMap(Map<String, dynamic> map) {
    return TrafficSelectorPolicy(
      localAddressRanges: ((map['localAddressRanges'] as List).cast<String>()).input(),
      remoteAddressRanges: ((map['remoteAddressRanges'] as List).cast<String>()).input(),
    );
  }
}

