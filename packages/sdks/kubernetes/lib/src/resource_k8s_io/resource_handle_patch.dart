// ignore_for_file: unused_element, unnecessary_cast

import 'structured_resource_handle_patch.dart';

/// ResourceHandle holds opaque resource data for processing by a specific kubelet plugin.
class ResourceHandlePatch {
  /// Data contains the opaque data associated with this ResourceHandle. It is set by the controller component of the resource driver whose name matches the DriverName set in the ResourceClaimStatus this ResourceHandle is embedded in. It is set at allocation time and is intended for processing by the kubelet plugin whose name matches the DriverName set in this ResourceHandle.
  ///
  /// The maximum size of this field is 16KiB. This may get increased in the future, but not reduced.
  final String? data;
  /// DriverName specifies the name of the resource driver whose kubelet plugin should be invoked to process this ResourceHandle's data once it lands on a node. This may differ from the DriverName set in ResourceClaimStatus this ResourceHandle is embedded in.
  final String? driverName;
  /// If StructuredData is set, then it needs to be used instead of Data.
  final StructuredResourceHandlePatch? structuredData;

  /// Creates a new [ResourceHandlePatch].
  /// [data] Data contains the opaque data associated with this ResourceHandle. It is set by the controller component of the resource driver whose name matches the DriverName set in the ResourceClaimStatus this ResourceHandle is embedded in. It is set at allocation time and is intended for processing by the kubelet plugin whose name matches the DriverName set in this ResourceHandle.
  /// [driverName] DriverName specifies the name of the resource driver whose kubelet plugin should be invoked to process this ResourceHandle's data once it lands on a node. This may differ from the DriverName set in ResourceClaimStatus this ResourceHandle is embedded in.
  /// [structuredData] If StructuredData is set, then it needs to be used instead of Data.
  ResourceHandlePatch({
    this.data,
    this.driverName,
    this.structuredData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'driverName': ?driverName,
      'structuredData': ?structuredData == null ? null : structuredData!.toMap(),
    };
  }

  factory ResourceHandlePatch.fromMap(Map<String, dynamic> map) {
    return ResourceHandlePatch(
      data: map['data'] == null ? null : map['data'] as String,
      driverName: map['driverName'] == null ? null : map['driverName'] as String,
      structuredData: map['structuredData'] == null ? null : StructuredResourceHandlePatch.fromMap((map['structuredData'] as Map).cast<String, dynamic>()),
    );
  }
}

