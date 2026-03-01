// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentsByOpenaiApiKeyAgentDeployment {
  /// API Key value
  final String createdAt;
  /// Name of the API Key
  final String? name;
  /// Status of the Deployment
  final String? status;
  /// Updated At timestamp for the Agent
  final String updatedAt;
  /// Url of the Deployment
  final String? url;
  /// API Key value
  final String? uuid;
  /// Visibility of the Deployment
  final String? visibility;

  /// Creates a new [GetGradientaiAgentsByOpenaiApiKeyAgentDeployment].
  /// [createdAt] API Key value
  /// [name] Name of the API Key
  /// [status] Status of the Deployment
  /// [updatedAt] Updated At timestamp for the Agent
  /// [url] Url of the Deployment
  /// [uuid] API Key value
  /// [visibility] Visibility of the Deployment
  GetGradientaiAgentsByOpenaiApiKeyAgentDeployment({
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

  factory GetGradientaiAgentsByOpenaiApiKeyAgentDeployment.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentsByOpenaiApiKeyAgentDeployment(
      createdAt: map['createdAt'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      updatedAt: map['updatedAt'] as String,
      url: map['url'] == null ? null : map['url'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
      visibility: map['visibility'] == null ? null : map['visibility'] as String,
    );
  }
}

