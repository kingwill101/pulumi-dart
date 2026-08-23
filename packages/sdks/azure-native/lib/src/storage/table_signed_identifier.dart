// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_access_policy.dart';

/// Object to set Table Access Policy.
class TableSignedIdentifier {
  /// Access policy
  final pulumi.Input<TableAccessPolicy>? accessPolicy;
  /// unique-64-character-value of the stored access policy.
  final pulumi.Input<String> id;

  /// Creates a new [TableSignedIdentifier].
  /// [accessPolicy] Access policy
  /// [id] unique-64-character-value of the stored access policy.
  const TableSignedIdentifier({
    this.accessPolicy,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicy': ?pulumi.Input.mapOptionalInputValue<TableAccessPolicy, Map<String, dynamic>>(accessPolicy, (value) => value.toMap()),
      'id': id,
    };
  }

  factory TableSignedIdentifier.fromMap(Map<String, dynamic> map) {
    return TableSignedIdentifier(
      accessPolicy: (() { final guardedValue = map['accessPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableAccessPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
