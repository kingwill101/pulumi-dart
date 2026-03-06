// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebAppDeployment.
class GetWebAppDeploymentResult {
  /// True if deployment is currently active, false if completed and null if not started.
  final bool? active;
  /// Who authored the deployment.
  final String? author;
  /// Author email.
  final String? authorEmail;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Who performed the deployment.
  final String? deployer;
  /// Details on deployment.
  final String? details;
  /// End time.
  final String? endTime;
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Details about deployment status.
  final String? message;
  /// Resource Name.
  final String name;
  /// Start time.
  final String? startTime;
  /// Deployment status.
  final int? status;
  /// Resource type.
  final String type;

  /// Creates a new [GetWebAppDeploymentResult].
  /// [active] True if deployment is currently active, false if completed and null if not started.
  /// [author] Who authored the deployment.
  /// [authorEmail] Author email.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deployer] Who performed the deployment.
  /// [details] Details on deployment.
  /// [endTime] End time.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [message] Details about deployment status.
  /// [name] Resource Name.
  /// [startTime] Start time.
  /// [status] Deployment status.
  /// [type] Resource type.
  const GetWebAppDeploymentResult({
    this.active,
    this.author,
    this.authorEmail,
    required this.azureApiVersion,
    this.deployer,
    this.details,
    this.endTime,
    required this.id,
    this.kind,
    this.message,
    required this.name,
    this.startTime,
    this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'author': ?author,
      'authorEmail': ?authorEmail,
      'azureApiVersion': azureApiVersion,
      'deployer': ?deployer,
      'details': ?details,
      'endTime': ?endTime,
      'id': id,
      'kind': ?kind,
      'message': ?message,
      'name': name,
      'startTime': ?startTime,
      'status': ?status,
      'type': type,
    };
  }

  factory GetWebAppDeploymentResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppDeploymentResult(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authorEmail: (() { final guardedValue = map['authorEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      deployer: (() { final guardedValue = map['deployer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as int; })(),
      type: map['type'] as String,
    );
  }
}

