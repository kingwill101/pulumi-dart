// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_cloudforce_one_request_cloudforce_one_request_args_doc}
/// The set of arguments for CloudforceOneRequest.
/// {@endtemplate}
/// {@macro pulumi_index_cloudforce_one_request_cloudforce_one_request_args_doc}
class CloudforceOneRequestArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Request content.
  final pulumi.Input<String?>? content;
  /// Priority for analyzing the request.
  final pulumi.Input<String?>? priority;
  /// Requested information from request.
  final pulumi.Input<String?>? requestType;
  /// Brief description of the request.
  final pulumi.Input<String?>? summary;
  /// The CISA defined Traffic Light Protocol (TLP).
  /// Available values: "clear", "amber", "amber-strict", "green", "red".
  final pulumi.Input<String?>? tlp;

  /// Creates a new [CloudforceOneRequestArgs].
  /// [accountId] Identifier.
  /// [content] Request content.
  /// [priority] Priority for analyzing the request.
  /// [requestType] Requested information from request.
  /// [summary] Brief description of the request.
  /// [tlp] The CISA defined Traffic Light Protocol (TLP).
  const CloudforceOneRequestArgs({
    required this.accountId,
    this.content,
    this.priority,
    this.requestType,
    this.summary,
    this.tlp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'content': ?content,
      'priority': ?priority,
      'requestType': ?requestType,
      'summary': ?summary,
      'tlp': ?tlp,
    };
  }

  factory CloudforceOneRequestArgs.fromMap(Map<String, dynamic> map) {
    return CloudforceOneRequestArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestType: (() { final guardedValue = map['requestType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      summary: (() { final guardedValue = map['summary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tlp: (() { final guardedValue = map['tlp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
