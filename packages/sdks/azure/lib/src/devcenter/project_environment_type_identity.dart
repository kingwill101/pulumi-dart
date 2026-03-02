// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectEnvironmentTypeIdentity {
  /// The ID of the User Assigned Identity which should be assigned to this Dev Center Project Environment Type.
  ///
  /// > **Note:** `identity_ids` is required when `type` is set to `UserAssigned` or `SystemAssigned, UserAssigned`.
  final pulumi.Input<List<String>>? identityIds;
  final pulumi.Input<String>? principalId;
  final pulumi.Input<String>? tenantId;
  /// The type of identity used for this Dev Center Project Environment Type. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [ProjectEnvironmentTypeIdentity].
  /// [identityIds] The ID of the User Assigned Identity which should be assigned to this Dev Center Project Environment Type.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] The type of identity used for this Dev Center Project Environment Type. Possible values are `SystemAssigned`, `UserAssigned` and `SystemAssigned, UserAssigned`.
  ProjectEnvironmentTypeIdentity({
    this.identityIds,
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': ?identityIds,
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory ProjectEnvironmentTypeIdentity.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironmentTypeIdentity(
      identityIds: map['identityIds'] == null ? null : ((map['identityIds']! as List).cast<String>()).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

