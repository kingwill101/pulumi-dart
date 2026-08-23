// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedDevOpsPoolIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs.
  final pulumi.Input<List<String>> identityIds;
  /// The type of managed service identity. The only possible value is `UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [ManagedDevOpsPoolIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs.
  /// [type] The type of managed service identity. The only possible value is `UserAssigned`.
  const ManagedDevOpsPoolIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory ManagedDevOpsPoolIdentity.fromMap(Map<String, dynamic> map) {
    return ManagedDevOpsPoolIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
