// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_source_adapter_parent_addr.dart';

class PoolSourceAdapter {
  /// Indicates whether the adapter is managed by the virtualization framework.
  final pulumi.Input<bool>? managed;
  /// Sets the name of the adapter for identification purposes.
  final pulumi.Input<String>? name;
  /// Specifies the parent identifier of the adapter if applicable, linking it to a higher-level entity.
  final pulumi.Input<String>? parent;
  /// Provides the address details of the adapter's parent device.
  final pulumi.Input<PoolSourceAdapterParentAddr>? parentAddr;
  /// Sets the type of the adapter being used for the storage source connection.
  final pulumi.Input<String>? type;
  /// Defines the World Wide Name for the node of the adapter used in the storage source context.
  final pulumi.Input<String>? wwnn;
  /// Configures the World Wide Name for the portal of the adapter connected to the storage source.
  final pulumi.Input<String>? wwpn;

  /// Creates a new [PoolSourceAdapter].
  /// [managed] Indicates whether the adapter is managed by the virtualization framework.
  /// [name] Sets the name of the adapter for identification purposes.
  /// [parent] Specifies the parent identifier of the adapter if applicable, linking it to a higher-level entity.
  /// [parentAddr] Provides the address details of the adapter's parent device.
  /// [type] Sets the type of the adapter being used for the storage source connection.
  /// [wwnn] Defines the World Wide Name for the node of the adapter used in the storage source context.
  /// [wwpn] Configures the World Wide Name for the portal of the adapter connected to the storage source.
  PoolSourceAdapter({
    this.managed,
    this.name,
    this.parent,
    this.parentAddr,
    this.type,
    this.wwnn,
    this.wwpn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managed': ?managed,
      'name': ?name,
      'parent': ?parent,
      'parentAddr': ?pulumi.Input.mapOptionalInputValue<PoolSourceAdapterParentAddr, Map<String, dynamic>>(parentAddr, (value) => value.toMap()),
      'type': ?type,
      'wwnn': ?wwnn,
      'wwpn': ?wwpn,
    };
  }

  factory PoolSourceAdapter.fromMap(Map<String, dynamic> map) {
    return PoolSourceAdapter(
      managed: map['managed'] == null ? null : (map['managed']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      parentAddr: map['parentAddr'] == null ? null : (PoolSourceAdapterParentAddr.fromMap((map['parentAddr']! as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      wwnn: map['wwnn'] == null ? null : (map['wwnn']! as String).input(),
      wwpn: map['wwpn'] == null ? null : (map['wwpn']! as String).input(),
    );
  }
}

