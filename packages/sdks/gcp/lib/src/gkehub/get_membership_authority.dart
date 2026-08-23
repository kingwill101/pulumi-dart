// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMembershipAuthority {
  /// A JSON Web Token (JWT) issuer URI. 'issuer' must start with 'https://' and // be a valid
  /// with length &lt;2000 characters. For example: 'https://container.googleapis.com/v1/projects/my-project/locations/us-west1/clusters/my-cluster'. If the cluster is provisioned with Terraform, this is '"https://container.googleapis.com/v1/${google_container_cluster.my-cluster.id}"'.
  final pulumi.Input<String> issuer;

  /// Creates a new [GetMembershipAuthority].
  /// [issuer] A JSON Web Token (JWT) issuer URI. 'issuer' must start with 'https://' and // be a valid
  const GetMembershipAuthority({
    required this.issuer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuer': issuer,
    };
  }

  factory GetMembershipAuthority.fromMap(Map<String, dynamic> map) {
    return GetMembershipAuthority(
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
    );
  }
}
