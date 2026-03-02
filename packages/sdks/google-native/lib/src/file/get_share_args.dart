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
    required this.instanceId,
    required this.location,
    this.project,
    required this.shareId,
  });

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
      instanceId: (map['instanceId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      shareId: (map['shareId'] as String).input(),
    );
  }
}

