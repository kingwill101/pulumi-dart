// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedDevOpsPoolIdentity {
  /// A list of User Assigned Identity IDs assigned to this Managed DevOps Pool.
  final pulumi.Input<List<String>> identityIds;
  /// The type of Managed Service Identity that is configured on this Managed DevOps Pool.
  final pulumi.Input<String> type;

  /// Creates a new [GetManagedDevOpsPoolIdentity].
  /// [identityIds] A list of User Assigned Identity IDs assigned to this Managed DevOps Pool.
  /// [type] The type of Managed Service Identity that is configured on this Managed DevOps Pool.
  const GetManagedDevOpsPoolIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory GetManagedDevOpsPoolIdentity.fromMap(Map<String, dynamic> map) {
    return GetManagedDevOpsPoolIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
