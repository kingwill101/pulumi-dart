// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig {
  /// If set to true, customers will use private service connection to send request. Otherwise, the connection will set to public endpoint.
  final pulumi.Input<bool> enablePrivateServiceConnect;

  /// A list of Projects from which the forwarding rule will target the service attachment.
  final pulumi.Input<List<String>>? projectAllowlists;

  /// Creates a new [AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig].
  /// [enablePrivateServiceConnect] If set to true, customers will use private service connection to send request. Otherwise, the connection will set to public endpoint.
  /// [projectAllowlists] A list of Projects from which the forwarding rule will target the service attachment.
  AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig({
    required this.enablePrivateServiceConnect,
    this.projectAllowlists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePrivateServiceConnect': enablePrivateServiceConnect,
      'projectAllowlists': ?projectAllowlists,
    };
  }

  factory AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiFeatureOnlineStoreDedicatedServingEndpointPrivateServiceConnectConfig(
      enablePrivateServiceConnect: pulumi.Input.fromValue(
        map['enablePrivateServiceConnect'] as bool,
      ),
      projectAllowlists: (() {
        final guardedValue = map['projectAllowlists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
