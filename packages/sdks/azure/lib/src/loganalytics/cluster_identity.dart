// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterIdentity {
  /// A list of User Assigned Managed Identity IDs to be assigned to this Windows Web App Slot. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This is required when `type` is set to `UserAssigned`.
  final pulumi.Input<List<String>>? identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final pulumi.Input<String>? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Log Analytics Cluster. Possible values are `SystemAssigned` and `UserAssigned`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The assigned `principal_id` and `tenant_id` can be retrieved after the identity `type` has been set to `SystemAssigned` and the Log Analytics Cluster has been created. More details are available below.
  final pulumi.Input<String> type;

  /// Creates a new [ClusterIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs to be assigned to this Windows Web App Slot. Changing this forces a new resource to be created.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Log Analytics Cluster. Possible values are `SystemAssigned` and `UserAssigned`. Changing this forces a new resource to be created.
  ClusterIdentity({
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

  factory ClusterIdentity.fromMap(Map<String, dynamic> map) {
    return ClusterIdentity(
      identityIds: map['identityIds'] == null ? null : ((map['identityIds']! as List).cast<String>()).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

