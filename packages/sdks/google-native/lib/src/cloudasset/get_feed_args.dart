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
    required this.feedId,
    required this.v1Id,
    required this.v1Id1,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'feedId': feedId,
      'v1Id': v1Id,
      'v1Id1': v1Id1,
    };
  }

  factory GetFeedArgs.fromMap(Map<String, dynamic> map) {
    return GetFeedArgs(
      feedId: (map['feedId'] as String).input(),
      v1Id: (map['v1Id'] as String).input(),
      v1Id1: (map['v1Id1'] as String).input(),
    );
  }
}

