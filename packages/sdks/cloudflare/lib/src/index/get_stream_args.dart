// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_stream_get_stream_args_doc}
/// Arguments for getStream.
/// {@endtemplate}
/// {@macro pulumi_index_get_stream_get_stream_args_doc}
class GetStreamArgs {
  /// The account identifier tag.
  final pulumi.Input<String> accountId;
  /// A Cloudflare-generated unique identifier for a media item.
  final pulumi.Input<String> identifier;

  /// Creates a new [GetStreamArgs].
  /// [accountId] The account identifier tag.
  /// [identifier] A Cloudflare-generated unique identifier for a media item.
  const GetStreamArgs({
    required this.accountId,
    required this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'identifier': identifier,
    };
  }

  factory GetStreamArgs.fromMap(Map<String, dynamic> map) {
    return GetStreamArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
    );
  }
}
