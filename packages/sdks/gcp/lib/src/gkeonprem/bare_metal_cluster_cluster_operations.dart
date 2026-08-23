// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BareMetalClusterClusterOperations {
  /// Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics).
  final pulumi.Input<bool>? enableApplicationLogs;

  /// Creates a new [BareMetalClusterClusterOperations].
  /// [enableApplicationLogs] Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics).
  const BareMetalClusterClusterOperations({
    this.enableApplicationLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableApplicationLogs': ?enableApplicationLogs,
    };
  }

  factory BareMetalClusterClusterOperations.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterClusterOperations(
      enableApplicationLogs: (() { final guardedValue = map['enableApplicationLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
