// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VPC access connector specification.
class VpcAccessConnectorResponseAppengineV1beta {
  /// The egress setting for the connector, controlling what traffic is diverted through it.
  final pulumi.Input<String> egressSetting;
  /// Full Serverless VPC Access Connector name e.g. projects/my-project/locations/us-central1/connectors/c1.
  final pulumi.Input<String> name;

  /// Creates a new [VpcAccessConnectorResponseAppengineV1beta].
  /// [egressSetting] The egress setting for the connector, controlling what traffic is diverted through it.
  /// [name] Full Serverless VPC Access Connector name e.g. projects/my-project/locations/us-central1/connectors/c1.
  const VpcAccessConnectorResponseAppengineV1beta({
    required this.egressSetting,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressSetting': egressSetting,
      'name': name,
    };
  }

  factory VpcAccessConnectorResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return VpcAccessConnectorResponseAppengineV1beta(
      egressSetting: pulumi.Input.fromValue(map['egressSetting'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
