// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attribute_response.dart';
import 'expr_response.dart';

/// Represents a user's consent in terms of the resources that can be accessed and under what conditions.
class GoogleCloudHealthcareV1ConsentPolicyResponse {
  /// The request conditions to meet to grant access. In addition to any supported comparison operators, authorization rules may have `IN` operator as well as at most 10 logical operators that are limited to `AND` (`&&`), `OR` (`||`).
  final ExprResponse authorizationRule;
  /// The resources that this policy applies to. A resource is a match if it matches all the attributes listed here. If empty, this policy applies to all User data mappings for the given user.
  final List<AttributeResponse> resourceAttributes;

  /// Creates a new [GoogleCloudHealthcareV1ConsentPolicyResponse].
  /// [authorizationRule] The request conditions to meet to grant access. In addition to any supported comparison operators, authorization rules may have `IN` operator as well as at most 10 logical operators that are limited to `AND` (`&&`), `OR` (`||`).
  /// [resourceAttributes] The resources that this policy applies to. A resource is a match if it matches all the attributes listed here. If empty, this policy applies to all User data mappings for the given user.
  GoogleCloudHealthcareV1ConsentPolicyResponse({
    required this.authorizationRule,
    required this.resourceAttributes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRule': authorizationRule.toMap(),
      'resourceAttributes': pulumi.Input.encodeList<AttributeResponse, Map<String, dynamic>>(resourceAttributes, (value) => value.toMap()),
    };
  }

  factory GoogleCloudHealthcareV1ConsentPolicyResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudHealthcareV1ConsentPolicyResponse(
      authorizationRule: ExprResponse.fromMap((map['authorizationRule'] as Map).cast<String, dynamic>()),
      resourceAttributes: pulumi.Input.decodeList<AttributeResponse>(map['resourceAttributes'], (value) => AttributeResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

