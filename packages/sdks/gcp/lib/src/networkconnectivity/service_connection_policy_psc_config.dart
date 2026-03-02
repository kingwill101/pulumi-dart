// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceConnectionPolicyPscConfig {
  /// List of Projects, Folders, or Organizations from where the Producer instance can be within. For example,
  /// a network administrator can provide both 'organizations/foo' and 'projects/bar' as
  /// allowed_google_producers_resource_hierarchy_levels. This allowlists this network to connect with any Producer
  /// instance within the 'foo' organization or the 'bar' project. By default,
  /// allowedGoogleProducersResourceHierarchyLevel is empty. The format for each
  /// allowedGoogleProducersResourceHierarchyLevel is / where is one of 'projects', 'folders', or 'organizations'
  /// and is either the ID or the number of the resource type. Format for each
  /// allowedGoogleProducersResourceHierarchyLevel value: 'projects/' or 'folders/' or 'organizations/' Eg.
  /// [projects/my-project-id, projects/567, folders/891, organizations/123]
  final pulumi.Input<List<String>>? allowedGoogleProducersResourceHierarchyLevels;
  /// Max number of PSC connections for this policy.
  final pulumi.Input<String>? limit;
  /// ProducerInstanceLocation is used to specify which authorization mechanism to use to determine which projects
  /// the Producer instance can be within.
  /// Possible values are: `PRODUCER_INSTANCE_LOCATION_UNSPECIFIED`, `CUSTOM_RESOURCE_HIERARCHY_LEVELS`.
  final pulumi.Input<String>? producerInstanceLocation;
  /// IDs of the subnetworks or fully qualified identifiers for the subnetworks
  final pulumi.Input<List<String>> subnetworks;

  /// Creates a new [ServiceConnectionPolicyPscConfig].
  /// [allowedGoogleProducersResourceHierarchyLevels] List of Projects, Folders, or Organizations from where the Producer instance can be within. For example,
  /// [limit] Max number of PSC connections for this policy.
  /// [producerInstanceLocation] ProducerInstanceLocation is used to specify which authorization mechanism to use to determine which projects
  /// [subnetworks] IDs of the subnetworks or fully qualified identifiers for the subnetworks
  ServiceConnectionPolicyPscConfig({
    this.allowedGoogleProducersResourceHierarchyLevels,
    this.limit,
    this.producerInstanceLocation,
    required this.subnetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedGoogleProducersResourceHierarchyLevels': ?allowedGoogleProducersResourceHierarchyLevels,
      'limit': ?limit,
      'producerInstanceLocation': ?producerInstanceLocation,
      'subnetworks': subnetworks,
    };
  }

  factory ServiceConnectionPolicyPscConfig.fromMap(Map<String, dynamic> map) {
    return ServiceConnectionPolicyPscConfig(
      allowedGoogleProducersResourceHierarchyLevels: map['allowedGoogleProducersResourceHierarchyLevels'] == null ? null : ((map['allowedGoogleProducersResourceHierarchyLevels']! as List).cast<String>()).input(),
      limit: map['limit'] == null ? null : (map['limit']! as String).input(),
      producerInstanceLocation: map['producerInstanceLocation'] == null ? null : (map['producerInstanceLocation']! as String).input(),
      subnetworks: ((map['subnetworks'] as List).cast<String>()).input(),
    );
  }
}

