// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_cloudforce_one_request_asset_cloudforce_one_request_asset_args_doc}
/// The set of arguments for CloudforceOneRequestAsset.
/// {@endtemplate}
/// {@macro pulumi_index_cloudforce_one_request_asset_cloudforce_one_request_asset_args_doc}
class CloudforceOneRequestAssetArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Page number of results.
  final pulumi.Input<int> page;
  /// Number of results per page.
  final pulumi.Input<int> perPage;
  /// UUID.
  final pulumi.Input<String> requestId;
  /// Asset file to upload.
  final pulumi.Input<String?>? source;

  /// Creates a new [CloudforceOneRequestAssetArgs].
  /// [accountId] Identifier.
  /// [page] Page number of results.
  /// [perPage] Number of results per page.
  /// [requestId] UUID.
  /// [source] Asset file to upload.
  const CloudforceOneRequestAssetArgs({
    required this.accountId,
    required this.page,
    required this.perPage,
    required this.requestId,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'page': page,
      'perPage': perPage,
      'requestId': requestId,
      'source': ?source,
    };
  }

  factory CloudforceOneRequestAssetArgs.fromMap(Map<String, dynamic> map) {
    return CloudforceOneRequestAssetArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      page: pulumi.Input.fromValue((map['page'] as num).toInt()),
      perPage: pulumi.Input.fromValue((map['perPage'] as num).toInt()),
      requestId: pulumi.Input.fromValue(map['requestId'] as String),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
