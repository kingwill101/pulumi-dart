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
  const QueueAppEngineRoutingOverride({
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
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

