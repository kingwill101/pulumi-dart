// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VPC access connector specification.
class VpcAccessConnectorResponse {
  /// The egress setting for the connector, controlling what traffic is diverted through it.
  final pulumi.Input<String> egressSetting;
  /// Full Serverless VPC Access Connector name e.g. projects/my-project/locations/us-central1/connectors/c1.
  final pulumi.Input<String> name;

  /// Creates a new [VpcAccessConnectorResponse].
  /// [egressSetting] The egress setting for the connector, controlling what traffic is diverted through it.
  /// [name] Full Serverless VPC Access Connector name e.g. projects/my-project/locations/us-central1/connectors/c1.
  VpcAccessConnectorResponse({
    required this.egressSetting,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressSetting': egressSetting,
      'name': name,
    };
  }

  factory VpcAccessConnectorResponse.fromMap(Map<String, dynamic> map) {
    return VpcAccessConnectorResponse(
      egressSetting: (map['egressSetting'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

