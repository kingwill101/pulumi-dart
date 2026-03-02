// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MembershipEndpointGkeCluster {
  final pulumi.Input<String> resourceLink;

  /// Creates a new [MembershipEndpointGkeCluster].
  /// [resourceLink] Required.
  MembershipEndpointGkeCluster({
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceLink': resourceLink,
    };
  }

  factory MembershipEndpointGkeCluster.fromMap(Map<String, dynamic> map) {
    return MembershipEndpointGkeCluster(
      resourceLink: (map['resourceLink'] as String).input(),
    );
  }
}

