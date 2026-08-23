// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZonePrivateVisibilityConfigGkeCluster {
  /// The resource name of the cluster to bind this ManagedZone to.
  /// This should be specified in the format like
  /// `projects/*/locations/*/clusters/*`
  final pulumi.Input<String> gkeClusterName;

  /// Creates a new [ManagedZonePrivateVisibilityConfigGkeCluster].
  /// [gkeClusterName] The resource name of the cluster to bind this ManagedZone to.
  const ManagedZonePrivateVisibilityConfigGkeCluster({
    required this.gkeClusterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gkeClusterName': gkeClusterName,
    };
  }

  factory ManagedZonePrivateVisibilityConfigGkeCluster.fromMap(Map<String, dynamic> map) {
    return ManagedZonePrivateVisibilityConfigGkeCluster(
      gkeClusterName: pulumi.Input.fromValue(map['gkeClusterName'] as String),
    );
  }
}
