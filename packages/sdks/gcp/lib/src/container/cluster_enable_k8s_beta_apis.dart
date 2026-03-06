// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterEnableK8sBetaApis {
  /// Enabled Kubernetes Beta APIs.
  final pulumi.Input<List<String>> enabledApis;

  /// Creates a new [ClusterEnableK8sBetaApis].
  /// [enabledApis] Enabled Kubernetes Beta APIs.
  const ClusterEnableK8sBetaApis({
    required this.enabledApis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledApis': enabledApis,
    };
  }

  factory ClusterEnableK8sBetaApis.fromMap(Map<String, dynamic> map) {
    return ClusterEnableK8sBetaApis(
      enabledApis: pulumi.Input.fromValue((map['enabledApis'] as List).cast<String>()),
    );
  }
}

