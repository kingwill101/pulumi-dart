// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A postdeploy Job.
class PostdeployJobResponse {
  /// The custom actions that the postdeploy Job executes.
  final pulumi.Input<List<String>> actions;

  /// Creates a new [PostdeployJobResponse].
  /// [actions] The custom actions that the postdeploy Job executes.
  const PostdeployJobResponse({
    required this.actions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
    };
  }

  factory PostdeployJobResponse.fromMap(Map<String, dynamic> map) {
    return PostdeployJobResponse(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
    );
  }
}

