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
  final pulumi.Input<String?>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Azure resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The application type version.
  final pulumi.Input<String?>? version;

  /// Creates a new [ManagedClusterApplicationTypeVersionArgs].
  /// [appPackageUrl] The URL to the application package
  /// [applicationTypeName] The name of the application type name resource.
  /// [clusterName] The name of the cluster resource.
  /// [location] Resource location depends on the parent resource.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Azure resource tags.
  /// [version] The application type version.
  const ManagedClusterApplicationTypeVersionArgs({
    required this.appPackageUrl,
    required this.applicationTypeName,
    required this.clusterName,
    this.location,
    required this.resourceGroupName,
    this.tags,
    this.version,
  });

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
      appPackageUrl: pulumi.Input.fromValue(map['appPackageUrl'] as String),
      applicationTypeName: pulumi.Input.fromValue(map['applicationTypeName'] as String),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
