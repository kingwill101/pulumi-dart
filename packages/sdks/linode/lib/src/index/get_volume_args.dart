// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_volume_get_volume_args_doc}
/// Arguments for getVolume.
/// {@endtemplate}
/// {@macro pulumi_index_get_volume_get_volume_args_doc}
class GetVolumeArgs {
  /// The unique numeric ID of the Volume record to query.
  final pulumi.Input<int> id;

  /// Creates a new [GetVolumeArgs].
  /// [id] The unique numeric ID of the Volume record to query.
  GetVolumeArgs({
    required pulumi.Output<int> id,
  }) :
      id = pulumi.Input.asInput<int>(id);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetVolumeArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeArgs(
      id: pulumi.Output.create<int>(map['id'] as int),
    );
  }
}

