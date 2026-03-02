// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HciClusterIdentity {
  /// The Principal ID associated with this Managed Service Identity.
  final pulumi.Input<String>? principalId;
  /// The Tenant ID of the Azure Active Directory which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created.
  ///
  /// > **Note:** If unspecified the Tenant ID of the Provider will be used.
  final pulumi.Input<String>? tenantId;
  /// Specifies the type of Managed Service Identity that should be configured on the Azure Stack HCI Cluster. Possible value is `SystemAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [HciClusterIdentity].
  /// [principalId] The Principal ID associated with this Managed Service Identity.
  /// [tenantId] The Tenant ID of the Azure Active Directory which is used by the Azure Stack HCI Cluster. Changing this forces a new resource to be created.
  /// [type] Specifies the type of Managed Service Identity that should be configured on the Azure Stack HCI Cluster. Possible value is `SystemAssigned`.
  HciClusterIdentity({
    this.principalId,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory HciClusterIdentity.fromMap(Map<String, dynamic> map) {
    return HciClusterIdentity(
      principalId: map['principalId'] == null ? null : (map['principalId']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

