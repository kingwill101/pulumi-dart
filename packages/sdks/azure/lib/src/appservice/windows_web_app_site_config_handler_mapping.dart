// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSiteConfigHandlerMapping {
  /// Specifies the command-line arguments to be passed to the script processor.
  final pulumi.Input<String>? arguments;
  /// Specifies which extension to be handled by the specified FastCGI application.
  final pulumi.Input<String> extension;
  /// Specifies the absolute path to the FastCGI application.
  final pulumi.Input<String> scriptProcessorPath;

  /// Creates a new [WindowsWebAppSiteConfigHandlerMapping].
  /// [arguments] Specifies the command-line arguments to be passed to the script processor.
  /// [extension] Specifies which extension to be handled by the specified FastCGI application.
  /// [scriptProcessorPath] Specifies the absolute path to the FastCGI application.
  WindowsWebAppSiteConfigHandlerMapping({
    this.arguments,
    required this.extension,
    required this.scriptProcessorPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'extension': extension,
      'scriptProcessorPath': scriptProcessorPath,
    };
  }

  factory WindowsWebAppSiteConfigHandlerMapping.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSiteConfigHandlerMapping(
      arguments: map['arguments'] == null ? null : (map['arguments'] as String).input(),
      extension: (map['extension'] as String).input(),
      scriptProcessorPath: (map['scriptProcessorPath'] as String).input(),
    );
  }
}

