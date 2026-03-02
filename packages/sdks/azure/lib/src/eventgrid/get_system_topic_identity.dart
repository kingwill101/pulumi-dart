// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSystemTopicIdentity {
  /// The list of User Assigned Managed Identity IDs assigned to this Event Grid System Topic.
  final pulumi.Input<List<String>> identityIds;
  /// The Principal ID of the System Assigned Managed Service Identity that is configured on this Event Grid System Topic.
  final pulumi.Input<String> principalId;
  /// The Tenant ID of the System Assigned Managed Service Identity that is configured on this Event Grid System Topic.
  final pulumi.Input<String> tenantId;
  /// The type of Managed Service Identity that is configured on this Event Grid System Topic.
  final pulumi.Input<String> type;

  /// Creates a new [GetSystemTopicIdentity].
  /// [identityIds] The list of User Assigned Managed Identity IDs assigned to this Event Grid System Topic.
  /// [principalId] The Principal ID of the System Assigned Managed Service Identity that is configured on this Event Grid System Topic.
  /// [tenantId] The Tenant ID of the System Assigned Managed Service Identity that is configured on this Event Grid System Topic.
  /// [type] The type of Managed Service Identity that is configured on this Event Grid System Topic.
  GetSystemTopicIdentity({
    required this.identityIds,
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory GetSystemTopicIdentity.fromMap(Map<String, dynamic> map) {
    return GetSystemTopicIdentity(
      identityIds: ((map['identityIds'] as List).cast<String>()).input(),
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

