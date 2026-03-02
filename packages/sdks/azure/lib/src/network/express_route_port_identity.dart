// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExpressRoutePortIdentity {
  /// Specifies a list of User Assigned Managed Identity IDs to be assigned to this Express Route Port.
  final pulumi.Input<List<String>>? identityIds;
  final pulumi.Input<String>? principalId;
  final pulumi.Input<String>? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on this Express Route Port. Only possible value is `UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [ExpressRoutePortIdentity].
  /// [identityIds] Specifies a list of User Assigned Managed Identity IDs to be assigned to this Express Route Port.
  /// [principalId] Optional.
  /// [tenantId] Optional.
  /// [type] Specifies the type of Managed Service Identity that should be configured on this Express Route Port. Only possible value is `UserAssigned`.
  ExpressRoutePortIdentity({
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

  factory ExpressRoutePortIdentity.fromMap(Map<String, dynamic> map) {
    return ExpressRoutePortIdentity(
      identityIds: map['identityIds'] == null ? null : ((map['identityIds'] as List).cast<String>()).input(),
      principalId: map['principalId'] == null ? null : (map['principalId'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

