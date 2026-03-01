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
    required pulumi.Output<String> bucketId,
    required pulumi.Output<String> linkId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      bucketId = pulumi.Input.asInput<String>(bucketId),
      linkId = pulumi.Input.asInput<String>(linkId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      bucketId: pulumi.Output.create<String>(map['bucketId'] as String),
      linkId: pulumi.Output.create<String>(map['linkId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

