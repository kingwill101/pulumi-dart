// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_create_source.dart';

/// {@template pulumi_elasticsan_volume_volume_args_doc}
/// The set of arguments for Volume.
/// {@endtemplate}
/// {@macro pulumi_elasticsan_volume_volume_args_doc}
class VolumeArgs {
  /// A `create_source` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<VolumeCreateSource>? createSource;
  /// Specifies the name of this Elastic SAN Volume. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the size of the Elastic SAN Volume in GiB. The size should be within the remaining capacity of the parent Elastic SAN. Possible values are between `1` and `65536` (16 TiB).
  ///
  /// > **Note:** The size can only be increased. If `create_source` is specified, then the size must be equal to or greater than the source's size.
  final pulumi.Input<int> sizeInGib;
  /// Specifies the Volume Group ID within which this Elastic SAN Volume should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> volumeGroupId;

  /// Creates a new [VolumeArgs].
  /// [createSource] A `create_source` block as defined below. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Elastic SAN Volume. Changing this forces a new resource to be created.
  /// [sizeInGib] Specifies the size of the Elastic SAN Volume in GiB. The size should be within the remaining capacity of the parent Elastic SAN. Possible values are between `1` and `65536` (16 TiB).
  /// [volumeGroupId] Specifies the Volume Group ID within which this Elastic SAN Volume should exist. Changing this forces a new resource to be created.
  VolumeArgs({
    pulumi.Output<VolumeCreateSource>? createSource,
    pulumi.Output<String>? name,
    required pulumi.Output<int> sizeInGib,
    required pulumi.Output<String> volumeGroupId,
  }) :
      createSource = pulumi.Input.asOptionalInput<VolumeCreateSource>(createSource),
      name = pulumi.Input.asOptionalInput<String>(name),
      sizeInGib = pulumi.Input.asInput<int>(sizeInGib),
      volumeGroupId = pulumi.Input.asInput<String>(volumeGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createSource': ?pulumi.Input.mapOptionalInputValue<VolumeCreateSource, Map<String, dynamic>>(createSource, (value) => value.toMap()),
      'name': ?name,
      'sizeInGib': sizeInGib,
      'volumeGroupId': volumeGroupId,
    };
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      createSource: map['createSource'] == null ? null : pulumi.Output.create<VolumeCreateSource>(VolumeCreateSource.fromMap((map['createSource'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      sizeInGib: pulumi.Output.create<int>(map['sizeInGib'] as int),
      volumeGroupId: pulumi.Output.create<String>(map['volumeGroupId'] as String),
    );
  }
}

