// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudasset_v1_get_feed_args_doc}
/// Arguments for getFeed.
/// {@endtemplate}
/// {@macro pulumi_cloudasset_v1_get_feed_args_doc}
class GetFeedArgs {
  final pulumi.Input<String> feedId;
  final pulumi.Input<String> v1Id;
  final pulumi.Input<String> v1Id1;

  /// Creates a new [GetFeedArgs].
  /// [feedId] Required.
  /// [v1Id] Required.
  /// [v1Id1] Required.
  GetFeedArgs({
    required pulumi.Output<String> feedId,
    required pulumi.Output<String> v1Id,
    required pulumi.Output<String> v1Id1,
  }) :
      feedId = pulumi.Input.asInput<String>(feedId),
      v1Id = pulumi.Input.asInput<String>(v1Id),
      v1Id1 = pulumi.Input.asInput<String>(v1Id1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'feedId': feedId,
      'v1Id': v1Id,
      'v1Id1': v1Id1,
    };
  }

  factory GetFeedArgs.fromMap(Map<String, dynamic> map) {
    return GetFeedArgs(
      feedId: pulumi.Output.create<String>(map['feedId'] as String),
      v1Id: pulumi.Output.create<String>(map['v1Id'] as String),
      v1Id1: pulumi.Output.create<String>(map['v1Id1'] as String),
    );
  }
}

