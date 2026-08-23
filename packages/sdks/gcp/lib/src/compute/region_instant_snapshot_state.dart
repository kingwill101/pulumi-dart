// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instant_snapshot_params.dart';
import 'region_instant_snapshot_resource_status.dart';

/// Input properties used for looking up and filtering RegionInstantSnapshot resources.
class RegionInstantSnapshotState {
  /// The architecture of the instant snapshot.
  final pulumi.Input<String>? architecture;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Size of the snapshot, specified in GB.
  final pulumi.Input<int>? diskSizeGb;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The fingerprint used for optimistic locking of this resource. Used
  /// internally during updates.
  final pulumi.Input<String>? labelFingerprint;
  /// Labels to apply to this InstantSnapshot.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  final pulumi.Input<RegionInstantSnapshotParams>? params;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// A reference to the region where the disk is located.
  final pulumi.Input<String>? region;
  /// Resource status for the instant snapshot.
  /// Structure is documented below.
  final pulumi.Input<List<RegionInstantSnapshotResourceStatus>>? resourceStatuses;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// The source disk used to create this instant snapshot. You can provide this as a partial or full URL to the resource.
  final pulumi.Input<String>? sourceDisk;
  /// The ID value of the disk used to create this InstantSnapshot.
  final pulumi.Input<String>? sourceDiskId;
  /// URL of the source instant snapshot group.
  final pulumi.Input<String>? sourceInstantSnapshotGroup;
  /// The unique ID of the source instant snapshot group.
  final pulumi.Input<String>? sourceInstantSnapshotGroupId;
  /// The status of the instant snapshot.
  final pulumi.Input<String>? status;

  /// Creates a new [RegionInstantSnapshotState].
  /// [architecture] The architecture of the instant snapshot.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [diskSizeGb] Size of the snapshot, specified in GB.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labelFingerprint] The fingerprint used for optimistic locking of this resource. Used
  /// [labels] Labels to apply to this InstantSnapshot.
  /// [name] Name of the resource; provided by the client when the resource is
  /// [params] Additional params passed with the request, but not persisted as part of resource payload
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] A reference to the region where the disk is located.
  /// [resourceStatuses] Resource status for the instant snapshot.
  /// [selfLink] The URI of the created resource.
  /// [sourceDisk] The source disk used to create this instant snapshot. You can provide this as a partial or full URL to the resource.
  /// [sourceDiskId] The ID value of the disk used to create this InstantSnapshot.
  /// [sourceInstantSnapshotGroup] URL of the source instant snapshot group.
  /// [sourceInstantSnapshotGroupId] The unique ID of the source instant snapshot group.
  /// [status] The status of the instant snapshot.
  const RegionInstantSnapshotState({
    this.architecture,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.diskSizeGb,
    this.effectiveLabels,
    this.labelFingerprint,
    this.labels,
    this.name,
    this.params,
    this.project,
    this.pulumiLabels,
    this.region,
    this.resourceStatuses,
    this.selfLink,
    this.sourceDisk,
    this.sourceDiskId,
    this.sourceInstantSnapshotGroup,
    this.sourceInstantSnapshotGroupId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'diskSizeGb': ?diskSizeGb,
      'effectiveLabels': ?effectiveLabels,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'name': ?name,
      'params': ?pulumi.Input.mapOptionalInputValue<RegionInstantSnapshotParams, Map<String, dynamic>>(params, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'resourceStatuses': ?pulumi.Input.mapOptionalInputValue<List<RegionInstantSnapshotResourceStatus>, List<Map<String, dynamic>>>(resourceStatuses, (value) => pulumi.Input.encodeList<RegionInstantSnapshotResourceStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selfLink': ?selfLink,
      'sourceDisk': ?sourceDisk,
      'sourceDiskId': ?sourceDiskId,
      'sourceInstantSnapshotGroup': ?sourceInstantSnapshotGroup,
      'sourceInstantSnapshotGroupId': ?sourceInstantSnapshotGroupId,
      'status': ?status,
    };
  }

  factory RegionInstantSnapshotState.fromMap(Map<String, dynamic> map) {
    return RegionInstantSnapshotState(
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionInstantSnapshotParams.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceStatuses: (() { final guardedValue = map['resourceStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionInstantSnapshotResourceStatus>(guardedValue, (value) => RegionInstantSnapshotResourceStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDisk: (() { final guardedValue = map['sourceDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDiskId: (() { final guardedValue = map['sourceDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceInstantSnapshotGroup: (() { final guardedValue = map['sourceInstantSnapshotGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceInstantSnapshotGroupId: (() { final guardedValue = map['sourceInstantSnapshotGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
