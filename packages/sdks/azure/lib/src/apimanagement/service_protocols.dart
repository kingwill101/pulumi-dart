// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceProtocols {
  final pulumi.Input<bool>? enableHttp2;
  /// Should HTTP/2 be supported by the API Management Service? Defaults to `false`.
  final pulumi.Input<bool>? http2Enabled;

  /// Creates a new [ServiceProtocols].
  /// [enableHttp2] Optional.
  /// [http2Enabled] Should HTTP/2 be supported by the API Management Service? Defaults to `false`.
  ServiceProtocols({
    this.enableHttp2,
    this.http2Enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableHttp2': ?enableHttp2,
      'http2Enabled': ?http2Enabled,
    };
  }

  factory ServiceProtocols.fromMap(Map<String, dynamic> map) {
    return ServiceProtocols(
      enableHttp2: map['enableHttp2'] == null ? null : (map['enableHttp2']! as bool).input(),
      http2Enabled: map['http2Enabled'] == null ? null : (map['http2Enabled']! as bool).input(),
    );
  }
}

