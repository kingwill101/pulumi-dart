// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QueueAppEngineRoutingOverride {
  /// (Output)
  /// The host that the task is sent to.
  final pulumi.Input<String>? host;
  /// App instance.
  /// By default, the task is sent to an instance which is available when the task is attempted.
  final pulumi.Input<String>? instance;
  /// App service.
  /// By default, the task is sent to the service which is the default service when the task is attempted.
  final pulumi.Input<String>? service;
  /// App version.
  /// By default, the task is sent to the version which is the default version when the task is attempted.
  final pulumi.Input<String>? version;

  /// Creates a new [QueueAppEngineRoutingOverride].
  /// [host] (Output)
  /// [instance] App instance.
  /// [service] App service.
  /// [version] App version.
  QueueAppEngineRoutingOverride({
    this.host,
    this.instance,
    this.service,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'instance': ?instance,
      'service': ?service,
      'version': ?version,
    };
  }

  factory QueueAppEngineRoutingOverride.fromMap(Map<String, dynamic> map) {
    return QueueAppEngineRoutingOverride(
      host: map['host'] == null ? null : (map['host'] as String).input(),
      instance: map['instance'] == null ? null : (map['instance'] as String).input(),
      service: map['service'] == null ? null : (map['service'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

