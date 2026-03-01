// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the bare metal user cluster's observability infrastructure.
class BareMetalClusterOperationsConfig {
  /// Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics).
  final bool? enableApplicationLogs;

  /// Creates a new [BareMetalClusterOperationsConfig].
  /// [enableApplicationLogs] Whether collection of application logs/metrics should be enabled (in addition to system logs/metrics).
  BareMetalClusterOperationsConfig({
    this.enableApplicationLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableApplicationLogs': ?enableApplicationLogs,
    };
  }

  factory BareMetalClusterOperationsConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterOperationsConfig(
      enableApplicationLogs: map['enableApplicationLogs'] == null ? null : map['enableApplicationLogs'] as bool,
    );
  }
}

