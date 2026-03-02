// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabric_application_type_version_args_doc}
/// The set of arguments for ApplicationTypeVersion.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_application_type_version_args_doc}
class ApplicationTypeVersionArgs {
  /// The URL to the application package
  final pulumi.Input<String> appPackageUrl;
  /// The name of the application type name resource.
  final pulumi.Input<String> applicationTypeName;
  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The application type version.
  final pulumi.Input<String>? version;

  /// Creates a new [ApplicationTypeVersionArgs].
  /// [appPackageUrl] The URL to the application package
  /// [applicationTypeName] The name of the application type name resource.
  /// [clusterName] The name of the cluster resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [version] The application type version.
  ApplicationTypeVersionArgs({
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

  factory ApplicationTypeVersionArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationTypeVersionArgs(
      appPackageUrl: (map['appPackageUrl'] as String).input(),
      applicationTypeName: (map['applicationTypeName'] as String).input(),
      clusterName: (map['clusterName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

