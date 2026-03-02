// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A context rule provides information about the context for an individual API element.
class ContextRuleResponse {
  /// A list of full type names or extension IDs of extensions allowed in grpc side channel from client to backend.
  final pulumi.Input<List<String>> allowedRequestExtensions;
  /// A list of full type names or extension IDs of extensions allowed in grpc side channel from backend to client.
  final pulumi.Input<List<String>> allowedResponseExtensions;
  /// A list of full type names of provided contexts.
  final pulumi.Input<List<String>> provided;
  /// A list of full type names of requested contexts.
  final pulumi.Input<List<String>> requested;
  /// Selects the methods to which this rule applies. Refer to selector for syntax details.
  final pulumi.Input<String> selector;

  /// Creates a new [ContextRuleResponse].
  /// [allowedRequestExtensions] A list of full type names or extension IDs of extensions allowed in grpc side channel from client to backend.
  /// [allowedResponseExtensions] A list of full type names or extension IDs of extensions allowed in grpc side channel from backend to client.
  /// [provided] A list of full type names of provided contexts.
  /// [requested] A list of full type names of requested contexts.
  /// [selector] Selects the methods to which this rule applies. Refer to selector for syntax details.
  ContextRuleResponse({
    required this.allowedRequestExtensions,
    required this.allowedResponseExtensions,
    required this.provided,
    required this.requested,
    required this.selector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedRequestExtensions': allowedRequestExtensions,
      'allowedResponseExtensions': allowedResponseExtensions,
      'provided': provided,
      'requested': requested,
      'selector': selector,
    };
  }

  factory ContextRuleResponse.fromMap(Map<String, dynamic> map) {
    return ContextRuleResponse(
      allowedRequestExtensions: ((map['allowedRequestExtensions'] as List).cast<String>()).input(),
      allowedResponseExtensions: ((map['allowedResponseExtensions'] as List).cast<String>()).input(),
      provided: ((map['provided'] as List).cast<String>()).input(),
      requested: ((map['requested'] as List).cast<String>()).input(),
      selector: (map['selector'] as String).input(),
    );
  }
}

