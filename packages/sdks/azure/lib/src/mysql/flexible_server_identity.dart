// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleServerIdentity {
  /// A list of User Assigned Managed Identity IDs to be assigned to this MySQL Flexible Server.
  final pulumi.Input<List<String>> identityIds;
  /// Specifies the type of Managed Service Identity that should be configured on this MySQL Flexible Server. The only possible value is `UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [FlexibleServerIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs to be assigned to this MySQL Flexible Server.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this MySQL Flexible Server. The only possible value is `UserAssigned`.
  FlexibleServerIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory FlexibleServerIdentity.fromMap(Map<String, dynamic> map) {
    return FlexibleServerIdentity(
      identityIds: pulumi.Input.fromValue((map['identityIds'] as List).cast<String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

