// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_library_settings_launch_stage.dart';
import 'cpp_settings.dart';
import 'dotnet_settings.dart';
import 'go_settings.dart';
import 'java_settings.dart';
import 'node_settings.dart';
import 'php_settings.dart';
import 'python_settings.dart';
import 'ruby_settings.dart';

/// Details about how and where to publish client libraries.
class ClientLibrarySettings {
  /// Settings for C++ client libraries.
  final pulumi.Input<CppSettings>? cppSettings;
  /// Settings for .NET client libraries.
  final pulumi.Input<DotnetSettings>? dotnetSettings;
  /// Settings for Go client libraries.
  final pulumi.Input<GoSettings>? goSettings;
  /// Settings for legacy Java features, supported in the Service YAML.
  final pulumi.Input<JavaSettings>? javaSettings;
  /// Launch stage of this version of the API.
  final pulumi.Input<ClientLibrarySettingsLaunchStage>? launchStage;
  /// Settings for Node client libraries.
  final pulumi.Input<NodeSettings>? nodeSettings;
  /// Settings for PHP client libraries.
  final pulumi.Input<PhpSettings>? phpSettings;
  /// Settings for Python client libraries.
  final pulumi.Input<PythonSettings>? pythonSettings;
  /// When using transport=rest, the client request will encode enums as numbers rather than strings.
  final pulumi.Input<bool>? restNumericEnums;
  /// Settings for Ruby client libraries.
  final pulumi.Input<RubySettings>? rubySettings;
  /// Version of the API to apply these settings to. This is the full protobuf package for the API, ending in the version element. Examples: "google.cloud.speech.v1" and "google.spanner.admin.database.v1".
  final pulumi.Input<String>? version;

  /// Creates a new [ClientLibrarySettings].
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
  ClientLibrarySettings({
    this.cppSettings,
    this.dotnetSettings,
    this.goSettings,
    this.javaSettings,
    this.launchStage,
    this.nodeSettings,
    this.phpSettings,
    this.pythonSettings,
    this.restNumericEnums,
    this.rubySettings,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cppSettings': ?pulumi.Input.mapOptionalInputValue<CppSettings, Map<String, dynamic>>(cppSettings, (value) => value.toMap()),
      'dotnetSettings': ?pulumi.Input.mapOptionalInputValue<DotnetSettings, Map<String, dynamic>>(dotnetSettings, (value) => value.toMap()),
      'goSettings': ?pulumi.Input.mapOptionalInputValue<GoSettings, Map<String, dynamic>>(goSettings, (value) => value.toMap()),
      'javaSettings': ?pulumi.Input.mapOptionalInputValue<JavaSettings, Map<String, dynamic>>(javaSettings, (value) => value.toMap()),
      'launchStage': ?pulumi.Input.mapOptionalInputValue<ClientLibrarySettingsLaunchStage, String>(launchStage, (value) => value.value),
      'nodeSettings': ?pulumi.Input.mapOptionalInputValue<NodeSettings, Map<String, dynamic>>(nodeSettings, (value) => value.toMap()),
      'phpSettings': ?pulumi.Input.mapOptionalInputValue<PhpSettings, Map<String, dynamic>>(phpSettings, (value) => value.toMap()),
      'pythonSettings': ?pulumi.Input.mapOptionalInputValue<PythonSettings, Map<String, dynamic>>(pythonSettings, (value) => value.toMap()),
      'restNumericEnums': ?restNumericEnums,
      'rubySettings': ?pulumi.Input.mapOptionalInputValue<RubySettings, Map<String, dynamic>>(rubySettings, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory ClientLibrarySettings.fromMap(Map<String, dynamic> map) {
    return ClientLibrarySettings(
      cppSettings: map['cppSettings'] == null ? null : (CppSettings.fromMap((map['cppSettings'] as Map).cast<String, dynamic>())).input(),
      dotnetSettings: map['dotnetSettings'] == null ? null : (DotnetSettings.fromMap((map['dotnetSettings'] as Map).cast<String, dynamic>())).input(),
      goSettings: map['goSettings'] == null ? null : (GoSettings.fromMap((map['goSettings'] as Map).cast<String, dynamic>())).input(),
      javaSettings: map['javaSettings'] == null ? null : (JavaSettings.fromMap((map['javaSettings'] as Map).cast<String, dynamic>())).input(),
      launchStage: map['launchStage'] == null ? null : (ClientLibrarySettingsLaunchStage.fromValue(map['launchStage'] as String)).input(),
      nodeSettings: map['nodeSettings'] == null ? null : (NodeSettings.fromMap((map['nodeSettings'] as Map).cast<String, dynamic>())).input(),
      phpSettings: map['phpSettings'] == null ? null : (PhpSettings.fromMap((map['phpSettings'] as Map).cast<String, dynamic>())).input(),
      pythonSettings: map['pythonSettings'] == null ? null : (PythonSettings.fromMap((map['pythonSettings'] as Map).cast<String, dynamic>())).input(),
      restNumericEnums: map['restNumericEnums'] == null ? null : (map['restNumericEnums'] as bool).input(),
      rubySettings: map['rubySettings'] == null ? null : (RubySettings.fromMap((map['rubySettings'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

