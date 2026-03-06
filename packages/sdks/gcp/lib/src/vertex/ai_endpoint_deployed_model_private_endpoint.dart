// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEndpointDeployedModelPrivateEndpoint {
  /// (Output)
  /// Output only. Http(s) path to send explain requests.
  final pulumi.Input<String>? explainHttpUri;
  /// (Output)
  /// Output only. Http(s) path to send health check requests.
  final pulumi.Input<String>? healthHttpUri;
  /// (Output)
  /// Output only. Http(s) path to send prediction requests.
  final pulumi.Input<String>? predictHttpUri;
  /// (Output)
  /// Output only. The name of the service attachment resource. Populated if private service connect is enabled.
  final pulumi.Input<String>? serviceAttachment;

  /// Creates a new [AiEndpointDeployedModelPrivateEndpoint].
  /// [explainHttpUri] (Output)
  /// [healthHttpUri] (Output)
  /// [predictHttpUri] (Output)
  /// [serviceAttachment] (Output)
  const AiEndpointDeployedModelPrivateEndpoint({
    this.explainHttpUri,
    this.healthHttpUri,
    this.predictHttpUri,
    this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'explainHttpUri': ?explainHttpUri,
      'healthHttpUri': ?healthHttpUri,
      'predictHttpUri': ?predictHttpUri,
      'serviceAttachment': ?serviceAttachment,
    };
  }

  factory AiEndpointDeployedModelPrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return AiEndpointDeployedModelPrivateEndpoint(
      explainHttpUri: (() { final guardedValue = map['explainHttpUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthHttpUri: (() { final guardedValue = map['healthHttpUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      predictHttpUri: (() { final guardedValue = map['predictHttpUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAttachment: (() { final guardedValue = map['serviceAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

