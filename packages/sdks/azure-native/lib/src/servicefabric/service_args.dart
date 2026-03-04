// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stateful_service_properties.dart';

/// {@template pulumi_servicefabric_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_servicefabric_service_args_doc}
class ServiceArgs {
  /// The name of the application resource.
  final pulumi.Input<String> applicationName;

  /// The name of the cluster resource.
  final pulumi.Input<String> clusterName;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// The service resource properties.
  final pulumi.Input<StatefulServiceProperties>? properties;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the service resource in the format of {applicationName}~{serviceName}.
  final pulumi.Input<String>? serviceName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceArgs].
  /// [applicationName] The name of the application resource.
  /// [clusterName] The name of the cluster resource.
  /// [location] The geo-location where the resource lives
  /// [properties] The service resource properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the service resource in the format of {applicationName}~{serviceName}.
  /// [tags] Resource tags.
  ServiceArgs({
    required this.applicationName,
    required this.clusterName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.serviceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'clusterName': clusterName,
      'location': ?location,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            StatefulServiceProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serviceName': ?serviceName,
      'tags': ?tags,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      applicationName: pulumi.Input.fromValue(map['applicationName'] as String),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StatefulServiceProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: (() {
        final guardedValue = map['serviceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
