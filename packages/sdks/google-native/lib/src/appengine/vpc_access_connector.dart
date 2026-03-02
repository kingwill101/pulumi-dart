// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_access_connector_egress_setting.dart';

/// VPC access connector specification.
class VpcAccessConnector {
  /// The egress setting for the connector, controlling what traffic is diverted through it.
  final pulumi.Input<VpcAccessConnectorEgressSetting>? egressSetting;
  /// Full Serverless VPC Access Connector name e.g. projects/my-project/locations/us-central1/connectors/c1.
  final pulumi.Input<String>? name;

  /// Creates a new [VpcAccessConnector].
  /// [egressSetting] The egress setting for the connector, controlling what traffic is diverted through it.
  /// [name] Full Serverless VPC Access Connector name e.g. projects/my-project/locations/us-central1/connectors/c1.
  VpcAccessConnector({
    this.egressSetting,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressSetting': ?pulumi.Input.mapOptionalInputValue<VpcAccessConnectorEgressSetting, String>(egressSetting, (value) => value.value),
      'name': ?name,
    };
  }

  factory VpcAccessConnector.fromMap(Map<String, dynamic> map) {
    return VpcAccessConnector(
      egressSetting: map['egressSetting'] == null ? null : (VpcAccessConnectorEgressSetting.fromValue(map['egressSetting']! as String)).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

