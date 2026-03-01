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
    pulumi.Output<String>? configJson,
    pulumi.Output<String>? configUrl,
    pulumi.Output<bool>? enabled,
    pulumi.Output<List<FunctionAppFunctionFile>>? files,
    pulumi.Output<String>? functionAppId,
    pulumi.Output<String>? invocationUrl,
    pulumi.Output<String>? language,
    pulumi.Output<String>? name,
    pulumi.Output<String>? scriptRootPathUrl,
    pulumi.Output<String>? scriptUrl,
    pulumi.Output<String>? secretsFileUrl,
    pulumi.Output<String>? testData,
    pulumi.Output<String>? testDataUrl,
    pulumi.Output<String>? url,
  }) :
      configJson = pulumi.Input.asOptionalInput<String>(configJson),
      configUrl = pulumi.Input.asOptionalInput<String>(configUrl),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      files = pulumi.Input.asOptionalInput<List<FunctionAppFunctionFile>>(files),
      functionAppId = pulumi.Input.asOptionalInput<String>(functionAppId),
      invocationUrl = pulumi.Input.asOptionalInput<String>(invocationUrl),
      language = pulumi.Input.asOptionalInput<String>(language),
      name = pulumi.Input.asOptionalInput<String>(name),
      scriptRootPathUrl = pulumi.Input.asOptionalInput<String>(scriptRootPathUrl),
      scriptUrl = pulumi.Input.asOptionalInput<String>(scriptUrl),
      secretsFileUrl = pulumi.Input.asOptionalInput<String>(secretsFileUrl),
      testData = pulumi.Input.asOptionalInput<String>(testData),
      testDataUrl = pulumi.Input.asOptionalInput<String>(testDataUrl),
      url = pulumi.Input.asOptionalInput<String>(url);

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
      configJson: map['configJson'] == null ? null : pulumi.Output.create<String>(map['configJson'] as String),
      configUrl: map['configUrl'] == null ? null : pulumi.Output.create<String>(map['configUrl'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      files: map['files'] == null ? null : pulumi.Output.create<List<FunctionAppFunctionFile>>(pulumi.Input.decodeList<FunctionAppFunctionFile>(map['files'], (value) => FunctionAppFunctionFile.fromMap((value as Map).cast<String, dynamic>()))),
      functionAppId: map['functionAppId'] == null ? null : pulumi.Output.create<String>(map['functionAppId'] as String),
      invocationUrl: map['invocationUrl'] == null ? null : pulumi.Output.create<String>(map['invocationUrl'] as String),
      language: map['language'] == null ? null : pulumi.Output.create<String>(map['language'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      scriptRootPathUrl: map['scriptRootPathUrl'] == null ? null : pulumi.Output.create<String>(map['scriptRootPathUrl'] as String),
      scriptUrl: map['scriptUrl'] == null ? null : pulumi.Output.create<String>(map['scriptUrl'] as String),
      secretsFileUrl: map['secretsFileUrl'] == null ? null : pulumi.Output.create<String>(map['secretsFileUrl'] as String),
      testData: map['testData'] == null ? null : pulumi.Output.create<String>(map['testData'] as String),
      testDataUrl: map['testDataUrl'] == null ? null : pulumi.Output.create<String>(map['testDataUrl'] as String),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

