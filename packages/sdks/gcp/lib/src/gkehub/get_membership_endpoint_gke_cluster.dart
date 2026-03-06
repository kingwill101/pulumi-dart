// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMembershipEndpointGkeCluster {
  final pulumi.Input<String> resourceLink;

  /// Creates a new [GetMembershipEndpointGkeCluster].
  /// [resourceLink] Required.
  const GetMembershipEndpointGkeCluster({
    required this.resourceLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceLink': resourceLink,
    };
  }

  factory GetMembershipEndpointGkeCluster.fromMap(Map<String, dynamic> map) {
    return GetMembershipEndpointGkeCluster(
      resourceLink: pulumi.Input.fromValue(map['resourceLink'] as String),
    );
  }
}

