// ignore_for_file: unused_element, unnecessary_cast


/// App Engine Routing. Defines routing characteristics specific to App Engine - service, version, and instance. For more information about services, versions, and instances see [An Overview of App Engine](https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine), [Microservices Architecture on Google App Engine](https://cloud.google.com/appengine/docs/python/microservices-on-app-engine), [App Engine Standard request routing](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed), and [App Engine Flex request routing](https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed). Using AppEngineRouting requires [`appengine.applications.get`](https://cloud.google.com/appengine/docs/admin-api/access-control) Google IAM permission for the project and the following scope: `https://www.googleapis.com/auth/cloud-platform`
class AppEngineRouting {
  /// App instance. By default, the task is sent to an instance which is available when the task is attempted. Requests can only be sent to a specific instance if [manual scaling is used in App Engine Standard](https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine?hl=en_US#scaling_types_and_instance_classes). App Engine Flex does not support instances. For more information, see [App Engine Standard request routing](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed) and [App Engine Flex request routing](https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed).
  final String? instance;
  /// App service. By default, the task is sent to the service which is the default service when the task is attempted. For some queues or tasks which were created using the App Engine Task Queue API, host is not parsable into service, version, and instance. For example, some tasks which were created using the App Engine SDK use a custom domain name; custom domains are not parsed by Cloud Tasks. If host is not parsable, then service, version, and instance are the empty string.
  final String? service;
  /// App version. By default, the task is sent to the version which is the default version when the task is attempted. For some queues or tasks which were created using the App Engine Task Queue API, host is not parsable into service, version, and instance. For example, some tasks which were created using the App Engine SDK use a custom domain name; custom domains are not parsed by Cloud Tasks. If host is not parsable, then service, version, and instance are the empty string.
  final String? version;

  /// Creates a new [AppEngineRouting].
  /// [instance] App instance. By default, the task is sent to an instance which is available when the task is attempted. Requests can only be sent to a specific instance if [manual scaling is used in App Engine Standard](https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine?hl=en_US#scaling_types_and_instance_classes). App Engine Flex does not support instances. For more information, see [App Engine Standard request routing](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed) and [App Engine Flex request routing](https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed).
  /// [service] App service. By default, the task is sent to the service which is the default service when the task is attempted. For some queues or tasks which were created using the App Engine Task Queue API, host is not parsable into service, version, and instance. For example, some tasks which were created using the App Engine SDK use a custom domain name; custom domains are not parsed by Cloud Tasks. If host is not parsable, then service, version, and instance are the empty string.
  /// [version] App version. By default, the task is sent to the version which is the default version when the task is attempted. For some queues or tasks which were created using the App Engine Task Queue API, host is not parsable into service, version, and instance. For example, some tasks which were created using the App Engine SDK use a custom domain name; custom domains are not parsed by Cloud Tasks. If host is not parsable, then service, version, and instance are the empty string.
  AppEngineRouting({
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

  factory AppEngineRouting.fromMap(Map<String, dynamic> map) {
    return AppEngineRouting(
      instance: map['instance'] == null ? null : map['instance'] as String,
      service: map['service'] == null ? null : map['service'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

