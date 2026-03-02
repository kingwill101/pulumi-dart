// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cpp_settings_response.dart';
import 'dotnet_settings_response.dart';
import 'go_settings_response.dart';
import 'java_settings_response.dart';
import 'node_settings_response.dart';
import 'php_settings_response.dart';
import 'python_settings_response.dart';
import 'ruby_settings_response.dart';

/// Details about how and where to publish client libraries.
class ClientLibrarySettingsResponse {
  /// Settings for C++ client libraries.
  final pulumi.Input<CppSettingsResponse> cppSettings;
  /// Settings for .NET client libraries.
  final pulumi.Input<DotnetSettingsResponse> dotnetSettings;
  /// Settings for Go client libraries.
  final pulumi.Input<GoSettingsResponse> goSettings;
  /// Settings for legacy Java features, supported in the Service YAML.
  final pulumi.Input<JavaSettingsResponse> javaSettings;
  /// Launch stage of this version of the API.
  final pulumi.Input<String> launchStage;
  /// Settings for Node client libraries.
  final pulumi.Input<NodeSettingsResponse> nodeSettings;
  /// Settings for PHP client libraries.
  final pulumi.Input<PhpSettingsResponse> phpSettings;
  /// Settings for Python client libraries.
  final pulumi.Input<PythonSettingsResponse> pythonSettings;
  /// When using transport=rest, the client request will encode enums as numbers rather than strings.
  final pulumi.Input<bool> restNumericEnums;
  /// Settings for Ruby client libraries.
  final pulumi.Input<RubySettingsResponse> rubySettings;
  /// Version of the API to apply these settings to. This is the full protobuf package for the API, ending in the version element. Examples: "google.cloud.speech.v1" and "google.spanner.admin.database.v1".
  final pulumi.Input<String> version;

  /// Creates a new [ClientLibrarySettingsResponse].
  /// [cppSettings] Settings for C++ client libraries.
  /// [dotnetSettings] Settings for .NET client libraries.
  /// [goSettings] Settings for Go client libraries.
  /// [javaSettings] Settings for legacy Java features, supported in the Service YAML.
  /// [launchStage] Launch stage of this version of the API.
  /// [nodeSettings] Settings for Node client libraries.
  /// [phpSettings] Settings for PHP client libraries.
  /// [pythonSettings] Settings for Python client libraries.
  /// [restNumericEnums] When using transport=rest, the client request will encode enums as numbers rather than strings.
  /// [rubySettings] Settings for Ruby client libraries.
  /// [version] Version of the API to apply these settings to. This is the full protobuf package for the API, ending in the version element. Examples: "google.cloud.speech.v1" and "google.spanner.admin.database.v1".
  ClientLibrarySettingsResponse({
    required this.cppSettings,
    required this.dotnetSettings,
    required this.goSettings,
    required this.javaSettings,
    required this.launchStage,
    required this.nodeSettings,
    required this.phpSettings,
    required this.pythonSettings,
    required this.restNumericEnums,
    required this.rubySettings,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cppSettings': pulumi.Input.mapInputValue<CppSettingsResponse, Map<String, dynamic>>(cppSettings, (value) => value.toMap()),
      'dotnetSettings': pulumi.Input.mapInputValue<DotnetSettingsResponse, Map<String, dynamic>>(dotnetSettings, (value) => value.toMap()),
      'goSettings': pulumi.Input.mapInputValue<GoSettingsResponse, Map<String, dynamic>>(goSettings, (value) => value.toMap()),
      'javaSettings': pulumi.Input.mapInputValue<JavaSettingsResponse, Map<String, dynamic>>(javaSettings, (value) => value.toMap()),
      'launchStage': launchStage,
      'nodeSettings': pulumi.Input.mapInputValue<NodeSettingsResponse, Map<String, dynamic>>(nodeSettings, (value) => value.toMap()),
      'phpSettings': pulumi.Input.mapInputValue<PhpSettingsResponse, Map<String, dynamic>>(phpSettings, (value) => value.toMap()),
      'pythonSettings': pulumi.Input.mapInputValue<PythonSettingsResponse, Map<String, dynamic>>(pythonSettings, (value) => value.toMap()),
      'restNumericEnums': restNumericEnums,
      'rubySettings': pulumi.Input.mapInputValue<RubySettingsResponse, Map<String, dynamic>>(rubySettings, (value) => value.toMap()),
      'version': version,
    };
  }

  factory ClientLibrarySettingsResponse.fromMap(Map<String, dynamic> map) {
    return ClientLibrarySettingsResponse(
      cppSettings: (CppSettingsResponse.fromMap((map['cppSettings'] as Map).cast<String, dynamic>())).input(),
      dotnetSettings: (DotnetSettingsResponse.fromMap((map['dotnetSettings'] as Map).cast<String, dynamic>())).input(),
      goSettings: (GoSettingsResponse.fromMap((map['goSettings'] as Map).cast<String, dynamic>())).input(),
      javaSettings: (JavaSettingsResponse.fromMap((map['javaSettings'] as Map).cast<String, dynamic>())).input(),
      launchStage: (map['launchStage'] as String).input(),
      nodeSettings: (NodeSettingsResponse.fromMap((map['nodeSettings'] as Map).cast<String, dynamic>())).input(),
      phpSettings: (PhpSettingsResponse.fromMap((map['phpSettings'] as Map).cast<String, dynamic>())).input(),
      pythonSettings: (PythonSettingsResponse.fromMap((map['pythonSettings'] as Map).cast<String, dynamic>())).input(),
      restNumericEnums: (map['restNumericEnums'] as bool).input(),
      rubySettings: (RubySettingsResponse.fromMap((map['rubySettings'] as Map).cast<String, dynamic>())).input(),
      version: (map['version'] as String).input(),
    );
  }
}

