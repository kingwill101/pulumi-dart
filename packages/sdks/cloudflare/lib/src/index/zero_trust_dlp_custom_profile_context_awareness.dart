// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_custom_profile_context_awareness_skip.dart';

class ZeroTrustDlpCustomProfileContextAwareness {
  /// If true, scan the context of predefined entries to only return matches surrounded by keywords.
  final pulumi.Input<bool?>? enabled;
  /// Content types to exclude from context analysis and return all matches.
  final pulumi.Input<ZeroTrustDlpCustomProfileContextAwarenessSkip?>? skip;

  /// Creates a new [ZeroTrustDlpCustomProfileContextAwareness].
  /// [enabled] If true, scan the context of predefined entries to only return matches surrounded by keywords.
  /// [skip] Content types to exclude from context analysis and return all matches.
  const ZeroTrustDlpCustomProfileContextAwareness({
    this.enabled,
    this.skip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'skip': ?pulumi.Input.mapOptionalInputValue<ZeroTrustDlpCustomProfileContextAwarenessSkip, Map<String, dynamic>>(skip, (value) => value.toMap()),
    };
  }

  factory ZeroTrustDlpCustomProfileContextAwareness.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpCustomProfileContextAwareness(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      skip: (() { final guardedValue = map['skip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustDlpCustomProfileContextAwarenessSkip.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
