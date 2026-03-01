// ignore_for_file: unused_element, unnecessary_cast


class WindowsWebAppSlotSiteConfigHandlerMapping {
  /// Specify the command-line arguments to be passed to the script processor.
  final String? arguments;
  /// Specify which extension to be handled by the specified FastCGI application.
  final String extension;
  /// Specify the absolute path to the FastCGI application.
  final String scriptProcessorPath;

  /// Creates a new [WindowsWebAppSlotSiteConfigHandlerMapping].
  /// [arguments] Specify the command-line arguments to be passed to the script processor.
  /// [extension] Specify which extension to be handled by the specified FastCGI application.
  /// [scriptProcessorPath] Specify the absolute path to the FastCGI application.
  WindowsWebAppSlotSiteConfigHandlerMapping({
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
      arguments: map['arguments'] == null ? null : map['arguments'] as String,
      extension: map['extension'] as String,
      scriptProcessorPath: map['scriptProcessorPath'] as String,
    );
  }
}

