// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_webpubsub_get_web_pub_sub_replica_args_doc}
/// Arguments for getWebPubSubReplica.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_get_web_pub_sub_replica_args_doc}
class GetWebPubSubReplicaArgs {
  /// The name of the replica.
  final pulumi.Input<String> replicaName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetWebPubSubReplicaArgs].
  /// [replicaName] The name of the replica.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  GetWebPubSubReplicaArgs({
    required this.replicaName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicaName': replicaName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetWebPubSubReplicaArgs.fromMap(Map<String, dynamic> map) {
    return GetWebPubSubReplicaArgs(
      replicaName: (map['replicaName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
    );
  }
}

