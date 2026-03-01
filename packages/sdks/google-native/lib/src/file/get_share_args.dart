// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_file_v1beta1_get_share_args_doc}
/// Arguments for getShare.
/// {@endtemplate}
/// {@macro pulumi_file_v1beta1_get_share_args_doc}
class GetShareArgs {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> shareId;

  /// Creates a new [GetShareArgs].
  /// [instanceId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [shareId] Required.
  GetShareArgs({
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> shareId,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      shareId = pulumi.Input.asInput<String>(shareId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'location': location,
      'project': ?project,
      'shareId': shareId,
    };
  }

  factory GetShareArgs.fromMap(Map<String, dynamic> map) {
    return GetShareArgs(
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      shareId: pulumi.Output.create<String>(map['shareId'] as String),
    );
  }
}

