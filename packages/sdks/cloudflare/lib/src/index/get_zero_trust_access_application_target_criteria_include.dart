// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_application_target_criteria_include_target_attributes.dart';

class GetZeroTrustAccessApplicationTargetCriteriaInclude {
  /// Map of target tag keys to values. Values within a key are OR'd.
  final pulumi.Input<Map<String, List<String>>> tags;
  /// Hostname selector map. Only the hostname key is supported.
  final pulumi.Input<GetZeroTrustAccessApplicationTargetCriteriaIncludeTargetAttributes> targetAttributes;

  /// Creates a new [GetZeroTrustAccessApplicationTargetCriteriaInclude].
  /// [tags] Map of target tag keys to values. Values within a key are OR'd.
  /// [targetAttributes] Hostname selector map. Only the hostname key is supported.
  const GetZeroTrustAccessApplicationTargetCriteriaInclude({
    required this.tags,
    required this.targetAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': tags,
      'targetAttributes': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationTargetCriteriaIncludeTargetAttributes, Map<String, dynamic>>(targetAttributes, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessApplicationTargetCriteriaInclude.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationTargetCriteriaInclude(
      tags: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(map['tags']!, (value) => (value as List).cast<String>())),
      targetAttributes: pulumi.Input.fromValue(GetZeroTrustAccessApplicationTargetCriteriaIncludeTargetAttributes.fromMap((map['targetAttributes']! as Map).cast<String, dynamic>())),
    );
  }
}
