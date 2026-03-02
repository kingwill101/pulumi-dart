// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiscoveryVirtualInstanceIdentity {
  /// A list of User Assigned Managed Identity IDs to be assigned to this SAP Discovery Virtual Instance.
  final pulumi.Input<List<String>> identityIds;
  /// The type of Managed Service Identity that should be configured on this SAP Discovery Virtual Instance. The only possible value is `UserAssigned`.
  final pulumi.Input<String> type;

  /// Creates a new [DiscoveryVirtualInstanceIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs to be assigned to this SAP Discovery Virtual Instance.
  /// [type] The type of Managed Service Identity that should be configured on this SAP Discovery Virtual Instance. The only possible value is `UserAssigned`.
  DiscoveryVirtualInstanceIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory DiscoveryVirtualInstanceIdentity.fromMap(Map<String, dynamic> map) {
    return DiscoveryVirtualInstanceIdentity(
      identityIds: ((map['identityIds'] as List).cast<String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

