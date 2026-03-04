// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_cluster_authorization.dart';
import 'aws_cluster_binary_authorization.dart';
import 'aws_cluster_control_plane.dart';
import 'aws_cluster_fleet.dart';
import 'aws_cluster_logging_config.dart';
import 'aws_cluster_networking.dart';

/// {@template pulumi_container_aws_cluster_aws_cluster_args_doc}
/// The set of arguments for AwsCluster.
/// {@endtemplate}
/// {@macro pulumi_container_aws_cluster_aws_cluster_args_doc}
class AwsClusterArgs {
  /// Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Configuration related to the cluster RBAC settings.
  final pulumi.Input<AwsClusterAuthorization> authorization;

  /// The AWS region where the cluster runs. Each Google Cloud region supports a subset of nearby AWS regions. You can call to list all supported AWS regions within a given Google Cloud region.
  final pulumi.Input<String> awsRegion;

  /// Configuration options for the Binary Authorization feature.
  final pulumi.Input<AwsClusterBinaryAuthorization>? binaryAuthorization;

  /// Configuration related to the cluster control plane.
  final pulumi.Input<AwsClusterControlPlane> controlPlane;

  /// Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes.
  final pulumi.Input<String>? description;

  /// Fleet configuration.
  final pulumi.Input<AwsClusterFleet> fleet;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// Logging configuration.
  final pulumi.Input<AwsClusterLoggingConfig>? loggingConfig;

  /// The name of this resource.
  final pulumi.Input<String>? name;

  /// Cluster-wide networking configuration.
  final pulumi.Input<AwsClusterNetworking> networking;

  /// The project for the resource
  final pulumi.Input<String>? project;

  /// Creates a new [AwsClusterArgs].
  /// [annotations] Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Key can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between.
  /// [authorization] Configuration related to the cluster RBAC settings.
  /// [awsRegion] The AWS region where the cluster runs. Each Google Cloud region supports a subset of nearby AWS regions. You can call to list all supported AWS regions within a given Google Cloud region.
  /// [binaryAuthorization] Configuration options for the Binary Authorization feature.
  /// [controlPlane] Configuration related to the cluster control plane.
  /// [description] Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes.
  /// [fleet] Fleet configuration.
  /// [location] The location for the resource
  /// [loggingConfig] Logging configuration.
  /// [name] The name of this resource.
  /// [networking] Cluster-wide networking configuration.
  /// [project] The project for the resource
  AwsClusterArgs({
    this.annotations,
    required this.authorization,
    required this.awsRegion,
    this.binaryAuthorization,
    required this.controlPlane,
    this.description,
    required this.fleet,
    required this.location,
    this.loggingConfig,
    this.name,
    required this.networking,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authorization':
          pulumi.Input.mapInputValue<
            AwsClusterAuthorization,
            Map<String, dynamic>
          >(authorization, (value) => value.toMap()),
      'awsRegion': awsRegion,
      'binaryAuthorization':
          ?pulumi.Input.mapOptionalInputValue<
            AwsClusterBinaryAuthorization,
            Map<String, dynamic>
          >(binaryAuthorization, (value) => value.toMap()),
      'controlPlane':
          pulumi.Input.mapInputValue<
            AwsClusterControlPlane,
            Map<String, dynamic>
          >(controlPlane, (value) => value.toMap()),
      'description': ?description,
      'fleet':
          pulumi.Input.mapInputValue<AwsClusterFleet, Map<String, dynamic>>(
            fleet,
            (value) => value.toMap(),
          ),
      'location': location,
      'loggingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AwsClusterLoggingConfig,
            Map<String, dynamic>
          >(loggingConfig, (value) => value.toMap()),
      'name': ?name,
      'networking':
          pulumi.Input.mapInputValue<
            AwsClusterNetworking,
            Map<String, dynamic>
          >(networking, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory AwsClusterArgs.fromMap(Map<String, dynamic> map) {
    return AwsClusterArgs(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      authorization: pulumi.Input.fromValue(
        AwsClusterAuthorization.fromMap(
          (map['authorization']! as Map).cast<String, dynamic>(),
        ),
      ),
      awsRegion: pulumi.Input.fromValue(map['awsRegion'] as String),
      binaryAuthorization: (() {
        final guardedValue = map['binaryAuthorization'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AwsClusterBinaryAuthorization.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      controlPlane: pulumi.Input.fromValue(
        AwsClusterControlPlane.fromMap(
          (map['controlPlane']! as Map).cast<String, dynamic>(),
        ),
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fleet: pulumi.Input.fromValue(
        AwsClusterFleet.fromMap((map['fleet']! as Map).cast<String, dynamic>()),
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      loggingConfig: (() {
        final guardedValue = map['loggingConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AwsClusterLoggingConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networking: pulumi.Input.fromValue(
        AwsClusterNetworking.fromMap(
          (map['networking']! as Map).cast<String, dynamic>(),
        ),
      ),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
