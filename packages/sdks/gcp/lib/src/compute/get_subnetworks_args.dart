// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_subnetworks_get_subnetworks_args_doc}
/// Arguments for getSubnetworks.
/// {@endtemplate}
/// {@macro pulumi_compute_get_subnetworks_get_subnetworks_args_doc}
class GetSubnetworksArgs {
  /// A string filter as defined in the [REST API](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks/list#query-parameters).
  final pulumi.Input<String>? filter;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region this subnetwork has been created in. If
  /// unspecified, this defaults to the region configured in the provider.
  final pulumi.Input<String>? region;

  /// Creates a new [GetSubnetworksArgs].
  /// [filter] A string filter as defined in the [REST API](https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks/list#query-parameters).
  /// [project] The ID of the project in which the resource belongs. If it
  /// [region] The region this subnetwork has been created in. If
  GetSubnetworksArgs({this.filter, this.project, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetSubnetworksArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetworksArgs(
      filter: (() {
        final guardedValue = map['filter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
