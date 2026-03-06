// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppDapr {
  /// The Dapr Application Identifier.
  final pulumi.Input<String> appId;
  /// The port which the application is listening on. This is the same as the `ingress` port.
  final pulumi.Input<int>? appPort;
  /// The protocol for the app. Possible values include `http` and `grpc`. Defaults to `http`.
  final pulumi.Input<String>? appProtocol;

  /// Creates a new [AppDapr].
  /// [appId] The Dapr Application Identifier.
  /// [appPort] The port which the application is listening on. This is the same as the `ingress` port.
  /// [appProtocol] The protocol for the app. Possible values include `http` and `grpc`. Defaults to `http`.
  const AppDapr({
    required this.appId,
    this.appPort,
    this.appProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appPort': ?appPort,
      'appProtocol': ?appProtocol,
    };
  }

  factory AppDapr.fromMap(Map<String, dynamic> map) {
    return AppDapr(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      appPort: (() { final guardedValue = map['appPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      appProtocol: (() { final guardedValue = map['appProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

