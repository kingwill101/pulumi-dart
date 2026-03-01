// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contactcenterinsights_v1_get_view_args_doc}
/// Arguments for getView.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_v1_get_view_args_doc}
class GetViewArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> viewId;

  /// Creates a new [GetViewArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [viewId] Required.
  GetViewArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> viewId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      viewId = pulumi.Input.asInput<String>(viewId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'viewId': viewId,
    };
  }

  factory GetViewArgs.fromMap(Map<String, dynamic> map) {
    return GetViewArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      viewId: pulumi.Output.create<String>(map['viewId'] as String),
    );
  }
}

