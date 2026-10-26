// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_access_application_target_criteria_include_target_attributes.dart';

class ZeroTrustAccessApplicationTargetCriteriaInclude {
  /// Map of target tag keys to values. Values within a key are OR'd.
  final pulumi.Input<Map<String, List<String>>?>? tags;
  /// Hostname selector map. Only the hostname key is supported.
  final pulumi.Input<ZeroTrustAccessApplicationTargetCriteriaIncludeTargetAttributes?>? targetAttributes;

  /// Creates a new [ZeroTrustAccessApplicationTargetCriteriaInclude].
  /// [tags] Map of target tag keys to values. Values within a key are OR'd.
  /// [targetAttributes] Hostname selector map. Only the hostname key is supported.
  const ZeroTrustAccessApplicationTargetCriteriaInclude({
    this.tags,
    this.targetAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags,
      'targetAttributes': ?pulumi.Input.mapOptionalInputValue<ZeroTrustAccessApplicationTargetCriteriaIncludeTargetAttributes, Map<String, dynamic>>(targetAttributes, (value) => value.toMap()),
    };
  }

  factory ZeroTrustAccessApplicationTargetCriteriaInclude.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationTargetCriteriaInclude(
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      targetAttributes: (() { final guardedValue = map['targetAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustAccessApplicationTargetCriteriaIncludeTargetAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
