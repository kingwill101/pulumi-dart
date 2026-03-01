// ignore_for_file: unused_element, unnecessary_cast


class JobAppEngineHttpTargetAppEngineRouting {
  /// App instance.
  /// By default, the job is sent to an instance which is available when the job is attempted.
  final String? instance;
  /// App service.
  /// By default, the job is sent to the service which is the default service when the job is attempted.
  final String? service;
  /// App version.
  /// By default, the job is sent to the version which is the default version when the job is attempted.
  final String? version;

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
      instance: map['instance'] == null ? null : map['instance'] as String,
      service: map['service'] == null ? null : map['service'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

