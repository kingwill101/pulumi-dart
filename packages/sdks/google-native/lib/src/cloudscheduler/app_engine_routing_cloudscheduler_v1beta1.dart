// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// App Engine Routing. For more information about services, versions, and instances see [An Overview of App Engine](https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine), [Microservices Architecture on Google App Engine](https://cloud.google.com/appengine/docs/python/microservices-on-app-engine), [App Engine Standard request routing](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed), and [App Engine Flex request routing](https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed).
class AppEngineRoutingCloudschedulerV1beta1 {
  /// App instance. By default, the job is sent to an instance which is available when the job is attempted. Requests can only be sent to a specific instance if [manual scaling is used in App Engine Standard](https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine?#scaling_types_and_instance_classes). App Engine Flex does not support instances. For more information, see [App Engine Standard request routing](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed) and [App Engine Flex request routing](https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed).
  final pulumi.Input<String>? instance;

  /// App service. By default, the job is sent to the service which is the default service when the job is attempted.
  final pulumi.Input<String>? service;

  /// App version. By default, the job is sent to the version which is the default version when the job is attempted.
  final pulumi.Input<String>? version;

  /// Creates a new [AppEngineRoutingCloudschedulerV1beta1].
  /// [instance] App instance. By default, the job is sent to an instance which is available when the job is attempted. Requests can only be sent to a specific instance if [manual scaling is used in App Engine Standard](https://cloud.google.com/appengine/docs/python/an-overview-of-app-engine?#scaling_types_and_instance_classes). App Engine Flex does not support instances. For more information, see [App Engine Standard request routing](https://cloud.google.com/appengine/docs/standard/python/how-requests-are-routed) and [App Engine Flex request routing](https://cloud.google.com/appengine/docs/flexible/python/how-requests-are-routed).
  /// [service] App service. By default, the job is sent to the service which is the default service when the job is attempted.
  /// [version] App version. By default, the job is sent to the version which is the default version when the job is attempted.
  AppEngineRoutingCloudschedulerV1beta1({
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

  factory AppEngineRoutingCloudschedulerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppEngineRoutingCloudschedulerV1beta1(
      instance: (() {
        final guardedValue = map['instance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      service: (() {
        final guardedValue = map['service'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
