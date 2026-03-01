// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStaticSiteLinkedBackendForBuild.
class GetStaticSiteLinkedBackendForBuildResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource id of the backend linked to the static site
  final String? backendResourceId;
  /// The date and time on which the backend was linked to the static site.
  final String createdOn;
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// The provisioning state of the linking process.
  final String provisioningState;
  /// The region of the backend linked to the static site
  final String? region;
  /// Resource type.
  final String type;

  /// Creates a new [GetStaticSiteLinkedBackendForBuildResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backendResourceId] The resource id of the backend linked to the static site
  /// [createdOn] The date and time on which the backend was linked to the static site.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [provisioningState] The provisioning state of the linking process.
  /// [region] The region of the backend linked to the static site
  /// [type] Resource type.
  GetStaticSiteLinkedBackendForBuildResult({
    required this.azureApiVersion,
    this.backendResourceId,
    required this.createdOn,
    required this.id,
    this.kind,
    required this.name,
    required this.provisioningState,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'backendResourceId': ?backendResourceId,
      'createdOn': createdOn,
      'id': id,
      'kind': ?kind,
      'name': name,
      'provisioningState': provisioningState,
      'region': ?region,
      'type': type,
    };
  }

  factory GetStaticSiteLinkedBackendForBuildResult.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteLinkedBackendForBuildResult(
      azureApiVersion: map['azureApiVersion'] as String,
      backendResourceId: map['backendResourceId'] == null ? null : map['backendResourceId'] as String,
      createdOn: map['createdOn'] as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      type: map['type'] as String,
    );
  }
}

