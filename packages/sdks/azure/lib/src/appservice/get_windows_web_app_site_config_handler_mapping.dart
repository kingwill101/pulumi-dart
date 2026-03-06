// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsWebAppSiteConfigHandlerMapping {
  /// The command-line arguments to be passed to the script processor.
  final pulumi.Input<String> arguments;
  /// The extension to be handled by the specified FastCGI application.
  final pulumi.Input<String> extension;
  /// The absolute path to the FastCGI application.
  final pulumi.Input<String> scriptProcessorPath;

  /// Creates a new [GetWindowsWebAppSiteConfigHandlerMapping].
  /// [arguments] The command-line arguments to be passed to the script processor.
  /// [extension] The extension to be handled by the specified FastCGI application.
  /// [scriptProcessorPath] The absolute path to the FastCGI application.
  const GetWindowsWebAppSiteConfigHandlerMapping({
    required this.arguments,
    required this.extension,
    required this.scriptProcessorPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': arguments,
      'extension': extension,
      'scriptProcessorPath': scriptProcessorPath,
    };
  }

  factory GetWindowsWebAppSiteConfigHandlerMapping.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppSiteConfigHandlerMapping(
      arguments: pulumi.Input.fromValue(map['arguments'] as String),
      extension: pulumi.Input.fromValue(map['extension'] as String),
      scriptProcessorPath: pulumi.Input.fromValue(map['scriptProcessorPath'] as String),
    );
  }
}

