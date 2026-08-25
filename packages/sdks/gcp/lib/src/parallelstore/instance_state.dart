// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Output only. List of access_points.
  /// Contains a list of IPv4 addresses used for client side configuration.
  final pulumi.Input<List<String>?>? accessPoints;
  /// Required. Immutable. Storage capacity of Parallelstore instance in Gibibytes (GiB).
  final pulumi.Input<String?>? capacityGib;
  /// The time when the instance was created.
  final pulumi.Input<String?>? createTime;
  /// The version of DAOS software running in the instance.
  final pulumi.Input<String?>? daosVersion;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Parallelstore Instance deployment type.
  /// Possible values:
  /// DEPLOYMENT_TYPE_UNSPECIFIED
  /// SCRATCH
  /// PERSISTENT
  final pulumi.Input<String?>? deploymentType;
  /// The description of the instance. 2048 characters or less.
  final pulumi.Input<String?>? description;
  /// Stripe level for directories.
  /// MIN when directory has a small number of files.
  /// MAX when directory has a large number of files.
  /// Possible values:
  /// DIRECTORY_STRIPE_LEVEL_UNSPECIFIED
  /// DIRECTORY_STRIPE_LEVEL_MIN
  /// DIRECTORY_STRIPE_LEVEL_BALANCED
  /// DIRECTORY_STRIPE_LEVEL_MAX
  final pulumi.Input<String?>? directoryStripeLevel;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Immutable. Contains the id of the allocated IP address
  /// range associated with the private service access connection for example, \"test-default\"
  /// associated with IP range 10.0.0.0/29. This field is populated by the service
  /// and contains the value currently used by the service.
  final pulumi.Input<String?>? effectiveReservedIpRange;
  /// Stripe level for files.
  /// MIN better suited for small size files.
  /// MAX higher throughput performance for larger files.
  /// Possible values:
  /// FILE_STRIPE_LEVEL_UNSPECIFIED
  /// FILE_STRIPE_LEVEL_MIN
  /// FILE_STRIPE_LEVEL_BALANCED
  /// FILE_STRIPE_LEVEL_MAX
  final pulumi.Input<String?>? fileStripeLevel;
  /// The logical name of the Parallelstore instance in the user project with the following restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the customer project/ location
  final pulumi.Input<String?>? instanceId;
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
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Part of `parent`. See documentation of `projectsId`.
  final pulumi.Input<String?>? location;
  /// Identifier. The resource name of the instance, in the format
  /// `projects/{project}/locations/{location}/instances/{instance_id}`
  final pulumi.Input<String?>? name;
  /// Immutable. The name of the Google Compute Engine [VPC network](https://cloud.google.com/vpc/docs/vpc)
  /// to which the instance is connected.
  final pulumi.Input<String?>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Immutable. Contains the id of the allocated IP address range
  /// associated with the private service access connection for example, \"test-default\"
  /// associated with IP range 10.0.0.0/29. If no range id is provided all ranges will
  /// be considered.
  final pulumi.Input<String?>? reservedIpRange;
  /// The instance state.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// FAILED
  /// UPGRADING
  final pulumi.Input<String?>? state;
  /// The time when the instance was updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [InstanceState].
  /// [accessPoints] Output only. List of access_points.
  /// [capacityGib] Required. Immutable. Storage capacity of Parallelstore instance in Gibibytes (GiB).
  /// [createTime] The time when the instance was created.
  /// [daosVersion] The version of DAOS software running in the instance.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const InstanceState({
    this.accessPoints,
    this.capacityGib,
    this.createTime,
    this.daosVersion,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      accessPoints: (() { final guardedValue = map['accessPoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      capacityGib: (() { final guardedValue = map['capacityGib']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      daosVersion: (() { final guardedValue = map['daosVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentType: (() { final guardedValue = map['deploymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryStripeLevel: (() { final guardedValue = map['directoryStripeLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveReservedIpRange: (() { final guardedValue = map['effectiveReservedIpRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileStripeLevel: (() { final guardedValue = map['fileStripeLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      reservedIpRange: (() { final guardedValue = map['reservedIpRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
