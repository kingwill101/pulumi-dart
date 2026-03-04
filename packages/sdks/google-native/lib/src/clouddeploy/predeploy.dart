// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Predeploy contains the predeploy job configuration information.
class Predeploy {
  /// Optional. A sequence of Skaffold custom actions to invoke during execution of the predeploy job.
  final pulumi.Input<List<String>>? actions;

  /// Creates a new [Predeploy].
  /// [actions] Optional. A sequence of Skaffold custom actions to invoke during execution of the predeploy job.
  Predeploy({this.actions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'actions': ?actions};
  }

  factory Predeploy.fromMap(Map<String, dynamic> map) {
    return Predeploy(
      actions: (() {
        final guardedValue = map['actions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
