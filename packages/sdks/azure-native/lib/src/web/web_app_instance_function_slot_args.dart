// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_web_app_instance_function_slot_args_doc}
/// The set of arguments for WebAppInstanceFunctionSlot.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_instance_function_slot_args_doc}
class WebAppInstanceFunctionSlotArgs {
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
  /// Name of the deployment slot.
  final pulumi.Input<String> slot;
  /// Test data used when testing via the Azure Portal.
  final pulumi.Input<String>? testData;
  /// Test data URI.
  final pulumi.Input<String>? testDataHref;

  /// Creates a new [WebAppInstanceFunctionSlotArgs].
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
  /// [slot] Name of the deployment slot.
  /// [testData] Test data used when testing via the Azure Portal.
  /// [testDataHref] Test data URI.
  WebAppInstanceFunctionSlotArgs({
    this.config,
    this.configHref,
    this.files,
    this.functionAppId,
    this.functionName,
    this.href,
    this.invokeUrlTemplate,
    this.isDisabled,
    this.kind,
    this.language,
    required this.name,
    required this.resourceGroupName,
    this.scriptHref,
    this.scriptRootPathHref,
    this.secretsFileHref,
    required this.slot,
    this.testData,
    this.testDataHref,
  });

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
      'slot': slot,
      'testData': ?testData,
      'testDataHref': ?testDataHref,
    };
  }

  factory WebAppInstanceFunctionSlotArgs.fromMap(Map<String, dynamic> map) {
    return WebAppInstanceFunctionSlotArgs(
      config: map['config'] == null ? null : (map['config']).input(),
      configHref: map['configHref'] == null ? null : (map['configHref'] as String).input(),
      files: map['files'] == null ? null : ((map['files'] as Map).cast<String, String>()).input(),
      functionAppId: map['functionAppId'] == null ? null : (map['functionAppId'] as String).input(),
      functionName: map['functionName'] == null ? null : (map['functionName'] as String).input(),
      href: map['href'] == null ? null : (map['href'] as String).input(),
      invokeUrlTemplate: map['invokeUrlTemplate'] == null ? null : (map['invokeUrlTemplate'] as String).input(),
      isDisabled: map['isDisabled'] == null ? null : (map['isDisabled'] as bool).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      language: map['language'] == null ? null : (map['language'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scriptHref: map['scriptHref'] == null ? null : (map['scriptHref'] as String).input(),
      scriptRootPathHref: map['scriptRootPathHref'] == null ? null : (map['scriptRootPathHref'] as String).input(),
      secretsFileHref: map['secretsFileHref'] == null ? null : (map['secretsFileHref'] as String).input(),
      slot: (map['slot'] as String).input(),
      testData: map['testData'] == null ? null : (map['testData'] as String).input(),
      testDataHref: map['testDataHref'] == null ? null : (map['testDataHref'] as String).input(),
    );
  }
}

