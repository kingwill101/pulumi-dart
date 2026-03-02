// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_source_adapter_parent_addr_address.dart';

class PoolSourceAdapterParentAddr {
  /// Configures the address information related to the parent device of the adapter.
  final pulumi.Input<PoolSourceAdapterParentAddrAddress>? address;
  /// Provides a unique identifier for the address of the parent adapter.
  final pulumi.Input<double> uniqueId;

  /// Creates a new [PoolSourceAdapterParentAddr].
  /// [address] Configures the address information related to the parent device of the adapter.
  /// [uniqueId] Provides a unique identifier for the address of the parent adapter.
  PoolSourceAdapterParentAddr({
    this.address,
    required this.uniqueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?pulumi.Input.mapOptionalInputValue<PoolSourceAdapterParentAddrAddress, Map<String, dynamic>>(address, (value) => value.toMap()),
      'uniqueId': uniqueId,
    };
  }

  factory PoolSourceAdapterParentAddr.fromMap(Map<String, dynamic> map) {
    return PoolSourceAdapterParentAddr(
      address: map['address'] == null ? null : (PoolSourceAdapterParentAddrAddress.fromMap((map['address'] as Map).cast<String, dynamic>())).input(),
      uniqueId: (map['uniqueId'] as double).input(),
    );
  }
}

