// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Pool resources.
class PoolState {
  /// The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? accountName;
  /// Whether the NetApp Pool can hold cool access enabled volumes. Defaults to `false`.
  ///
  /// &gt; **Note:** Disabling `coolAccessEnabled` is not allowed and forces a new resource to be created.
  final pulumi.Input<bool?>? coolAccessEnabled;
  /// The custom throughput for the pool in MiB/s. Minimum value is `128`. This field can only be set when `serviceLevel` is set to `Flexible` and `qosType` is set to `Manual`.
  final pulumi.Input<int?>? customThroughputMibps;
  /// The encryption type of the pool. Valid values include `Single`, and `Double`. Defaults to `Single`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? encryptionType;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name of the NetApp Pool. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// QoS Type of the pool. Valid values include `Auto` or `Manual`. Defaults to `Auto`.
  final pulumi.Input<String?>? qosType;
  /// The name of the resource group where the NetApp Pool should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The service level of the file system. Valid values include `Premium`, `Standard`, `Ultra`, and `Flexible`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? serviceLevel;
  /// Provisioned size of the pool in TB. Value must be between `1` and `2048`.
  ///
  /// &gt; **Note:** `2` TB capacity pool sizing is currently in preview. You can only take advantage of the `2` TB minimum if all the volumes in the capacity pool are using `Standard` network features. If any volume is using `Basic` network features, the minimum size is `4` TB. Please see the product [documentation](https://learn.microsoft.com/azure/azure-netapp-files/azure-netapp-files-set-up-capacity-pool) for more information.
  ///
  /// &gt; **Note:** The maximum `sizeInTb` is goverened by regional quotas. You may request additional capacity from Azure, currently up to `2048`.
  final pulumi.Input<int?>? sizeInTb;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [PoolState].
  /// [accountName] The name of the NetApp account in which the NetApp Pool should be created. Changing this forces a new resource to be created.
  /// [coolAccessEnabled] Whether the NetApp Pool can hold cool access enabled volumes. Defaults to `false`.
  /// [customThroughputMibps] The custom throughput for the pool in MiB/s. Minimum value is `128`. This field can only be set when `serviceLevel` is set to `Flexible` and `qosType` is set to `Manual`.
  /// [encryptionType] The encryption type of the pool. Valid values include `Single`, and `Double`. Defaults to `Single`. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] The name of the NetApp Pool. Changing this forces a new resource to be created.
  /// [qosType] QoS Type of the pool. Valid values include `Auto` or `Manual`. Defaults to `Auto`.
  /// [resourceGroupName] The name of the resource group where the NetApp Pool should be created. Changing this forces a new resource to be created.
  /// [serviceLevel] The service level of the file system. Valid values include `Premium`, `Standard`, `Ultra`, and `Flexible`. Changing this forces a new resource to be created.
  /// [sizeInTb] Provisioned size of the pool in TB. Value must be between `1` and `2048`.
  /// [tags] A mapping of tags to assign to the resource.
  const PoolState({
    this.accountName,
    this.coolAccessEnabled,
    this.customThroughputMibps,
    this.encryptionType,
    this.location,
    this.name,
    this.qosType,
    this.resourceGroupName,
    this.serviceLevel,
    this.sizeInTb,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'coolAccessEnabled': ?coolAccessEnabled,
      'customThroughputMibps': ?customThroughputMibps,
      'encryptionType': ?encryptionType,
      'location': ?location,
      'name': ?name,
      'qosType': ?qosType,
      'resourceGroupName': ?resourceGroupName,
      'serviceLevel': ?serviceLevel,
      'sizeInTb': ?sizeInTb,
      'tags': ?tags,
    };
  }

  factory PoolState.fromMap(Map<String, dynamic> map) {
    return PoolState(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coolAccessEnabled: (() { final guardedValue = map['coolAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      customThroughputMibps: (() { final guardedValue = map['customThroughputMibps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      encryptionType: (() { final guardedValue = map['encryptionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qosType: (() { final guardedValue = map['qosType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceLevel: (() { final guardedValue = map['serviceLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeInTb: (() { final guardedValue = map['sizeInTb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
