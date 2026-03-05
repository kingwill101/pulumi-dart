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
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      configHref: (() { final guardedValue = map['configHref']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      files: (() { final guardedValue = map['files']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      functionAppId: (() { final guardedValue = map['functionAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionName: (() { final guardedValue = map['functionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      href: (() { final guardedValue = map['href']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invokeUrlTemplate: (() { final guardedValue = map['invokeUrlTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDisabled: (() { final guardedValue = map['isDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scriptHref: (() { final guardedValue = map['scriptHref']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptRootPathHref: (() { final guardedValue = map['scriptRootPathHref']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretsFileHref: (() { final guardedValue = map['secretsFileHref']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slot: pulumi.Input.fromValue(map['slot'] as String),
      testData: (() { final guardedValue = map['testData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testDataHref: (() { final guardedValue = map['testDataHref']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

