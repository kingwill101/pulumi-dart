// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalClusterClusterOperations {
  /// Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics).
  final pulumi.Input<bool>? enableApplicationLogs;

  /// Creates a new [BareMetalClusterClusterOperations].
  /// [enableApplicationLogs] Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics).
  BareMetalClusterClusterOperations({
    this.enableApplicationLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableApplicationLogs': ?enableApplicationLogs,
    };
  }

  factory BareMetalClusterClusterOperations.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterClusterOperations(
      enableApplicationLogs: map['enableApplicationLogs'] == null ? null : (map['enableApplicationLogs']! as bool).input(),
    );
  }
}

