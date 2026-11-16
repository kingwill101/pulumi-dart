// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_application_target_criteria_require_target_attributes.dart';

class GetZeroTrustAccessApplicationTargetCriteriaRequire {
  /// Map of target tag keys to values. Values within a key are OR'd.
  final pulumi.Input<Map<String, List<String>>> tags;
  /// Hostname selector map. Only the hostname key is supported.
  final pulumi.Input<GetZeroTrustAccessApplicationTargetCriteriaRequireTargetAttributes> targetAttributes;

  /// Creates a new [GetZeroTrustAccessApplicationTargetCriteriaRequire].
  /// [tags] Map of target tag keys to values. Values within a key are OR'd.
  /// [targetAttributes] Hostname selector map. Only the hostname key is supported.
  const GetZeroTrustAccessApplicationTargetCriteriaRequire({
    required this.tags,
    required this.targetAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': tags,
      'targetAttributes': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationTargetCriteriaRequireTargetAttributes, Map<String, dynamic>>(targetAttributes, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessApplicationTargetCriteriaRequire.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationTargetCriteriaRequire(
      tags: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(map['tags']!, (value) => (value as List).cast<String>())),
      targetAttributes: pulumi.Input.fromValue(GetZeroTrustAccessApplicationTargetCriteriaRequireTargetAttributes.fromMap((map['targetAttributes']! as Map).cast<String, dynamic>())),
    );
  }
}
