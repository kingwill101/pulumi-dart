// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStaticSiteUserProvidedFunctionAppForStaticSiteBuild.
class GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The date and time on which the function app was registered with the static site.
  final String createdOn;
  /// The region of the function app registered with the static site
  final String? functionAppRegion;
  /// The resource id of the function app registered with the static site
  final String? functionAppResourceId;
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// Resource type.
  final String type;

  /// Creates a new [GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdOn] The date and time on which the function app was registered with the static site.
  /// [functionAppRegion] The region of the function app registered with the static site
  /// [functionAppResourceId] The resource id of the function app registered with the static site
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [type] Resource type.
  GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildResult({
    required this.azureApiVersion,
    required this.createdOn,
    this.functionAppRegion,
    this.functionAppResourceId,
    required this.id,
    this.kind,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdOn': createdOn,
      'functionAppRegion': ?functionAppRegion,
      'functionAppResourceId': ?functionAppResourceId,
      'id': id,
      'kind': ?kind,
      'name': name,
      'type': type,
    };
  }

  factory GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildResult.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteUserProvidedFunctionAppForStaticSiteBuildResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdOn: map['createdOn'] as String,
      functionAppRegion: map['functionAppRegion'] == null ? null : map['functionAppRegion']! as String,
      functionAppResourceId: map['functionAppResourceId'] == null ? null : map['functionAppResourceId']! as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

