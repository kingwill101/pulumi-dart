// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attribute_response_healthcare_v1beta1.dart';
import 'expr_response_healthcare_v1beta1.dart';

/// Represents a user's consent in terms of the resources that can be accessed and under what conditions.
class GoogleCloudHealthcareV1beta1ConsentPolicyResponse {
  /// The request conditions to meet to grant access. In addition to any supported comparison operators, authorization rules may have `IN` operator as well as at most 10 logical operators that are limited to `AND` (`&&`), `OR` (`||`).
  final pulumi.Input<ExprResponseHealthcareV1beta1> authorizationRule;
  /// The resources that this policy applies to. A resource is a match if it matches all the attributes listed here. If empty, this policy applies to all User data mappings for the given user.
  final pulumi.Input<List<AttributeResponseHealthcareV1beta1>> resourceAttributes;

  /// Creates a new [GoogleCloudHealthcareV1beta1ConsentPolicyResponse].
  /// [authorizationRule] The request conditions to meet to grant access. In addition to any supported comparison operators, authorization rules may have `IN` operator as well as at most 10 logical operators that are limited to `AND` (`&&`), `OR` (`||`).
  /// [resourceAttributes] The resources that this policy applies to. A resource is a match if it matches all the attributes listed here. If empty, this policy applies to all User data mappings for the given user.
  GoogleCloudHealthcareV1beta1ConsentPolicyResponse({
    required this.authorizationRule,
    required this.resourceAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRule': pulumi.Input.mapInputValue<ExprResponseHealthcareV1beta1, Map<String, dynamic>>(authorizationRule, (value) => value.toMap()),
      'resourceAttributes': pulumi.Input.mapInputValue<List<AttributeResponseHealthcareV1beta1>, List<Map<String, dynamic>>>(resourceAttributes, (value) => pulumi.Input.encodeList<AttributeResponseHealthcareV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudHealthcareV1beta1ConsentPolicyResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudHealthcareV1beta1ConsentPolicyResponse(
      authorizationRule: (ExprResponseHealthcareV1beta1.fromMap((map['authorizationRule'] as Map).cast<String, dynamic>())).input(),
      resourceAttributes: (pulumi.Input.decodeList<AttributeResponseHealthcareV1beta1>(map['resourceAttributes'], (value) => AttributeResponseHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

