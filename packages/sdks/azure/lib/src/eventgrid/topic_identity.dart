// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Event Grid Topic.
  ///
  /// > **Note:** This is required when `type` is set to `UserAssigned`
  ///
  /// > **Note:** When `type` is set to `SystemAssigned`, The assigned `principal_id` and `tenant_id` can be retrieved after the Event Grid Topic has been created. More details are available below.
  final pulumi.Input<List<String>>? identityIds;
  /// The Principal ID associated with this Managed Service Identity.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID associated with this Managed Service Identity.
  final pulumi.Input<String>? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Event Grid Topic. Possible values are `SystemAssigned`, `UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [TopicIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Event Grid Topic.
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID associated with this Managed Service Identity.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Event Grid Topic. Possible values are `SystemAssigned`, `UserAssigned`.
  TopicIdentity({
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

  factory TopicIdentity.fromMap(Map<String, dynamic> map) {
    return TopicIdentity(
      identityIds: map['identityIds'] == null ? null : ((map['identityIds']! as List).cast<String>()).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

