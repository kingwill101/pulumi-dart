// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the bare metal user cluster's observability infrastructure.
class BareMetalClusterOperationsConfigResponse {
  /// Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics).
  final pulumi.Input<bool> enableApplicationLogs;

  /// Creates a new [BareMetalClusterOperationsConfigResponse].
  /// [enableApplicationLogs] Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics).
  const BareMetalClusterOperationsConfigResponse({
    required this.enableApplicationLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableApplicationLogs': enableApplicationLogs,
    };
  }

  factory BareMetalClusterOperationsConfigResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterOperationsConfigResponse(
      enableApplicationLogs: pulumi.Input.fromValue(map['enableApplicationLogs'] as bool),
    );
  }
}

