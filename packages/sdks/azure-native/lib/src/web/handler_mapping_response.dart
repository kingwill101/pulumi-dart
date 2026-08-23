// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The IIS handler mappings used to define which handler processes HTTP requests with certain extension.
/// For example, it is used to configure php-cgi.exe process to handle all HTTP requests with *.php extension.
class HandlerMappingResponse {
  /// Command-line arguments to be passed to the script processor.
  final pulumi.Input<String>? arguments;
  /// Requests with this extension will be handled using the specified FastCGI application.
  final pulumi.Input<String>? extension;
  /// The absolute path to the FastCGI application.
  final pulumi.Input<String>? scriptProcessor;

  /// Creates a new [HandlerMappingResponse].
  /// [arguments] Command-line arguments to be passed to the script processor.
  /// [extension] Requests with this extension will be handled using the specified FastCGI application.
  /// [scriptProcessor] The absolute path to the FastCGI application.
  const HandlerMappingResponse({
    this.arguments,
    this.extension,
    this.scriptProcessor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arguments': ?arguments,
      'extension': ?extension,
      'scriptProcessor': ?scriptProcessor,
    };
  }

  factory HandlerMappingResponse.fromMap(Map<String, dynamic> map) {
    return HandlerMappingResponse(
      arguments: (() { final guardedValue = map['arguments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extension: (() { final guardedValue = map['extension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptProcessor: (() { final guardedValue = map['scriptProcessor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
