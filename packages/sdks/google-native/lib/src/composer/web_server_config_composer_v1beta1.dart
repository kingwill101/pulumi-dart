// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings for the Airflow web server App Engine instance. Supported for Cloud Composer environments in versions composer-1.*.*-airflow-*.*.*.
class WebServerConfigComposerV1beta1 {
  /// Optional. Machine type on which Airflow web server is running. It has to be one of: composer-n1-webserver-2, composer-n1-webserver-4 or composer-n1-webserver-8. If not specified, composer-n1-webserver-2 will be used. Value custom is returned only in response, if Airflow web server parameters were manually changed to a non-standard values.
  final String? machineType;

  /// Creates a new [WebServerConfigComposerV1beta1].
  /// [machineType] Optional. Machine type on which Airflow web server is running. It has to be one of: composer-n1-webserver-2, composer-n1-webserver-4 or composer-n1-webserver-8. If not specified, composer-n1-webserver-2 will be used. Value custom is returned only in response, if Airflow web server parameters were manually changed to a non-standard values.
  WebServerConfigComposerV1beta1({
    this.machineType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineType': ?machineType,
    };
  }

  factory WebServerConfigComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return WebServerConfigComposerV1beta1(
      machineType: map['machineType'] == null ? null : map['machineType'] as String,
    );
  }
}

