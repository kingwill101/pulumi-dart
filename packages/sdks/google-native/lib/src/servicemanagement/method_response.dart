// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'option_response.dart';

/// Method represents a method of an API interface.
class MethodResponse {
  /// The simple name of this method.
  final pulumi.Input<String> name;

  /// Any metadata attached to the method.
  final pulumi.Input<List<OptionResponse>> options;

  /// If true, the request is streamed.
  final pulumi.Input<bool> requestStreaming;

  /// A URL of the input message type.
  final pulumi.Input<String> requestTypeUrl;

  /// If true, the response is streamed.
  final pulumi.Input<bool> responseStreaming;

  /// The URL of the output message type.
  final pulumi.Input<String> responseTypeUrl;

  /// The source syntax of this method.
  final pulumi.Input<String> syntax;

  /// Creates a new [MethodResponse].
  /// [name] The simple name of this method.
  /// [options] Any metadata attached to the method.
  /// [requestStreaming] If true, the request is streamed.
  /// [requestTypeUrl] A URL of the input message type.
  /// [responseStreaming] If true, the response is streamed.
  /// [responseTypeUrl] The URL of the output message type.
  /// [syntax] The source syntax of this method.
  MethodResponse({
    required this.name,
    required this.options,
    required this.requestStreaming,
    required this.requestTypeUrl,
    required this.responseStreaming,
    required this.responseTypeUrl,
    required this.syntax,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'options':
          pulumi.Input.mapInputValue<
            List<OptionResponse>,
            List<Map<String, dynamic>>
          >(
            options,
            (value) =>
                pulumi.Input.encodeList<OptionResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'requestStreaming': requestStreaming,
      'requestTypeUrl': requestTypeUrl,
      'responseStreaming': responseStreaming,
      'responseTypeUrl': responseTypeUrl,
      'syntax': syntax,
    };
  }

  factory MethodResponse.fromMap(Map<String, dynamic> map) {
    return MethodResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      options: pulumi.Input.fromValue(
        pulumi.Input.decodeList<OptionResponse>(
          map['options']!,
          (value) =>
              OptionResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      requestStreaming: pulumi.Input.fromValue(map['requestStreaming'] as bool),
      requestTypeUrl: pulumi.Input.fromValue(map['requestTypeUrl'] as String),
      responseStreaming: pulumi.Input.fromValue(
        map['responseStreaming'] as bool,
      ),
      responseTypeUrl: pulumi.Input.fromValue(map['responseTypeUrl'] as String),
      syntax: pulumi.Input.fromValue(map['syntax'] as String),
    );
  }
}
