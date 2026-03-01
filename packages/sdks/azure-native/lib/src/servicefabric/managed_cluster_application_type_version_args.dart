// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_managed_cluster_application_type_version_args_doc}
/// The set of arguments for ManagedClusterApplicationTypeVersion.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_managed_cluster_application_type_version_args_doc}
class ManagedClusterApplicationTypeVersionArgs {
  /// The URL to the application package
  final pulumi.Input<String> appPackageUrl;
  /// The name of the application type name resource.
  final pulumi.Input<String> applicationTypeName;
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// Resource location depends on the parent resource.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Azure resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The application type version.
  final pulumi.Input<String>? version;

  /// Creates a new [ManagedClusterApplicationTypeVersionArgs].
  /// [appPackageUrl] The URL to the application package
  /// [applicationTypeName] The name of the application type name resource.
  /// [clusterName] The name of the cluster resource.
  /// [location] Resource location depends on the parent resource.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Azure resource tags.
  /// [version] The application type version.
  ManagedClusterApplicationTypeVersionArgs({
    required pulumi.Output<String> appPackageUrl,
    required pulumi.Output<String> applicationTypeName,
    required pulumi.Output<String> clusterName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
  }) :
      appPackageUrl = pulumi.Input.asInput<String>(appPackageUrl),
      applicationTypeName = pulumi.Input.asInput<String>(applicationTypeName),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appPackageUrl': appPackageUrl,
      'applicationTypeName': applicationTypeName,
      'clusterName': clusterName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory ManagedClusterApplicationTypeVersionArgs.fromMap(Map<String, dynamic> map) {
    return ManagedClusterApplicationTypeVersionArgs(
      appPackageUrl: pulumi.Output.create<String>(map['appPackageUrl'] as String),
      applicationTypeName: pulumi.Output.create<String>(map['applicationTypeName'] as String),
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

