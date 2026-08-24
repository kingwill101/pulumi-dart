// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCloudforceOneRequestMessage.
class GetCloudforceOneRequestMessageResult {
  /// Identifier.
  final String? accountId;
  /// Retrieve mes  ges created after this time.
  final String? after;
  /// Author of message.
  final String? author;
  /// Retrieve messages created before this time.
  final String? before;
  /// Content of message.
  final String? content;
  /// Defines the message creation time.
  final String? created;
  /// UUID.
  final String? id;
  /// Whether the message is a follow-on request.
  final bool? isFollowOnRequest;
  /// Page number of results.
  final int? page;
  /// Number of results per page.
  final int? perPage;
  /// UUID.
  final String? requestId;
  /// Field to sort results by.
  final String? sortBy;
  /// Sort order (asc or desc).
  /// Available values: "asc", "desc".
  final String? sortOrder;
  /// Defines the message last updated time.
  final String? updated;

  /// Creates a new [GetCloudforceOneRequestMessageResult].
  /// [accountId] Identifier.
  /// [after] Retrieve mes  ges created after this time.
  /// [author] Author of message.
  /// [before] Retrieve messages created before this time.
  /// [content] Content of message.
  /// [created] Defines the message creation time.
  /// [id] UUID.
  /// [isFollowOnRequest] Whether the message is a follow-on request.
  /// [page] Page number of results.
  /// [perPage] Number of results per page.
  /// [requestId] UUID.
  /// [sortBy] Field to sort results by.
  /// [sortOrder] Sort order (asc or desc).
  /// [updated] Defines the message last updated time.
  const GetCloudforceOneRequestMessageResult({
    this.accountId,
    this.after,
    this.author,
    this.before,
    this.content,
    this.created,
    this.id,
    this.isFollowOnRequest,
    this.page,
    this.perPage,
    this.requestId,
    this.sortBy,
    this.sortOrder,
    this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'after': ?after,
      'author': ?author,
      'before': ?before,
      'content': ?content,
      'created': ?created,
      'id': ?id,
      'isFollowOnRequest': ?isFollowOnRequest,
      'page': ?page,
      'perPage': ?perPage,
      'requestId': ?requestId,
      'sortBy': ?sortBy,
      'sortOrder': ?sortOrder,
      'updated': ?updated,
    };
  }

  factory GetCloudforceOneRequestMessageResult.fromMap(Map<String, dynamic> map) {
    return GetCloudforceOneRequestMessageResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      after: (() { final guardedValue = map['after']; if (guardedValue == null) return null; return guardedValue as String; })(),
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return guardedValue as String; })(),
      before: (() { final guardedValue = map['before']; if (guardedValue == null) return null; return guardedValue as String; })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isFollowOnRequest: (() { final guardedValue = map['isFollowOnRequest']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      page: (() { final guardedValue = map['page']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      perPage: (() { final guardedValue = map['perPage']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sortBy: (() { final guardedValue = map['sortBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sortOrder: (() { final guardedValue = map['sortOrder']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
