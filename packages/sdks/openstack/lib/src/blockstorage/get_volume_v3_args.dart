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
    pulumi.Output<String>? bootable,
    pulumi.Output<String>? host,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<String>? volumeType,
  }) :
      bootable = pulumi.Input.asOptionalInput<String>(bootable),
      host = pulumi.Input.asOptionalInput<String>(host),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      volumeType = pulumi.Input.asOptionalInput<String>(volumeType);

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
      bootable: map['bootable'] == null ? null : pulumi.Output.create<String>(map['bootable'] as String),
      host: map['host'] == null ? null : pulumi.Output.create<String>(map['host'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      volumeType: map['volumeType'] == null ? null : pulumi.Output.create<String>(map['volumeType'] as String),
    );
  }
}

