// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'method_syntax.dart';
import 'option.dart';

/// Method represents a method of an API interface.
class Method {
  /// The simple name of this method.
  final pulumi.Input<String>? name;
  /// Any metadata attached to the method.
  final pulumi.Input<List<Option>>? options;
  /// If true, the request is streamed.
  final pulumi.Input<bool>? requestStreaming;
  /// A URL of the input message type.
  final pulumi.Input<String>? requestTypeUrl;
  /// If true, the response is streamed.
  final pulumi.Input<bool>? responseStreaming;
  /// The URL of the output message type.
  final pulumi.Input<String>? responseTypeUrl;
  /// The source syntax of this method.
  final pulumi.Input<MethodSyntax>? syntax;

  /// Creates a new [Method].
  /// [name] The simple name of this method.
  /// [options] Any metadata attached to the method.
  /// [requestStreaming] If true, the request is streamed.
  /// [requestTypeUrl] A URL of the input message type.
  /// [responseStreaming] If true, the response is streamed.
  /// [responseTypeUrl] The URL of the output message type.
  /// [syntax] The source syntax of this method.
  const Method({
    this.name,
    this.options,
    this.requestStreaming,
    this.requestTypeUrl,
    this.responseStreaming,
    this.responseTypeUrl,
    this.syntax,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'options': ?pulumi.Input.mapOptionalInputValue<List<Option>, List<Map<String, dynamic>>>(options, (value) => pulumi.Input.encodeList<Option, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestStreaming': ?requestStreaming,
      'requestTypeUrl': ?requestTypeUrl,
      'responseStreaming': ?responseStreaming,
      'responseTypeUrl': ?responseTypeUrl,
      'syntax': ?pulumi.Input.mapOptionalInputValue<MethodSyntax, String>(syntax, (value) => value.wireValue),
    };
  }

  factory Method.fromMap(Map<String, dynamic> map) {
    return Method(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Option>(guardedValue, (value) => Option.fromMap((value as Map).cast<String, dynamic>()))); })(),
      requestStreaming: (() { final guardedValue = map['requestStreaming']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requestTypeUrl: (() { final guardedValue = map['requestTypeUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responseStreaming: (() { final guardedValue = map['responseStreaming']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      responseTypeUrl: (() { final guardedValue = map['responseTypeUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syntax: (() { final guardedValue = map['syntax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MethodSyntax.fromValue(guardedValue as String)); })(),
    );
  }
}

