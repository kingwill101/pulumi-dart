// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebAppInstanceFunctionSlot.
class GetWebAppInstanceFunctionSlotResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Config information.
  final dynamic config;
  /// Config URI.
  final String? configHref;
  /// File list.
  final Map<String, String>? files;
  /// Function App ID.
  final String? functionAppId;
  /// Function URI.
  final String? href;
  /// Resource Id.
  final String id;
  /// The invocation URL
  final String? invokeUrlTemplate;
  /// Gets or sets a value indicating whether the function is disabled
  final bool? isDisabled;
  /// Kind of resource.
  final String? kind;
  /// The function language
  final String? language;
  /// Resource Name.
  final String name;
  /// Script URI.
  final String? scriptHref;
  /// Script root path URI.
  final String? scriptRootPathHref;
  /// Secrets file URI.
  final String? secretsFileHref;
  /// Test data used when testing via the Azure Portal.
  final String? testData;
  /// Test data URI.
  final String? testDataHref;
  /// Resource type.
  final String type;

  /// Creates a new [GetWebAppInstanceFunctionSlotResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [config] Config information.
  /// [configHref] Config URI.
  /// [files] File list.
  /// [functionAppId] Function App ID.
  /// [href] Function URI.
  /// [id] Resource Id.
  /// [invokeUrlTemplate] The invocation URL
  /// [isDisabled] Gets or sets a value indicating whether the function is disabled
  /// [kind] Kind of resource.
  /// [language] The function language
  /// [name] Resource Name.
  /// [scriptHref] Script URI.
  /// [scriptRootPathHref] Script root path URI.
  /// [secretsFileHref] Secrets file URI.
  /// [testData] Test data used when testing via the Azure Portal.
  /// [testDataHref] Test data URI.
  /// [type] Resource type.
  GetWebAppInstanceFunctionSlotResult({
    required this.azureApiVersion,
    this.config,
    this.configHref,
    this.files,
    this.functionAppId,
    this.href,
    required this.id,
    this.invokeUrlTemplate,
    this.isDisabled,
    this.kind,
    this.language,
    required this.name,
    this.scriptHref,
    this.scriptRootPathHref,
    this.secretsFileHref,
    this.testData,
    this.testDataHref,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'config': ?config,
      'configHref': ?configHref,
      'files': ?files,
      'functionAppId': ?functionAppId,
      'href': ?href,
      'id': id,
      'invokeUrlTemplate': ?invokeUrlTemplate,
      'isDisabled': ?isDisabled,
      'kind': ?kind,
      'language': ?language,
      'name': name,
      'scriptHref': ?scriptHref,
      'scriptRootPathHref': ?scriptRootPathHref,
      'secretsFileHref': ?secretsFileHref,
      'testData': ?testData,
      'testDataHref': ?testDataHref,
      'type': type,
    };
  }

  factory GetWebAppInstanceFunctionSlotResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppInstanceFunctionSlotResult(
      azureApiVersion: map['azureApiVersion'] as String,
      config: map['config'] == null ? null : map['config']!,
      configHref: map['configHref'] == null ? null : map['configHref']! as String,
      files: map['files'] == null ? null : (map['files']! as Map).cast<String, String>(),
      functionAppId: map['functionAppId'] == null ? null : map['functionAppId']! as String,
      href: map['href'] == null ? null : map['href']! as String,
      id: map['id'] as String,
      invokeUrlTemplate: map['invokeUrlTemplate'] == null ? null : map['invokeUrlTemplate']! as String,
      isDisabled: map['isDisabled'] == null ? null : map['isDisabled']! as bool,
      kind: map['kind'] == null ? null : map['kind']! as String,
      language: map['language'] == null ? null : map['language']! as String,
      name: map['name'] as String,
      scriptHref: map['scriptHref'] == null ? null : map['scriptHref']! as String,
      scriptRootPathHref: map['scriptRootPathHref'] == null ? null : map['scriptRootPathHref']! as String,
      secretsFileHref: map['secretsFileHref'] == null ? null : map['secretsFileHref']! as String,
      testData: map['testData'] == null ? null : map['testData']! as String,
      testDataHref: map['testDataHref'] == null ? null : map['testDataHref']! as String,
      type: map['type'] as String,
    );
  }
}

