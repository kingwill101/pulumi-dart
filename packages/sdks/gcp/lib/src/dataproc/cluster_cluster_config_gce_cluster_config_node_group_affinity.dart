// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigGceClusterConfigNodeGroupAffinity {
  /// The URI of a sole-tenant node group resource that the cluster will be created on.
  final pulumi.Input<String> nodeGroupUri;

  /// Creates a new [ClusterClusterConfigGceClusterConfigNodeGroupAffinity].
  /// [nodeGroupUri] The URI of a sole-tenant node group resource that the cluster will be created on.
  ClusterClusterConfigGceClusterConfigNodeGroupAffinity({
    required this.nodeGroupUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nodeGroupUri': nodeGroupUri};
  }

  factory ClusterClusterConfigGceClusterConfigNodeGroupAffinity.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterClusterConfigGceClusterConfigNodeGroupAffinity(
      nodeGroupUri: pulumi.Input.fromValue(map['nodeGroupUri'] as String),
    );
  }
}
