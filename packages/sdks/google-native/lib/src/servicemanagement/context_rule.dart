// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A context rule provides information about the context for an individual API element.
class ContextRule {
  /// A list of full type names or extension IDs of extensions allowed in grpc side channel from client to backend.
  final pulumi.Input<List<String>>? allowedRequestExtensions;
  /// A list of full type names or extension IDs of extensions allowed in grpc side channel from backend to client.
  final pulumi.Input<List<String>>? allowedResponseExtensions;
  /// A list of full type names of provided contexts.
  final pulumi.Input<List<String>>? provided;
  /// A list of full type names of requested contexts.
  final pulumi.Input<List<String>>? requested;
  /// Selects the methods to which this rule applies. Refer to selector for syntax details.
  final pulumi.Input<String>? selector;

  /// Creates a new [ContextRule].
  /// [allowedRequestExtensions] A list of full type names or extension IDs of extensions allowed in grpc side channel from client to backend.
  /// [allowedResponseExtensions] A list of full type names or extension IDs of extensions allowed in grpc side channel from backend to client.
  /// [provided] A list of full type names of provided contexts.
  /// [requested] A list of full type names of requested contexts.
  /// [selector] Selects the methods to which this rule applies. Refer to selector for syntax details.
  const ContextRule({
    this.allowedRequestExtensions,
    this.allowedResponseExtensions,
    this.provided,
    this.requested,
    this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedRequestExtensions': ?allowedRequestExtensions,
      'allowedResponseExtensions': ?allowedResponseExtensions,
      'provided': ?provided,
      'requested': ?requested,
      'selector': ?selector,
    };
  }

  factory ContextRule.fromMap(Map<String, dynamic> map) {
    return ContextRule(
      allowedRequestExtensions: (() { final guardedValue = map['allowedRequestExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedResponseExtensions: (() { final guardedValue = map['allowedResponseExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      provided: (() { final guardedValue = map['provided']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      requested: (() { final guardedValue = map['requested']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

