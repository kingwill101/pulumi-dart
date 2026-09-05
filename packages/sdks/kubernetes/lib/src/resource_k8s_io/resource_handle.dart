// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'structured_resource_handle.dart';

/// ResourceHandle holds opaque resource data for processing by a specific kubelet plugin.
class ResourceHandle {
  /// Data contains the opaque data associated with this ResourceHandle. It is set by the controller component of the resource driver whose name matches the DriverName set in the ResourceClaimStatus this ResourceHandle is embedded in. It is set at allocation time and is intended for processing by the kubelet plugin whose name matches the DriverName set in this ResourceHandle.
  ///
  /// The maximum size of this field is 16KiB. This may get increased in the future, but not reduced.
  final pulumi.Input<String?>? data;
  /// DriverName specifies the name of the resource driver whose kubelet plugin should be invoked to process this ResourceHandle's data once it lands on a node. This may differ from the DriverName set in ResourceClaimStatus this ResourceHandle is embedded in.
  final pulumi.Input<String?>? driverName;
  /// If StructuredData is set, then it needs to be used instead of Data.
  final pulumi.Input<StructuredResourceHandle?>? structuredData;

  /// Creates a new [ResourceHandle].
  /// [data] Data contains the opaque data associated with this ResourceHandle. It is set by the controller component of the resource driver whose name matches the DriverName set in the ResourceClaimStatus this ResourceHandle is embedded in. It is set at allocation time and is intended for processing by the kubelet plugin whose name matches the DriverName set in this ResourceHandle.
  /// [driverName] DriverName specifies the name of the resource driver whose kubelet plugin should be invoked to process this ResourceHandle's data once it lands on a node. This may differ from the DriverName set in ResourceClaimStatus this ResourceHandle is embedded in.
  /// [structuredData] If StructuredData is set, then it needs to be used instead of Data.
  const ResourceHandle({
    this.data,
    this.driverName,
    this.structuredData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'driverName': ?driverName,
      'structuredData': ?pulumi.Input.mapOptionalInputValue<StructuredResourceHandle, Map<String, dynamic>>(structuredData, (value) => value.toMap()),
    };
  }

  factory ResourceHandle.fromMap(Map<String, dynamic> map) {
    return ResourceHandle(
      data: (() { final guardedValue = map['data']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driverName: (() { final guardedValue = map['driverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      structuredData: (() { final guardedValue = map['structuredData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StructuredResourceHandle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
