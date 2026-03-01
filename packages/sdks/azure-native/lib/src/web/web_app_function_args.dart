// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_function_args_doc}
/// The set of arguments for WebAppFunction.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_function_args_doc}
class WebAppFunctionArgs {
  /// Config information.
  final pulumi.Input<dynamic>? config;
  /// Config URI.
  final pulumi.Input<String>? configHref;
  /// File list.
  final pulumi.Input<Map<String, String>>? files;
  /// Function App ID.
  final pulumi.Input<String>? functionAppId;
  /// Function name.
  final pulumi.Input<String>? functionName;
  /// Function URI.
  final pulumi.Input<String>? href;
  /// The invocation URL
  final pulumi.Input<String>? invokeUrlTemplate;
  /// Gets or sets a value indicating whether the function is disabled
  final pulumi.Input<bool>? isDisabled;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// The function language
  final pulumi.Input<String>? language;
  /// Site name.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Script URI.
  final pulumi.Input<String>? scriptHref;
  /// Script root path URI.
  final pulumi.Input<String>? scriptRootPathHref;
  /// Secrets file URI.
  final pulumi.Input<String>? secretsFileHref;
  /// Test data used when testing via the Azure Portal.
  final pulumi.Input<String>? testData;
  /// Test data URI.
  final pulumi.Input<String>? testDataHref;

  /// Creates a new [WebAppFunctionArgs].
  /// [config] Config information.
  /// [configHref] Config URI.
  /// [files] File list.
  /// [functionAppId] Function App ID.
  /// [functionName] Function name.
  /// [href] Function URI.
  /// [invokeUrlTemplate] The invocation URL
  /// [isDisabled] Gets or sets a value indicating whether the function is disabled
  /// [kind] Kind of resource.
  /// [language] The function language
  /// [name] Site name.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [scriptHref] Script URI.
  /// [scriptRootPathHref] Script root path URI.
  /// [secretsFileHref] Secrets file URI.
  /// [testData] Test data used when testing via the Azure Portal.
  /// [testDataHref] Test data URI.
  WebAppFunctionArgs({
    pulumi.Output<dynamic>? config,
    pulumi.Output<String>? configHref,
    pulumi.Output<Map<String, String>>? files,
    pulumi.Output<String>? functionAppId,
    pulumi.Output<String>? functionName,
    pulumi.Output<String>? href,
    pulumi.Output<String>? invokeUrlTemplate,
    pulumi.Output<bool>? isDisabled,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? language,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? scriptHref,
    pulumi.Output<String>? scriptRootPathHref,
    pulumi.Output<String>? secretsFileHref,
    pulumi.Output<String>? testData,
    pulumi.Output<String>? testDataHref,
  }) :
      config = pulumi.Input.asOptionalInput<dynamic>(config),
      configHref = pulumi.Input.asOptionalInput<String>(configHref),
      files = pulumi.Input.asOptionalInput<Map<String, String>>(files),
      functionAppId = pulumi.Input.asOptionalInput<String>(functionAppId),
      functionName = pulumi.Input.asOptionalInput<String>(functionName),
      href = pulumi.Input.asOptionalInput<String>(href),
      invokeUrlTemplate = pulumi.Input.asOptionalInput<String>(invokeUrlTemplate),
      isDisabled = pulumi.Input.asOptionalInput<bool>(isDisabled),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      language = pulumi.Input.asOptionalInput<String>(language),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scriptHref = pulumi.Input.asOptionalInput<String>(scriptHref),
      scriptRootPathHref = pulumi.Input.asOptionalInput<String>(scriptRootPathHref),
      secretsFileHref = pulumi.Input.asOptionalInput<String>(secretsFileHref),
      testData = pulumi.Input.asOptionalInput<String>(testData),
      testDataHref = pulumi.Input.asOptionalInput<String>(testDataHref);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'configHref': ?configHref,
      'files': ?files,
      'functionAppId': ?functionAppId,
      'functionName': ?functionName,
      'href': ?href,
      'invokeUrlTemplate': ?invokeUrlTemplate,
      'isDisabled': ?isDisabled,
      'kind': ?kind,
      'language': ?language,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'scriptHref': ?scriptHref,
      'scriptRootPathHref': ?scriptRootPathHref,
      'secretsFileHref': ?secretsFileHref,
      'testData': ?testData,
      'testDataHref': ?testDataHref,
    };
  }

  factory WebAppFunctionArgs.fromMap(Map<String, dynamic> map) {
    return WebAppFunctionArgs(
      config: map['config'] == null ? null : pulumi.Output.create<dynamic>(map['config']),
      configHref: map['configHref'] == null ? null : pulumi.Output.create<String>(map['configHref'] as String),
      files: map['files'] == null ? null : pulumi.Output.create<Map<String, String>>((map['files'] as Map).cast<String, String>()),
      functionAppId: map['functionAppId'] == null ? null : pulumi.Output.create<String>(map['functionAppId'] as String),
      functionName: map['functionName'] == null ? null : pulumi.Output.create<String>(map['functionName'] as String),
      href: map['href'] == null ? null : pulumi.Output.create<String>(map['href'] as String),
      invokeUrlTemplate: map['invokeUrlTemplate'] == null ? null : pulumi.Output.create<String>(map['invokeUrlTemplate'] as String),
      isDisabled: map['isDisabled'] == null ? null : pulumi.Output.create<bool>(map['isDisabled'] as bool),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      language: map['language'] == null ? null : pulumi.Output.create<String>(map['language'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scriptHref: map['scriptHref'] == null ? null : pulumi.Output.create<String>(map['scriptHref'] as String),
      scriptRootPathHref: map['scriptRootPathHref'] == null ? null : pulumi.Output.create<String>(map['scriptRootPathHref'] as String),
      secretsFileHref: map['secretsFileHref'] == null ? null : pulumi.Output.create<String>(map['secretsFileHref'] as String),
      testData: map['testData'] == null ? null : pulumi.Output.create<String>(map['testData'] as String),
      testDataHref: map['testDataHref'] == null ? null : pulumi.Output.create<String>(map['testDataHref'] as String),
    );
  }
}

