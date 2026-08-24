// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_dlp_custom_prompt_topic_get_zero_trust_dlp_custom_prompt_topic_args_doc}
/// Arguments for getZeroTrustDlpCustomPromptTopic.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_dlp_custom_prompt_topic_get_zero_trust_dlp_custom_prompt_topic_args_doc}
class GetZeroTrustDlpCustomPromptTopicArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> entryId;

  /// Creates a new [GetZeroTrustDlpCustomPromptTopicArgs].
  /// [accountId] Required.
  /// [entryId] Required.
  const GetZeroTrustDlpCustomPromptTopicArgs({
    required this.accountId,
    required this.entryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'entryId': entryId,
    };
  }

  factory GetZeroTrustDlpCustomPromptTopicArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpCustomPromptTopicArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      entryId: pulumi.Input.fromValue(map['entryId'] as String),
    );
  }
}
