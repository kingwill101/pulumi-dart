// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A predeploy Job.
class PredeployJobResponse {
  /// The custom actions that the predeploy Job executes.
  final pulumi.Input<List<String>> actions;

  /// Creates a new [PredeployJobResponse].
  /// [actions] The custom actions that the predeploy Job executes.
  PredeployJobResponse({required this.actions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'actions': actions};
  }

  factory PredeployJobResponse.fromMap(Map<String, dynamic> map) {
    return PredeployJobResponse(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
    );
  }
}
