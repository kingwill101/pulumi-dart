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
  const GetDestGroupArgs({
    required this.destGroupId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destGroupId': destGroupId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDestGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetDestGroupArgs(
      destGroupId: pulumi.Input.fromValue(map['destGroupId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
