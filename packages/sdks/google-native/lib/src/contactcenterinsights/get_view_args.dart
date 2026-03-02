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
    required this.location,
    this.project,
    required this.viewId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'viewId': viewId,
    };
  }

  factory GetViewArgs.fromMap(Map<String, dynamic> map) {
    return GetViewArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      viewId: (map['viewId'] as String).input(),
    );
  }
}

