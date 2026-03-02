// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_access_connector_egress_setting_appengine_v1beta.dart';

/// VPC access connector specification.
class VpcAccessConnectorAppengineV1beta {
  /// The egress setting for the connector, controlling what traffic is diverted through it.
  final pulumi.Input<VpcAccessConnectorEgressSettingAppengineV1beta>? egressSetting;
  /// Full Serverless VPC Access Connector name e.g. projects/my-project/locations/us-central1/connectors/c1.
  final pulumi.Input<String>? name;

  /// Creates a new [VpcAccessConnectorAppengineV1beta].
  /// [egressSetting] The egress setting for the connector, controlling what traffic is diverted through it.
  /// [name] Full Serverless VPC Access Connector name e.g. projects/my-project/locations/us-central1/connectors/c1.
  VpcAccessConnectorAppengineV1beta({
    this.egressSetting,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressSetting': ?pulumi.Input.mapOptionalInputValue<VpcAccessConnectorEgressSettingAppengineV1beta, String>(egressSetting, (value) => value.value),
      'name': ?name,
    };
  }

  factory VpcAccessConnectorAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return VpcAccessConnectorAppengineV1beta(
      egressSetting: map['egressSetting'] == null ? null : (VpcAccessConnectorEgressSettingAppengineV1beta.fromValue(map['egressSetting'] as String)).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

