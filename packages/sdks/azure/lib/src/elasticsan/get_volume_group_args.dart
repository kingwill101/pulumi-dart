// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticsan_get_volume_group_get_volume_group_args_doc}
/// Arguments for getVolumeGroup.
/// {@endtemplate}
/// {@macro pulumi_elasticsan_get_volume_group_get_volume_group_args_doc}
class GetVolumeGroupArgs {
  /// The Elastic SAN ID within which the Elastic SAN Volume Group exists.
  final pulumi.Input<String> elasticSanId;
  /// The name of the Elastic SAN Volume Group.
  final pulumi.Input<String> name;

  /// Creates a new [GetVolumeGroupArgs].
  /// [elasticSanId] The Elastic SAN ID within which the Elastic SAN Volume Group exists.
  /// [name] The name of the Elastic SAN Volume Group.
  const GetVolumeGroupArgs({
    required this.elasticSanId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticSanId': elasticSanId,
      'name': name,
    };
  }

  factory GetVolumeGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupArgs(
      elasticSanId: pulumi.Input.fromValue(map['elasticSanId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
