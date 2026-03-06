// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSlotSiteConfigHandlerMapping {
  /// Specify the command-line arguments to be passed to the script processor.
  final pulumi.Input<String>? arguments;
  /// Specify which extension to be handled by the specified FastCGI application.
  final pulumi.Input<String> extension;
  /// Specify the absolute path to the FastCGI application.
  final pulumi.Input<String> scriptProcessorPath;

  /// Creates a new [WindowsWebAppSlotSiteConfigHandlerMapping].
  /// [arguments] Specify the command-line arguments to be passed to the script processor.
  /// [extension] Specify which extension to be handled by the specified FastCGI application.
  /// [scriptProcessorPath] Specify the absolute path to the FastCGI application.
  const WindowsWebAppSlotSiteConfigHandlerMapping({
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

  factory WindowsWebAppSlotSiteConfigHandlerMapping.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotSiteConfigHandlerMapping(
      arguments: (() { final guardedValue = map['arguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extension: pulumi.Input.fromValue(map['extension'] as String),
      scriptProcessorPath: pulumi.Input.fromValue(map['scriptProcessorPath'] as String),
    );
  }
}

