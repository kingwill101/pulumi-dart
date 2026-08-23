// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppDapr {
  /// The Dapr Application Identifier.
  final pulumi.Input<String> appId;
  /// The port which the application is listening on. This is the same as the `ingress` port.
  final pulumi.Input<int> appPort;
  /// The protocol for the app.
  final pulumi.Input<String> appProtocol;

  /// Creates a new [GetAppDapr].
  /// [appId] The Dapr Application Identifier.
  /// [appPort] The port which the application is listening on. This is the same as the `ingress` port.
  /// [appProtocol] The protocol for the app.
  const GetAppDapr({
    required this.appId,
    required this.appPort,
    required this.appProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appPort': appPort,
      'appProtocol': appProtocol,
    };
  }

  factory GetAppDapr.fromMap(Map<String, dynamic> map) {
    return GetAppDapr(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      appPort: pulumi.Input.fromValue(map['appPort'] as int),
      appProtocol: pulumi.Input.fromValue(map['appProtocol'] as String),
    );
  }
}
