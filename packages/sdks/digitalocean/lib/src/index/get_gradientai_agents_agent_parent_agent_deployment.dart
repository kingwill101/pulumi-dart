// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiAgentsAgentParentAgentDeployment {
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

  /// Creates a new [GetGradientaiAgentsAgentParentAgentDeployment].
  /// [createdAt] API Key value
  /// [name] Name of the API Key
  /// [status] Status of the Deployment
  /// [updatedAt] Updated At timestamp for the Agent
  /// [url] Url of the Deployment
  /// [uuid] API Key value
  /// [visibility] Visibility of the Deployment
  GetGradientaiAgentsAgentParentAgentDeployment({
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

  factory GetGradientaiAgentsAgentParentAgentDeployment.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsAgentParentAgentDeployment(
      createdAt: (map['createdAt'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      updatedAt: (map['updatedAt'] as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid']! as String).input(),
      visibility: map['visibility'] == null ? null : (map['visibility']! as String).input(),
    );
  }
}

