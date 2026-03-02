// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_access_policy_response.dart';

/// Object to set Table Access Policy.
class TableSignedIdentifierResponse {
  /// Access policy
  final pulumi.Input<TableAccessPolicyResponse>? accessPolicy;
  /// unique-64-character-value of the stored access policy.
  final pulumi.Input<String> id;

  /// Creates a new [TableSignedIdentifierResponse].
  /// [accessPolicy] Access policy
  /// [id] unique-64-character-value of the stored access policy.
  TableSignedIdentifierResponse({
    this.accessPolicy,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicy': ?pulumi.Input.mapOptionalInputValue<TableAccessPolicyResponse, Map<String, dynamic>>(accessPolicy, (value) => value.toMap()),
      'id': id,
    };
  }

  factory TableSignedIdentifierResponse.fromMap(Map<String, dynamic> map) {
    return TableSignedIdentifierResponse(
      accessPolicy: map['accessPolicy'] == null ? null : (TableAccessPolicyResponse.fromMap((map['accessPolicy'] as Map).cast<String, dynamic>())).input(),
      id: (map['id'] as String).input(),
    );
  }
}

