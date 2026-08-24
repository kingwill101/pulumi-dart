// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_cloudforce_one_request_message_get_cloudforce_one_request_message_args_doc}
/// Arguments for getCloudforceOneRequestMessage.
/// {@endtemplate}
/// {@macro pulumi_index_get_cloudforce_one_request_message_get_cloudforce_one_request_message_args_doc}
class GetCloudforceOneRequestMessageArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// Retrieve mes  ges created after this time.
  final pulumi.Input<String?>? after;
  /// Retrieve messages created before this time.
  final pulumi.Input<String?>? before;
  /// Page number of results.
  final pulumi.Input<int> page;
  /// Number of results per page.
  final pulumi.Input<int> perPage;
  /// UUID.
  final pulumi.Input<String> requestId;
  /// Field to sort results by.
  final pulumi.Input<String?>? sortBy;
  /// Sort order (asc or desc).
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? sortOrder;

  /// Creates a new [GetCloudforceOneRequestMessageArgs].
  /// [accountId] Identifier.
  /// [after] Retrieve mes  ges created after this time.
  /// [before] Retrieve messages created before this time.
  /// [page] Page number of results.
  /// [perPage] Number of results per page.
  /// [requestId] UUID.
  /// [sortBy] Field to sort results by.
  /// [sortOrder] Sort order (asc or desc).
  const GetCloudforceOneRequestMessageArgs({
    this.accountId,
    this.after,
    this.before,
    required this.page,
    required this.perPage,
    required this.requestId,
    this.sortBy,
    this.sortOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'after': ?after,
      'before': ?before,
      'page': page,
      'perPage': perPage,
      'requestId': requestId,
      'sortBy': ?sortBy,
      'sortOrder': ?sortOrder,
    };
  }

  factory GetCloudforceOneRequestMessageArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudforceOneRequestMessageArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      after: (() { final guardedValue = map['after']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      before: (() { final guardedValue = map['before']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      page: pulumi.Input.fromValue((map['page'] as num).toInt()),
      perPage: pulumi.Input.fromValue((map['perPage'] as num).toInt()),
      requestId: pulumi.Input.fromValue(map['requestId'] as String),
      sortBy: (() { final guardedValue = map['sortBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sortOrder: (() { final guardedValue = map['sortOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
