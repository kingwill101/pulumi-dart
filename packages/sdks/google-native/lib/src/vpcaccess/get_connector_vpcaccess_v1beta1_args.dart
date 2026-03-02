// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpcaccess_v1beta1_get_connector_vpcaccess_v1beta1_args_doc}
/// Arguments for getConnector.
/// {@endtemplate}
/// {@macro pulumi_vpcaccess_v1beta1_get_connector_vpcaccess_v1beta1_args_doc}
class GetConnectorVpcaccessV1beta1Args {
  final pulumi.Input<String> connectorId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectorVpcaccessV1beta1Args].
  /// [connectorId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetConnectorVpcaccessV1beta1Args({
    required this.connectorId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectorId': connectorId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetConnectorVpcaccessV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetConnectorVpcaccessV1beta1Args(
      connectorId: (map['connectorId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

