// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Output only. List of access_points.
  /// Contains a list of IPv4 addresses used for client side configuration.
  final pulumi.Input<List<String>>? accessPoints;
  /// Required. Immutable. Storage capacity of Parallelstore instance in Gibibytes (GiB).
  final pulumi.Input<String>? capacityGib;
  /// The time when the instance was created.
  final pulumi.Input<String>? createTime;
  /// The version of DAOS software running in the instance.
  final pulumi.Input<String>? daosVersion;
  /// Parallelstore Instance deployment type.
  /// Possible values:
  /// DEPLOYMENT_TYPE_UNSPECIFIED
  /// SCRATCH
  /// PERSISTENT
  final pulumi.Input<String>? deploymentType;
  /// The description of the instance. 2048 characters or less.
  final pulumi.Input<String>? description;
  /// Stripe level for directories.
  /// MIN when directory has a small number of files.
  /// MAX when directory has a large number of files.
  /// Possible values:
  /// DIRECTORY_STRIPE_LEVEL_UNSPECIFIED
  /// DIRECTORY_STRIPE_LEVEL_MIN
  /// DIRECTORY_STRIPE_LEVEL_BALANCED
  /// DIRECTORY_STRIPE_LEVEL_MAX
  final pulumi.Input<String>? directoryStripeLevel;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Immutable. Contains the id of the allocated IP address
  /// range associated with the private service access connection for example, \"test-default\"
  /// associated with IP range 10.0.0.0/29. This field is populated by the service
  /// and contains the value currently used by the service.
  final pulumi.Input<String>? effectiveReservedIpRange;
  /// Stripe level for files.
  /// MIN better suited for small size files.
  /// MAX higher throughput performance for larger files.
  /// Possible values:
  /// FILE_STRIPE_LEVEL_UNSPECIFIED
  /// FILE_STRIPE_LEVEL_MIN
  /// FILE_STRIPE_LEVEL_BALANCED
  /// FILE_STRIPE_LEVEL_MAX
  final pulumi.Input<String>? fileStripeLevel;
  /// The logical name of the Parallelstore instance in the user project with the following restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the customer project/ location
  final pulumi.Input<String>? instanceId;
  /// Cloud Labels are a flexible and lightweight mechanism for
  /// organizing cloud resources into groups that reflect a customer's organizational
  /// needs and deployment strategies. Cloud Labels can be used to filter collections
  /// of resources. They can be used to control how resource metrics are aggregated.
  /// And they can be used as arguments to policy management rules (e.g. route, firewall,
  /// load balancing, etc.).
  /// * Label keys must be between 1 and 63 characters long and must conform to
  /// the following regular expression: `a-z{0,62}`.
  /// * Label values must be between 0 and 63 characters long and must conform
  /// to the regular expression `[a-z0-9_-]{0,63}`.
  /// * No more than 64 labels can be associated with a given resource.
  /// See https://goo.gl/xmQnxf for more information on and examples of labels.
  /// If you plan to use labels in your own code, please note that additional
  /// characters may be allowed in the future. Therefore, you are advised to use
  /// an internal label representation, such as JSON, which doesn't rely upon
  /// specific characters being disallowed.  For example, representing labels
  /// as the string:  `name + "_" + value` would prove problematic if we were to
  /// allow `"_"` in a future release. "
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Part of `parent`. See documentation of `projectsId`.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the instance, in the format
  /// `projects/{project}/locations/{location}/instances/{instance_id}`
  final pulumi.Input<String>? name;
  /// Immutable. The name of the Google Compute Engine [VPC network](https://cloud.google.com/vpc/docs/vpc)
  /// to which the instance is connected.
  final pulumi.Input<String>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Immutable. Contains the id of the allocated IP address range
  /// associated with the private service access connection for example, \"test-default\"
  /// associated with IP range 10.0.0.0/29. If no range id is provided all ranges will
  /// be considered.
  final pulumi.Input<String>? reservedIpRange;
  /// The instance state.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// FAILED
  /// UPGRADING
  final pulumi.Input<String>? state;
  /// The time when the instance was updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [InstanceState].
  /// [accessPoints] Output only. List of access_points.
  /// [capacityGib] Required. Immutable. Storage capacity of Parallelstore instance in Gibibytes (GiB).
  /// [createTime] The time when the instance was created.
  /// [daosVersion] The version of DAOS software running in the instance.
  /// [deploymentType] Parallelstore Instance deployment type.
  /// [description] The description of the instance. 2048 characters or less.
  /// [directoryStripeLevel] Stripe level for directories.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [effectiveReservedIpRange] Immutable. Contains the id of the allocated IP address
  /// [fileStripeLevel] Stripe level for files.
  /// [instanceId] The logical name of the Parallelstore instance in the user project with the following restrictions:
  /// [labels] Cloud Labels are a flexible and lightweight mechanism for
  /// [location] Part of `parent`. See documentation of `projectsId`.
  /// [name] Identifier. The resource name of the instance, in the format
  /// [network] Immutable. The name of the Google Compute Engine [VPC network](https://cloud.google.com/vpc/docs/vpc)
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reservedIpRange] Immutable. Contains the id of the allocated IP address range
  /// [state] The instance state.
  /// [updateTime] The time when the instance was updated.
  InstanceState({
    this.accessPoints,
    this.capacityGib,
    this.createTime,
    this.daosVersion,
    this.deploymentType,
    this.description,
    this.directoryStripeLevel,
    this.effectiveLabels,
    this.effectiveReservedIpRange,
    this.fileStripeLevel,
    this.instanceId,
    this.labels,
    this.location,
    this.name,
    this.network,
    this.project,
    this.pulumiLabels,
    this.reservedIpRange,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPoints': ?accessPoints,
      'capacityGib': ?capacityGib,
      'createTime': ?createTime,
      'daosVersion': ?daosVersion,
      'deploymentType': ?deploymentType,
      'description': ?description,
      'directoryStripeLevel': ?directoryStripeLevel,
      'effectiveLabels': ?effectiveLabels,
      'effectiveReservedIpRange': ?effectiveReservedIpRange,
      'fileStripeLevel': ?fileStripeLevel,
      'instanceId': ?instanceId,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reservedIpRange': ?reservedIpRange,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      accessPoints: map['accessPoints'] == null ? null : ((map['accessPoints'] as List).cast<String>()).input(),
      capacityGib: map['capacityGib'] == null ? null : (map['capacityGib'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      daosVersion: map['daosVersion'] == null ? null : (map['daosVersion'] as String).input(),
      deploymentType: map['deploymentType'] == null ? null : (map['deploymentType'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      directoryStripeLevel: map['directoryStripeLevel'] == null ? null : (map['directoryStripeLevel'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      effectiveReservedIpRange: map['effectiveReservedIpRange'] == null ? null : (map['effectiveReservedIpRange'] as String).input(),
      fileStripeLevel: map['fileStripeLevel'] == null ? null : (map['fileStripeLevel'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      reservedIpRange: map['reservedIpRange'] == null ? null : (map['reservedIpRange'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

