// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterPscConfig {
  /// Create an instance that allows connections from Private Service Connect endpoints to the instance.
  final pulumi.Input<bool?>? pscEnabled;
  /// (Output)
  /// The project number that needs to be allowlisted on the network attachment to enable outbound connectivity, if the network attachment is configured to ACCEPT_MANUAL connections.
  /// In case the network attachment is configured to ACCEPT_AUTOMATIC, this project number does not need to be allowlisted explicitly.
  final pulumi.Input<int?>? serviceOwnedProjectNumber;

  /// Creates a new [ClusterPscConfig].
  /// [pscEnabled] Create an instance that allows connections from Private Service Connect endpoints to the instance.
  /// [serviceOwnedProjectNumber] (Output)
  const ClusterPscConfig({
    this.pscEnabled,
    this.serviceOwnedProjectNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pscEnabled': ?pscEnabled,
      'serviceOwnedProjectNumber': ?serviceOwnedProjectNumber,
    };
  }

  factory ClusterPscConfig.fromMap(Map<String, dynamic> map) {
    return ClusterPscConfig(
      pscEnabled: (() { final guardedValue = map['pscEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceOwnedProjectNumber: (() { final guardedValue = map['serviceOwnedProjectNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
