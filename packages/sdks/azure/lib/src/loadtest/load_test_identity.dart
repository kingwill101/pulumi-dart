// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadTestIdentity {
  /// A list of the User Assigned Identity IDs that should be assigned to this Load Test.
  final pulumi.Input<List<String>>? identityIds;
  /// The Principal ID for the System-Assigned Managed Identity assigned to this Load Test.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID for the System-Assigned Managed Identity assigned to this Load Test.
  final pulumi.Input<String>? tenantId;
  /// Specifies the type of Managed Identity that should be assigned to this Load Test Encryption. Possible values are `SystemAssigned` or `UserAssigned`. Changing this forces a new Load Test to be created.
  final pulumi.Input<String> type;

  /// Creates a new [LoadTestIdentity].
  /// [identityIds] A list of the User Assigned Identity IDs that should be assigned to this Load Test.
  /// [principalId] The Principal ID for the System-Assigned Managed Identity assigned to this Load Test.
  /// [tenantId] The Tenant ID for the System-Assigned Managed Identity assigned to this Load Test.
  /// [type] Specifies the type of Managed Identity that should be assigned to this Load Test Encryption. Possible values are `SystemAssigned` or `UserAssigned`. Changing this forces a new Load Test to be created.
  LoadTestIdentity({
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

  factory LoadTestIdentity.fromMap(Map<String, dynamic> map) {
    return LoadTestIdentity(
      identityIds: map['identityIds'] == null ? null : ((map['identityIds']! as List).cast<String>()).input(),
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

