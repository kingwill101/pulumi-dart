// ignore_for_file: unused_element, unnecessary_cast

import 'table_access_policy_response.dart';

/// Object to set Table Access Policy.
class TableSignedIdentifierResponse {
  /// Access policy
  final TableAccessPolicyResponse? accessPolicy;
  /// unique-64-character-value of the stored access policy.
  final String id;

  /// Creates a new [TableSignedIdentifierResponse].
  /// [accessPolicy] Access policy
  /// [id] unique-64-character-value of the stored access policy.
  TableSignedIdentifierResponse({
    this.accessPolicy,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicy': ?accessPolicy == null ? null : accessPolicy!.toMap(),
      'id': id,
    };
  }

  factory TableSignedIdentifierResponse.fromMap(Map<String, dynamic> map) {
    return TableSignedIdentifierResponse(
      accessPolicy: map['accessPolicy'] == null ? null : TableAccessPolicyResponse.fromMap((map['accessPolicy'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
    );
  }
}

