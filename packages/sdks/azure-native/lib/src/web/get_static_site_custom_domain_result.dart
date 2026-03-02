// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStaticSiteCustomDomain.
class GetStaticSiteCustomDomainResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The date and time on which the custom domain was created for the static site.
  final String createdOn;
  /// The domain name for the static site custom domain.
  final String domainName;
  final String errorMessage;
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  /// The status of the custom domain
  final String status;
  /// Resource type.
  final String type;
  /// The TXT record validation token
  final String validationToken;

  /// Creates a new [GetStaticSiteCustomDomainResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdOn] The date and time on which the custom domain was created for the static site.
  /// [domainName] The domain name for the static site custom domain.
  /// [errorMessage] Required.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [status] The status of the custom domain
  /// [type] Resource type.
  /// [validationToken] The TXT record validation token
  GetStaticSiteCustomDomainResult({
    required this.azureApiVersion,
    required this.createdOn,
    required this.domainName,
    required this.errorMessage,
    required this.id,
    this.kind,
    required this.name,
    required this.status,
    required this.type,
    required this.validationToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdOn': createdOn,
      'domainName': domainName,
      'errorMessage': errorMessage,
      'id': id,
      'kind': ?kind,
      'name': name,
      'status': status,
      'type': type,
      'validationToken': validationToken,
    };
  }

  factory GetStaticSiteCustomDomainResult.fromMap(Map<String, dynamic> map) {
    return GetStaticSiteCustomDomainResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdOn: map['createdOn'] as String,
      domainName: map['domainName'] as String,
      errorMessage: map['errorMessage'] as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      name: map['name'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
      validationToken: map['validationToken'] as String,
    );
  }
}

