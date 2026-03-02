// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes how identity is verified
class IdentityResponse {
  /// The identity principal ID
  final pulumi.Input<String> principalId;
  /// The identity tenantId
  final pulumi.Input<String> tenantId;
  /// The identity type
  final pulumi.Input<String>? type;

  /// Creates a new [IdentityResponse].
  /// [principalId] The identity principal ID
  /// [tenantId] The identity tenantId
  /// [type] The identity type
  IdentityResponse({
    required this.principalId,
    required this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': ?type,
    };
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

