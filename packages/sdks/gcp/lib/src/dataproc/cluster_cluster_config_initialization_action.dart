// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigInitializationAction {
  /// The script to be executed during initialization of the cluster.
  /// The script must be a GCS file with a gs:// prefix.
  final pulumi.Input<String> script;
  /// The maximum duration (in seconds) which `script` is
  /// allowed to take to execute its action. GCP will default to a predetermined
  /// computed value if not set (currently 300).
  ///
  /// - - -
  final pulumi.Input<int>? timeoutSec;

  /// Creates a new [ClusterClusterConfigInitializationAction].
  /// [script] The script to be executed during initialization of the cluster.
  /// [timeoutSec] The maximum duration (in seconds) which `script` is
  const ClusterClusterConfigInitializationAction({
    required this.script,
    this.timeoutSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'script': script,
      'timeoutSec': ?timeoutSec,
    };
  }

  factory ClusterClusterConfigInitializationAction.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigInitializationAction(
      script: pulumi.Input.fromValue(map['script'] as String),
      timeoutSec: (() { final guardedValue = map['timeoutSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

