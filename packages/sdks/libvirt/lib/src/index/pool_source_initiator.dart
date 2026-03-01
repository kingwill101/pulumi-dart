// ignore_for_file: unused_element, unnecessary_cast

import 'pool_source_initiator_iqn.dart';

class PoolSourceInitiator {
  /// Configures the iSCSI Qualified Name (IQN) for the initiator connecting to the storage source.
  final PoolSourceInitiatorIqn? iqn;

  /// Creates a new [PoolSourceInitiator].
  /// [iqn] Configures the iSCSI Qualified Name (IQN) for the initiator connecting to the storage source.
  PoolSourceInitiator({
    this.iqn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iqn': ?iqn == null ? null : iqn!.toMap(),
    };
  }

  factory PoolSourceInitiator.fromMap(Map<String, dynamic> map) {
    return PoolSourceInitiator(
      iqn: map['iqn'] == null ? null : PoolSourceInitiatorIqn.fromMap((map['iqn'] as Map).cast<String, dynamic>()),
    );
  }
}

