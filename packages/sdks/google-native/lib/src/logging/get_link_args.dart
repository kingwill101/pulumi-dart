// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_link_args_doc}
/// Arguments for getLink.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_link_args_doc}
class GetLinkArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> linkId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetLinkArgs].
  /// [bucketId] Required.
  /// [linkId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetLinkArgs({
    required this.bucketId,
    required this.linkId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'linkId': linkId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkArgs(
      bucketId: (map['bucketId'] as String).input(),
      linkId: (map['linkId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

