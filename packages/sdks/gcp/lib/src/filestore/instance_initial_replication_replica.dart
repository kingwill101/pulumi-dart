// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceInitialReplicationReplica {
  /// The peer instance.
  final pulumi.Input<String> peerInstance;

  /// Creates a new [InstanceInitialReplicationReplica].
  /// [peerInstance] The peer instance.
  InstanceInitialReplicationReplica({
    required this.peerInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peerInstance': peerInstance,
    };
  }

  factory InstanceInitialReplicationReplica.fromMap(Map<String, dynamic> map) {
    return InstanceInitialReplicationReplica(
      peerInstance: (map['peerInstance'] as String).input(),
    );
  }
}

