// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this SQL Database.
  final pulumi.Input<List<String>> identityIds;
  /// Specifies the type of Managed Service Identity that should be configured on this SQL Database. Possible value is `UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [DatabaseIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this SQL Database.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this SQL Database. Possible value is `UserAssigned`.
  const DatabaseIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory DatabaseIdentity.fromMap(Map<String, dynamic> map) {
    return DatabaseIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
