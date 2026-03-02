// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayConnectionTrafficSelectorPolicy {
  /// List of local CIDRs.
  final pulumi.Input<List<String>> localAddressCidrs;
  /// List of remote CIDRs.
  final pulumi.Input<List<String>> remoteAddressCidrs;

  /// Creates a new [GetGatewayConnectionTrafficSelectorPolicy].
  /// [localAddressCidrs] List of local CIDRs.
  /// [remoteAddressCidrs] List of remote CIDRs.
  GetGatewayConnectionTrafficSelectorPolicy({
    required this.localAddressCidrs,
    required this.remoteAddressCidrs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localAddressCidrs': localAddressCidrs,
      'remoteAddressCidrs': remoteAddressCidrs,
    };
  }

  factory GetGatewayConnectionTrafficSelectorPolicy.fromMap(Map<String, dynamic> map) {
    return GetGatewayConnectionTrafficSelectorPolicy(
      localAddressCidrs: ((map['localAddressCidrs'] as List).cast<String>()).input(),
      remoteAddressCidrs: ((map['remoteAddressCidrs'] as List).cast<String>()).input(),
    );
  }
}

