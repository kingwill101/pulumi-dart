// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebAppDeploymentSlot.
class GetWebAppDeploymentSlotResult {
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

  /// Creates a new [GetWebAppDeploymentSlotResult].
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
  GetWebAppDeploymentSlotResult({
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

  factory GetWebAppDeploymentSlotResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppDeploymentSlotResult(
      active: map['active'] == null ? null : map['active']! as bool,
      author: map['author'] == null ? null : map['author']! as String,
      authorEmail: map['authorEmail'] == null ? null : map['authorEmail']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      deployer: map['deployer'] == null ? null : map['deployer']! as String,
      details: map['details'] == null ? null : map['details']! as String,
      endTime: map['endTime'] == null ? null : map['endTime']! as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      message: map['message'] == null ? null : map['message']! as String,
      name: map['name'] as String,
      startTime: map['startTime'] == null ? null : map['startTime']! as String,
      status: map['status'] == null ? null : map['status']! as int,
      type: map['type'] as String,
    );
  }
}

