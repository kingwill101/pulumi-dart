// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceInitialReplicationReplica {
  /// The peer instance.
  final pulumi.Input<String> peerInstance;

  /// Creates a new [GetInstanceInitialReplicationReplica].
  /// [peerInstance] The peer instance.
  GetInstanceInitialReplicationReplica({
    required this.peerInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peerInstance': peerInstance,
    };
  }

  factory GetInstanceInitialReplicationReplica.fromMap(Map<String, dynamic> map) {
    return GetInstanceInitialReplicationReplica(
      peerInstance: (map['peerInstance'] as String).input(),
    );
  }
}

