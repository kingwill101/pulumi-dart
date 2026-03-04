// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_cluster.dart';
import 'network_config.dart';
import 'private_cloud_type.dart';

/// {@template pulumi_vmwareengine_v1_private_cloud_args_doc}
/// The set of arguments for PrivateCloud.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_private_cloud_args_doc}
class PrivateCloudArgs {
  /// User-provided description for this private cloud.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? location;

  /// Input only. The management cluster for this private cloud. This field is required during creation of the private cloud to provide details for the default cluster. The following fields can't be changed after private cloud creation: `ManagementCluster.clusterId`, `ManagementCluster.nodeTypeId`.
  final pulumi.Input<ManagementCluster> managementCluster;

  /// Network configuration of the private cloud.
  final pulumi.Input<NetworkConfig> networkConfig;

  /// Required. The user-provided identifier of the private cloud to be created. This identifier must be unique among each `PrivateCloud` within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  /// Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Optional. Type of the private cloud. Defaults to STANDARD.
  final pulumi.Input<PrivateCloudType>? type;

  /// Creates a new [PrivateCloudArgs].
  /// [description] User-provided description for this private cloud.
  /// [location] Optional.
  /// [managementCluster] Input only. The management cluster for this private cloud. This field is required during creation of the private cloud to provide details for the default cluster. The following fields can't be changed after private cloud creation: `ManagementCluster.clusterId`, `ManagementCluster.nodeTypeId`.
  /// [networkConfig] Network configuration of the private cloud.
  /// [privateCloudId] Required. The user-provided identifier of the private cloud to be created. This identifier must be unique among each `PrivateCloud` within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  /// [project] Optional.
  /// [requestId] Optional. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [type] Optional. Type of the private cloud. Defaults to STANDARD.
  PrivateCloudArgs({
    this.description,
    this.location,
    required this.managementCluster,
    required this.networkConfig,
    required this.privateCloudId,
    this.project,
    this.requestId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': ?location,
      'managementCluster':
          pulumi.Input.mapInputValue<ManagementCluster, Map<String, dynamic>>(
            managementCluster,
            (value) => value.toMap(),
          ),
      'networkConfig':
          pulumi.Input.mapInputValue<NetworkConfig, Map<String, dynamic>>(
            networkConfig,
            (value) => value.toMap(),
          ),
      'privateCloudId': privateCloudId,
      'project': ?project,
      'requestId': ?requestId,
      'type': ?pulumi.Input.mapOptionalInputValue<PrivateCloudType, String>(
        type,
        (value) => value.wireValue,
      ),
    };
  }

  factory PrivateCloudArgs.fromMap(Map<String, dynamic> map) {
    return PrivateCloudArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managementCluster: pulumi.Input.fromValue(
        ManagementCluster.fromMap(
          (map['managementCluster']! as Map).cast<String, dynamic>(),
        ),
      ),
      networkConfig: pulumi.Input.fromValue(
        NetworkConfig.fromMap(
          (map['networkConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      privateCloudId: pulumi.Input.fromValue(map['privateCloudId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requestId: (() {
        final guardedValue = map['requestId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PrivateCloudType.fromValue(guardedValue as String),
        );
      })(),
    );
  }
}
