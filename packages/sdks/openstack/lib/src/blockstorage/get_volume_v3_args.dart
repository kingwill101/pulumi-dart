// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blockstorage_get_volume_v3_get_volume_v3_args_doc}
/// Arguments for getVolumeV3.
/// {@endtemplate}
/// {@macro pulumi_blockstorage_get_volume_v3_get_volume_v3_args_doc}
class GetVolumeV3Args {
  /// Indicates if the volume is bootable.
  final pulumi.Input<String>? bootable;

  /// The OpenStack host on which the volume is located.
  final pulumi.Input<String>? host;

  /// Metadata key/value pairs associated with the volume.
  final pulumi.Input<Map<String, String>>? metadata;

  /// The name of the volume.
  final pulumi.Input<String>? name;

  /// The region in which to obtain the V3 Block Storage
  /// client. If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// The status of the volume.
  final pulumi.Input<String>? status;

  /// The type of the volume.
  final pulumi.Input<String>? volumeType;

  /// Creates a new [GetVolumeV3Args].
  /// [bootable] Indicates if the volume is bootable.
  /// [host] The OpenStack host on which the volume is located.
  /// [metadata] Metadata key/value pairs associated with the volume.
  /// [name] The name of the volume.
  /// [region] The region in which to obtain the V3 Block Storage
  /// [status] The status of the volume.
  /// [volumeType] The type of the volume.
  GetVolumeV3Args({
    this.bootable,
    this.host,
    this.metadata,
    this.name,
    this.region,
    this.status,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootable': ?bootable,
      'host': ?host,
      'metadata': ?metadata,
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'volumeType': ?volumeType,
    };
  }

  factory GetVolumeV3Args.fromMap(Map<String, dynamic> map) {
    return GetVolumeV3Args(
      bootable: (() {
        final guardedValue = map['bootable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      host: (() {
        final guardedValue = map['host'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      volumeType: (() {
        final guardedValue = map['volumeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
