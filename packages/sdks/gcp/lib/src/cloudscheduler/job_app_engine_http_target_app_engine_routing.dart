// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobAppEngineHttpTargetAppEngineRouting {
  /// App instance.
  /// By default, the job is sent to an instance which is available when the job is attempted.
  final pulumi.Input<String>? instance;
  /// App service.
  /// By default, the job is sent to the service which is the default service when the job is attempted.
  final pulumi.Input<String>? service;
  /// App version.
  /// By default, the job is sent to the version which is the default version when the job is attempted.
  final pulumi.Input<String>? version;

  /// Creates a new [JobAppEngineHttpTargetAppEngineRouting].
  /// [instance] App instance.
  /// [service] App service.
  /// [version] App version.
  JobAppEngineHttpTargetAppEngineRouting({
    this.instance,
    this.service,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': ?instance,
      'service': ?service,
      'version': ?version,
    };
  }

  factory JobAppEngineHttpTargetAppEngineRouting.fromMap(Map<String, dynamic> map) {
    return JobAppEngineHttpTargetAppEngineRouting(
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

