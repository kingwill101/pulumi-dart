// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_stream_download_get_stream_download_args_doc}
/// Arguments for getStreamDownload.
/// {@endtemplate}
/// {@macro pulumi_index_get_stream_download_get_stream_download_args_doc}
class GetStreamDownloadArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// A Cloudflare-generated unique identifier for a media item.
  final pulumi.Input<String> identifier;

  /// Creates a new [GetStreamDownloadArgs].
  /// [accountId] Identifier.
  /// [identifier] A Cloudflare-generated unique identifier for a media item.
  const GetStreamDownloadArgs({
    required this.accountId,
    required this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'identifier': identifier,
    };
  }

  factory GetStreamDownloadArgs.fromMap(Map<String, dynamic> map) {
    return GetStreamDownloadArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
    );
  }
}
