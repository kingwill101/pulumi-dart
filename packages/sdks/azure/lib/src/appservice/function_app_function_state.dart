// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_app_function_file.dart';

/// Input properties used for looking up and filtering FunctionAppFunction resources.
class FunctionAppFunctionState {
  /// The config for this Function in JSON format.
  final pulumi.Input<String>? configJson;
  /// The URL of the configuration JSON.
  final pulumi.Input<String>? configUrl;
  /// Should this function be enabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// A `file` block as detailed below. Changing this forces a new resource to be created.
  final pulumi.Input<List<FunctionAppFunctionFile>>? files;
  /// The ID of the Function App in which this function should reside. Changing this forces a new resource to be created.
  final pulumi.Input<String>? functionAppId;
  /// The invocation URL.
  final pulumi.Input<String>? invocationUrl;
  /// The language the Function is written in. Possible values are `CSharp`, `Custom`, `Java`, `Javascript`, `Python`, `PowerShell`, and `TypeScript`.
  ///
  /// > **Note:** when using `Custom` language, you must specify the code handler in the `host.json` file for your function. See the [official docs](https://docs.microsoft.com/azure/azure-functions/functions-custom-handlers#hostjson) for more information.
  final pulumi.Input<String>? language;
  /// The name of the function. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Script root path URL.
  final pulumi.Input<String>? scriptRootPathUrl;
  /// The script URL.
  final pulumi.Input<String>? scriptUrl;
  /// The URL for the Secrets File.
  final pulumi.Input<String>? secretsFileUrl;
  /// The test data for the function.
  final pulumi.Input<String>? testData;
  /// The Test data URL.
  final pulumi.Input<String>? testDataUrl;
  /// The function URL.
  final pulumi.Input<String>? url;

  /// Creates a new [FunctionAppFunctionState].
  /// [configJson] The config for this Function in JSON format.
  /// [configUrl] The URL of the configuration JSON.
  /// [enabled] Should this function be enabled. Defaults to `true`.
  /// [files] A `file` block as detailed below. Changing this forces a new resource to be created.
  /// [functionAppId] The ID of the Function App in which this function should reside. Changing this forces a new resource to be created.
  /// [invocationUrl] The invocation URL.
  /// [language] The language the Function is written in. Possible values are `CSharp`, `Custom`, `Java`, `Javascript`, `Python`, `PowerShell`, and `TypeScript`.
  /// [name] The name of the function. Changing this forces a new resource to be created.
  /// [scriptRootPathUrl] The Script root path URL.
  /// [scriptUrl] The script URL.
  /// [secretsFileUrl] The URL for the Secrets File.
  /// [testData] The test data for the function.
  /// [testDataUrl] The Test data URL.
  /// [url] The function URL.
  FunctionAppFunctionState({
    this.configJson,
    this.configUrl,
    this.enabled,
    this.files,
    this.functionAppId,
    this.invocationUrl,
    this.language,
    this.name,
    this.scriptRootPathUrl,
    this.scriptUrl,
    this.secretsFileUrl,
    this.testData,
    this.testDataUrl,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configJson': ?configJson,
      'configUrl': ?configUrl,
      'enabled': ?enabled,
      'files': ?pulumi.Input.mapOptionalInputValue<List<FunctionAppFunctionFile>, List<Map<String, dynamic>>>(files, (value) => pulumi.Input.encodeList<FunctionAppFunctionFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'functionAppId': ?functionAppId,
      'invocationUrl': ?invocationUrl,
      'language': ?language,
      'name': ?name,
      'scriptRootPathUrl': ?scriptRootPathUrl,
      'scriptUrl': ?scriptUrl,
      'secretsFileUrl': ?secretsFileUrl,
      'testData': ?testData,
      'testDataUrl': ?testDataUrl,
      'url': ?url,
    };
  }

  factory FunctionAppFunctionState.fromMap(Map<String, dynamic> map) {
    return FunctionAppFunctionState(
      configJson: map['configJson'] == null ? null : (map['configJson']! as String).input(),
      configUrl: map['configUrl'] == null ? null : (map['configUrl']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      files: map['files'] == null ? null : (pulumi.Input.decodeList<FunctionAppFunctionFile>(map['files']!, (value) => FunctionAppFunctionFile.fromMap((value as Map).cast<String, dynamic>()))).input(),
      functionAppId: map['functionAppId'] == null ? null : (map['functionAppId']! as String).input(),
      invocationUrl: map['invocationUrl'] == null ? null : (map['invocationUrl']! as String).input(),
      language: map['language'] == null ? null : (map['language']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      scriptRootPathUrl: map['scriptRootPathUrl'] == null ? null : (map['scriptRootPathUrl']! as String).input(),
      scriptUrl: map['scriptUrl'] == null ? null : (map['scriptUrl']! as String).input(),
      secretsFileUrl: map['secretsFileUrl'] == null ? null : (map['secretsFileUrl']! as String).input(),
      testData: map['testData'] == null ? null : (map['testData']! as String).input(),
      testDataUrl: map['testDataUrl'] == null ? null : (map['testDataUrl']! as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

