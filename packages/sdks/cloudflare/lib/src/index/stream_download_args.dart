// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_stream_download_stream_download_args_doc}
/// The set of arguments for StreamDownload.
/// {@endtemplate}
/// {@macro pulumi_index_stream_download_stream_download_args_doc}
class StreamDownloadArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// A Cloudflare-generated unique identifier for a media item.
  final pulumi.Input<String> identifier;

  /// Creates a new [StreamDownloadArgs].
  /// [accountId] Identifier.
  /// [identifier] A Cloudflare-generated unique identifier for a media item.
  const StreamDownloadArgs({
    required this.accountId,
    required this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'identifier': identifier,
    };
  }

  factory StreamDownloadArgs.fromMap(Map<String, dynamic> map) {
    return StreamDownloadArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
    );
  }
}
