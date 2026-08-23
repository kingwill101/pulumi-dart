// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings for the Airflow web server App Engine instance. Supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
class WebServerConfigResponseComposerV1beta1 {
  /// Optional. Machine type on which Airflow web server is running. It has to be one of: composer-n1-webserver-2, composer-n1-webserver-4 or composer-n1-webserver-8. If not specified, composer-n1-webserver-2 will be used. Value custom is returned only in response, if Airflow web server parameters were manually changed to a non-standard values.
  final pulumi.Input<String> machineType;

  /// Creates a new [WebServerConfigResponseComposerV1beta1].
  /// [machineType] Optional. Machine type on which Airflow web server is running. It has to be one of: composer-n1-webserver-2, composer-n1-webserver-4 or composer-n1-webserver-8. If not specified, composer-n1-webserver-2 will be used. Value custom is returned only in response, if Airflow web server parameters were manually changed to a non-standard values.
  const WebServerConfigResponseComposerV1beta1({
    required this.machineType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineType': machineType,
    };
  }

  factory WebServerConfigResponseComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return WebServerConfigResponseComposerV1beta1(
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
    );
  }
}
