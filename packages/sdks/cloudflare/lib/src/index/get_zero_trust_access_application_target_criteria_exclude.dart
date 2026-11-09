// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_application_target_criteria_exclude_target_attributes.dart';

class GetZeroTrustAccessApplicationTargetCriteriaExclude {
  /// Map of target tag keys to values. Values within a key are OR'd.
  final pulumi.Input<Map<String, List<String>>> tags;
  /// Hostname selector map. Only the hostname key is supported.
  final pulumi.Input<GetZeroTrustAccessApplicationTargetCriteriaExcludeTargetAttributes> targetAttributes;

  /// Creates a new [GetZeroTrustAccessApplicationTargetCriteriaExclude].
  /// [tags] Map of target tag keys to values. Values within a key are OR'd.
  /// [targetAttributes] Hostname selector map. Only the hostname key is supported.
  const GetZeroTrustAccessApplicationTargetCriteriaExclude({
    required this.tags,
    required this.targetAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': tags,
      'targetAttributes': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationTargetCriteriaExcludeTargetAttributes, Map<String, dynamic>>(targetAttributes, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessApplicationTargetCriteriaExclude.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationTargetCriteriaExclude(
      tags: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(map['tags']!, (value) => (value as List).cast<String>())),
      targetAttributes: pulumi.Input.fromValue(GetZeroTrustAccessApplicationTargetCriteriaExcludeTargetAttributes.fromMap((map['targetAttributes']! as Map).cast<String, dynamic>())),
    );
  }
}
