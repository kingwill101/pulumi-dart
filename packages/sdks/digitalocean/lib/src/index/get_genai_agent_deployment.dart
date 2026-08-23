// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentDeployment {
  /// API Key value
  final pulumi.Input<String> createdAt;
  /// Name of the API Key
  final pulumi.Input<String>? name;
  /// Status of the Deployment
  final pulumi.Input<String>? status;
  /// Updated At timestamp for the Agent
  final pulumi.Input<String> updatedAt;
  /// Url of the Deployment
  final pulumi.Input<String>? url;
  /// API Key value
  final pulumi.Input<String>? uuid;
  /// Visibility of the Deployment
  final pulumi.Input<String>? visibility;

  /// Creates a new [GetGenaiAgentDeployment].
  /// [createdAt] API Key value
  /// [name] Name of the API Key
  /// [status] Status of the Deployment
  /// [updatedAt] Updated At timestamp for the Agent
  /// [url] Url of the Deployment
  /// [uuid] API Key value
  /// [visibility] Visibility of the Deployment
  const GetGenaiAgentDeployment({
    required this.createdAt,
    this.name,
    this.status,
    required this.updatedAt,
    this.url,
    this.uuid,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'name': ?name,
      'status': ?status,
      'updatedAt': updatedAt,
      'url': ?url,
      'uuid': ?uuid,
      'visibility': ?visibility,
    };
  }

  factory GetGenaiAgentDeployment.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentDeployment(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
