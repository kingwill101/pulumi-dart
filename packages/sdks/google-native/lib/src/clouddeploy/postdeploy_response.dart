// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Postdeploy contains the postdeploy job configuration information.
class PostdeployResponse {
  /// Optional. A sequence of Skaffold custom actions to invoke during execution of the postdeploy job.
  final pulumi.Input<List<String>> actions;

  /// Creates a new [PostdeployResponse].
  /// [actions] Optional. A sequence of Skaffold custom actions to invoke during execution of the postdeploy job.
  PostdeployResponse({required this.actions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'actions': actions};
  }

  factory PostdeployResponse.fromMap(Map<String, dynamic> map) {
    return PostdeployResponse(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
    );
  }
}
