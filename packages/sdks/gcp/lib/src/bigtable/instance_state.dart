// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_cluster.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// A block of cluster configuration options. This can be specified at least once, and up
  /// to as many as possible within 8 cloud regions. Removing the field entirely from the config will cause the provider
  /// to default to the backend value. See structure below.
  ///
  /// -----
  final pulumi.Input<List<InstanceCluster>?>? clusters;
  /// (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Whether or not to allow this provider to destroy the instance. Unless this field is set to false
  /// in the statefile, a `pulumi destroy` or `pulumi up` that would delete the instance will fail.
  final pulumi.Input<bool?>? deletionProtection;
  /// The human-readable display name of the Bigtable instance. Defaults to the instance `name`.
  final pulumi.Input<String?>? displayName;
  /// The edition of the Bigtable instance. One of "ENTERPRISE" or "ENTERPRISE_PLUS". Defaults to "ENTERPRISE". Details can be found at the [Cloud Bigtable editions page](https://docs.cloud.google.com/bigtable/docs/editions-overview).
  ///
  /// -----
  final pulumi.Input<String?>? edition;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Deleting a BigTable instance can be blocked if any backups are present in the instance. When `forceDestroy` is set to true, the Provider will delete all backups found in the BigTable instance before attempting to delete the instance itself. Defaults to false.
  final pulumi.Input<bool?>? forceDestroy;
  /// The instance type to create. One of `"DEVELOPMENT"` or `"PRODUCTION"`. Defaults to `"PRODUCTION"`.
  /// It is recommended to leave this field unspecified since the distinction between `"DEVELOPMENT"` and `"PRODUCTION"` instances is going away,
  /// and all instances will become `"PRODUCTION"` instances. This means that new and existing `"DEVELOPMENT"` instances will be converted to
  /// `"PRODUCTION"` instances. It is recommended for users to use `"PRODUCTION"` instances in any case, since a 1-node `"PRODUCTION"` instance
  /// is functionally identical to a `"DEVELOPMENT"` instance, but without the accompanying restrictions.
  final pulumi.Input<String?>? instanceType;
  /// A set of key/value label pairs to assign to the resource. Label keys must follow the requirements at https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The name (also called Instance Id in the Cloud Console) of the Cloud Bigtable instance. Must be 6-33 characters and must only contain hyphens, lowercase letters and numbers.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// A set of key/value label pairs to assign to the resource. Tags must follow the requirements at [create and manage tags](https://docs.cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing).
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [InstanceState].
  /// [clusters] A block of cluster configuration options. This can be specified at least once, and up
  /// [deletionPolicy] (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [deletionProtection] Whether or not to allow this provider to destroy the instance. Unless this field is set to false
  /// [displayName] The human-readable display name of the Bigtable instance. Defaults to the instance `name`.
  /// [edition] The edition of the Bigtable instance. One of "ENTERPRISE" or "ENTERPRISE_PLUS". Defaults to "ENTERPRISE". Details can be found at the [Cloud Bigtable editions page](https://docs.cloud.google.com/bigtable/docs/editions-overview).
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [forceDestroy] Deleting a BigTable instance can be blocked if any backups are present in the instance. When `forceDestroy` is set to true, the Provider will delete all backups found in the BigTable instance before attempting to delete the instance itself. Defaults to false.
  /// [instanceType] The instance type to create. One of `"DEVELOPMENT"` or `"PRODUCTION"`. Defaults to `"PRODUCTION"`.
  /// [labels] A set of key/value label pairs to assign to the resource. Label keys must follow the requirements at https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements.
  /// [name] The name (also called Instance Id in the Cloud Console) of the Cloud Bigtable instance. Must be 6-33 characters and must only contain hyphens, lowercase letters and numbers.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [tags] A set of key/value label pairs to assign to the resource. Tags must follow the requirements at [create and manage tags](https://docs.cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing).
  const InstanceState({
    this.clusters,
    this.deletionPolicy,
    this.deletionProtection,
    this.displayName,
    this.edition,
    this.effectiveLabels,
    this.forceDestroy,
    this.instanceType,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters': ?pulumi.Input.mapOptionalInputValue<List<InstanceCluster>, List<Map<String, dynamic>>>(clusters, (value) => pulumi.Input.encodeList<InstanceCluster, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'edition': ?edition,
      'effectiveLabels': ?effectiveLabels,
      'forceDestroy': ?forceDestroy,
      'instanceType': ?instanceType,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'tags': ?tags,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      clusters: (() { final guardedValue = map['clusters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceCluster>(guardedValue, (value) => InstanceCluster.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
