// ignore_for_file: unused_element, unnecessary_cast

import 'table_access_policy.dart';

/// Object to set Table Access Policy.
class TableSignedIdentifier {
  /// Access policy
  final TableAccessPolicy? accessPolicy;
  /// unique-64-character-value of the stored access policy.
  final String id;

  /// Creates a new [TableSignedIdentifier].
  /// [accessPolicy] Access policy
  /// [id] unique-64-character-value of the stored access policy.
  TableSignedIdentifier({
    this.accessPolicy,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicy': ?accessPolicy == null ? null : accessPolicy!.toMap(),
      'id': id,
    };
  }

  factory TableSignedIdentifier.fromMap(Map<String, dynamic> map) {
    return TableSignedIdentifier(
      accessPolicy: map['accessPolicy'] == null ? null : TableAccessPolicy.fromMap((map['accessPolicy'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
    );
  }
}

