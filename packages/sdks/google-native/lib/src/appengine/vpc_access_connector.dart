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
      'egressSetting': ?pulumi.Input.mapOptionalInputValue<VpcAccessConnectorEgressSetting, String>(egressSetting, (value) => value.wireValue),
      'name': ?name,
    };
  }

  factory VpcAccessConnector.fromMap(Map<String, dynamic> map) {
    return VpcAccessConnector(
      egressSetting: (() { final guardedValue = map['egressSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcAccessConnectorEgressSetting.fromValue(guardedValue as String)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

