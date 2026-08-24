// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_cloudforce_one_request_message_cloudforce_one_request_message_args_doc}
/// The set of arguments for CloudforceOneRequestMessage.
/// {@endtemplate}
/// {@macro pulumi_index_cloudforce_one_request_message_cloudforce_one_request_message_args_doc}
class CloudforceOneRequestMessageArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Content of message.
  final pulumi.Input<String?>? content;
  /// UUID.
  final pulumi.Input<String> requestId;

  /// Creates a new [CloudforceOneRequestMessageArgs].
  /// [accountId] Identifier.
  /// [content] Content of message.
  /// [requestId] UUID.
  const CloudforceOneRequestMessageArgs({
    required this.accountId,
    this.content,
    required this.requestId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'content': ?content,
      'requestId': requestId,
    };
  }

  factory CloudforceOneRequestMessageArgs.fromMap(Map<String, dynamic> map) {
    return CloudforceOneRequestMessageArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: pulumi.Input.fromValue(map['requestId'] as String),
    );
  }
}
