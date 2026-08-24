// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CloudforceOneRequestMessage resources.
class CloudforceOneRequestMessageState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Author of message.
  final pulumi.Input<String?>? author;
  /// Content of message.
  final pulumi.Input<String?>? content;
  /// Defines the message creation time.
  final pulumi.Input<String?>? created;
  /// Whether the message is a follow-on request.
  final pulumi.Input<bool?>? isFollowOnRequest;
  /// UUID.
  final pulumi.Input<String?>? requestId;
  /// Defines the message last updated time.
  final pulumi.Input<String?>? updated;

  /// Creates a new [CloudforceOneRequestMessageState].
  /// [accountId] Identifier.
  /// [author] Author of message.
  /// [content] Content of message.
  /// [created] Defines the message creation time.
  /// [isFollowOnRequest] Whether the message is a follow-on request.
  /// [requestId] UUID.
  /// [updated] Defines the message last updated time.
  const CloudforceOneRequestMessageState({
    this.accountId,
    this.author,
    this.content,
    this.created,
    this.isFollowOnRequest,
    this.requestId,
    this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'author': ?author,
      'content': ?content,
      'created': ?created,
      'isFollowOnRequest': ?isFollowOnRequest,
      'requestId': ?requestId,
      'updated': ?updated,
    };
  }

  factory CloudforceOneRequestMessageState.fromMap(Map<String, dynamic> map) {
    return CloudforceOneRequestMessageState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isFollowOnRequest: (() { final guardedValue = map['isFollowOnRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
