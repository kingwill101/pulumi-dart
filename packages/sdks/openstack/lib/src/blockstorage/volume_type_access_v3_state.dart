// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VolumeTypeAccessV3 resources.
class VolumeTypeAccessV3State {
  /// ID of the project to give access to. Changing this
  /// creates a new resource.
  final pulumi.Input<String>? projectId;
  /// The region in which to create the volume. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new quotaset.
  final pulumi.Input<String>? region;
  /// ID of the volume type to give access to. Changing
  /// this creates a new resource.
  final pulumi.Input<String>? volumeTypeId;

  /// Creates a new [VolumeTypeAccessV3State].
  /// [projectId] ID of the project to give access to. Changing this
  /// [region] The region in which to create the volume. If
  /// [volumeTypeId] ID of the volume type to give access to. Changing
  VolumeTypeAccessV3State({
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? volumeTypeId,
  }) :
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      volumeTypeId = pulumi.Input.asOptionalInput<String>(volumeTypeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': ?projectId,
      'region': ?region,
      'volumeTypeId': ?volumeTypeId,
    };
  }

  factory VolumeTypeAccessV3State.fromMap(Map<String, dynamic> map) {
    return VolumeTypeAccessV3State(
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      volumeTypeId: map['volumeTypeId'] == null ? null : pulumi.Output.create<String>(map['volumeTypeId'] as String),
    );
  }
}

