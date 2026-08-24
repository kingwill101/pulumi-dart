// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_custom_profile_context_awareness_skip.dart';

class GetZeroTrustDlpCustomProfileContextAwareness {
  /// If true, scan the context of predefined entries to only return matches surrounded by keywords.
  final pulumi.Input<bool> enabled;
  /// Content types to exclude from context analysis and return all matches.
  final pulumi.Input<GetZeroTrustDlpCustomProfileContextAwarenessSkip> skip;

  /// Creates a new [GetZeroTrustDlpCustomProfileContextAwareness].
  /// [enabled] If true, scan the context of predefined entries to only return matches surrounded by keywords.
  /// [skip] Content types to exclude from context analysis and return all matches.
  const GetZeroTrustDlpCustomProfileContextAwareness({
    required this.enabled,
    required this.skip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'skip': pulumi.Input.mapInputValue<GetZeroTrustDlpCustomProfileContextAwarenessSkip, Map<String, dynamic>>(skip, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustDlpCustomProfileContextAwareness.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpCustomProfileContextAwareness(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      skip: pulumi.Input.fromValue(GetZeroTrustDlpCustomProfileContextAwarenessSkip.fromMap((map['skip']! as Map).cast<String, dynamic>())),
    );
  }
}
