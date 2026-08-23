// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/field_selector_requirement_patch.dart';

/// FieldSelectorAttributes indicates a field limited access. Webhook authors are encouraged to * ensure rawSelector and requirements are not both set * consider the requirements field if set * not try to parse or consider the rawSelector field if set. This is to avoid another CVE-2022-2880 (i.e. getting different systems to agree on how exactly to parse a query is not something we want), see https://www.oxeye.io/resources/golang-parameter-smuggling-attack for more details. For the *SubjectAccessReview endpoints of the kube-apiserver: * If rawSelector is empty and requirements are empty, the request is not limited. * If rawSelector is present and requirements are empty, the rawSelector will be parsed and limited if the parsing succeeds. * If rawSelector is empty and requirements are present, the requirements should be honored * If rawSelector is present and requirements are present, the request is invalid.
class FieldSelectorAttributesPatch {
  /// rawSelector is the serialization of a field selector that would be included in a query parameter. Webhook implementations are encouraged to ignore rawSelector. The kube-apiserver's *SubjectAccessReview will parse the rawSelector as long as the requirements are not present.
  final pulumi.Input<String>? rawSelector;
  /// requirements is the parsed interpretation of a field selector. All requirements must be met for a resource instance to match the selector. Webhook implementations should handle requirements, but how to handle them is up to the webhook. Since requirements can only limit the request, it is safe to authorize as unlimited request if the requirements are not understood.
  final pulumi.Input<List<FieldSelectorRequirementPatch>>? requirements;

  /// Creates a new [FieldSelectorAttributesPatch].
  /// [rawSelector] rawSelector is the serialization of a field selector that would be included in a query parameter. Webhook implementations are encouraged to ignore rawSelector. The kube-apiserver's *SubjectAccessReview will parse the rawSelector as long as the requirements are not present.
  /// [requirements] requirements is the parsed interpretation of a field selector. All requirements must be met for a resource instance to match the selector. Webhook implementations should handle requirements, but how to handle them is up to the webhook. Since requirements can only limit the request, it is safe to authorize as unlimited request if the requirements are not understood.
  const FieldSelectorAttributesPatch({
    this.rawSelector,
    this.requirements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rawSelector': ?rawSelector,
      'requirements': ?pulumi.Input.mapOptionalInputValue<List<FieldSelectorRequirementPatch>, List<Map<String, dynamic>>>(requirements, (value) => pulumi.Input.encodeList<FieldSelectorRequirementPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FieldSelectorAttributesPatch.fromMap(Map<String, dynamic> map) {
    return FieldSelectorAttributesPatch(
      rawSelector: (() { final guardedValue = map['rawSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requirements: (() { final guardedValue = map['requirements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FieldSelectorRequirementPatch>(guardedValue, (value) => FieldSelectorRequirementPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
