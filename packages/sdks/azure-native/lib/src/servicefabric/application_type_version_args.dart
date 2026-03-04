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
      appPackageUrl: pulumi.Input.fromValue(map['appPackageUrl'] as String),
      applicationTypeName: pulumi.Input.fromValue(
        map['applicationTypeName'] as String,
      ),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
