// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomaticClusterApiServerAccess {
  /// Set of authorized IP ranges to allow access to API server, e.g. ["198.51.100.0/24"].
  final pulumi.Input<List<String>?>? authorizedIpRanges;
  /// The ID of the Subnet where the API server endpoint is delegated to. Is required for bring your own networking.
  final pulumi.Input<String?>? subnetId;

  /// Creates a new [AutomaticClusterApiServerAccess].
  /// [authorizedIpRanges] Set of authorized IP ranges to allow access to API server, e.g. ["198.51.100.0/24"].
  /// [subnetId] The ID of the Subnet where the API server endpoint is delegated to. Is required for bring your own networking.
  const AutomaticClusterApiServerAccess({
    this.authorizedIpRanges,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedIpRanges': ?authorizedIpRanges,
      'subnetId': ?subnetId,
    };
  }

  factory AutomaticClusterApiServerAccess.fromMap(Map<String, dynamic> map) {
    return AutomaticClusterApiServerAccess(
      authorizedIpRanges: (() { final guardedValue = map['authorizedIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
