// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// App Engine service. Learn more at https://cloud.google.com/appengine.
class AppEngine {
  /// The ID of the App Engine module underlying this service. Corresponds to the module_id resource label in the gae_app monitored resource (https://cloud.google.com/monitoring/api/resources#tag_gae_app).
  final pulumi.Input<String>? moduleId;

  /// Creates a new [AppEngine].
  /// [moduleId] The ID of the App Engine module underlying this service. Corresponds to the module_id resource label in the gae_app monitored resource (https://cloud.google.com/monitoring/api/resources#tag_gae_app).
  const AppEngine({
    this.moduleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moduleId': ?moduleId,
    };
  }

  factory AppEngine.fromMap(Map<String, dynamic> map) {
    return AppEngine(
      moduleId: (() { final guardedValue = map['moduleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

