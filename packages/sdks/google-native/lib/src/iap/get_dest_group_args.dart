// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_v1_get_dest_group_args_doc}
/// Arguments for getDestGroup.
/// {@endtemplate}
/// {@macro pulumi_iap_v1_get_dest_group_args_doc}
class GetDestGroupArgs {
  final pulumi.Input<String> destGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDestGroupArgs].
  /// [destGroupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDestGroupArgs({
    required pulumi.Output<String> destGroupId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      destGroupId = pulumi.Input.asInput<String>(destGroupId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destGroupId': destGroupId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDestGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetDestGroupArgs(
      destGroupId: pulumi.Output.create<String>(map['destGroupId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

