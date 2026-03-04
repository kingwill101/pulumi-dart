// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AadConfiguration {
  /// The list of Azure Active Directory group object IDs that will have an administrative role on the Kubernetes cluster.
  final pulumi.Input<List<String>> adminGroupObjectIds;

  /// Creates a new [AadConfiguration].
  /// [adminGroupObjectIds] The list of Azure Active Directory group object IDs that will have an administrative role on the Kubernetes cluster.
  AadConfiguration({required this.adminGroupObjectIds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'adminGroupObjectIds': adminGroupObjectIds};
  }

  factory AadConfiguration.fromMap(Map<String, dynamic> map) {
    return AadConfiguration(
      adminGroupObjectIds: pulumi.Input.fromValue(
        (map['adminGroupObjectIds'] as List).cast<String>(),
      ),
    );
  }
}
