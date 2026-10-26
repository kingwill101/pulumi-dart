// ignore_for_file: unused_element, unnecessary_cast

import 'authority_response_gkehub_v1alpha.dart';
import 'membership_endpoint_response_gkehub_v1alpha.dart';
import 'membership_state_response_gkehub_v1alpha.dart';
import 'monitoring_config_response_gkehub_v1alpha.dart';

/// Result data returned by getMembership.
class GetMembershipGkehubV1alphaResult {
  /// Optional. How to identify workloads from this Membership. See the documentation on Workload Identity for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  final AuthorityResponseGkehubV1alpha? authority;
  /// When the Membership was created.
  final String? createTime;
  /// When the Membership was deleted.
  final String? deleteTime;
  /// Description of this membership, limited to 63 characters. Must match the regex: `a-zA-Z0-9*` This field is present for legacy purposes.
  final String? description;
  /// Optional. Endpoint information to reach this member.
  final MembershipEndpointResponseGkehubV1alpha? endpoint;
  /// Optional. An externally-generated and managed ID for this Membership. This ID may be modified after creation, but this is not recommended. The ID must match the regex: `a-zA-Z0-9*` If this Membership represents a Kubernetes cluster, this value should be set to the UID of the `kube-system` namespace object.
  final String? externalId;
  /// Optional. Labels for this membership.
  final Map<String, String>? labels;
  /// For clusters using Connect, the timestamp of the most recent connection established with Google Cloud. This time is updated every several minutes, not continuously. For clusters that do not use GKE Connect, or that have never connected successfully, this field will be unset.
  final String? lastConnectionTime;
  /// Optional. The monitoring config information for this membership.
  final MonitoringConfigResponseGkehubV1alpha? monitoringConfig;
  /// The full, unique name of this Membership resource in the format `projects/*/locations/*/memberships/{membership_id}`, set during creation. `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  final String? name;
  /// State of the Membership resource.
  final MembershipStateResponseGkehubV1alpha? state;
  /// Google-generated UUID for this resource. This is unique across all Membership resources. If a Membership resource is deleted and another resource with the same name is created, it gets a different unique_id.
  final String? uniqueId;
  /// When the Membership was last updated.
  final String? updateTime;

  /// Creates a new [GetMembershipGkehubV1alphaResult].
  /// [authority] Optional. How to identify workloads from this Membership. See the documentation on Workload Identity for more details: https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  /// [createTime] When the Membership was created.
  /// [deleteTime] When the Membership was deleted.
  /// [description] Description of this membership, limited to 63 characters. Must match the regex: `a-zA-Z0-9*` This field is present for legacy purposes.
  /// [endpoint] Optional. Endpoint information to reach this member.
  /// [externalId] Optional. An externally-generated and managed ID for this Membership. This ID may be modified after creation, but this is not recommended. The ID must match the regex: `a-zA-Z0-9*` If this Membership represents a Kubernetes cluster, this value should be set to the UID of the `kube-system` namespace object.
  /// [labels] Optional. Labels for this membership.
  /// [lastConnectionTime] For clusters using Connect, the timestamp of the most recent connection established with Google Cloud. This time is updated every several minutes, not continuously. For clusters that do not use GKE Connect, or that have never connected successfully, this field will be unset.
  /// [monitoringConfig] Optional. The monitoring config information for this membership.
  /// [name] The full, unique name of this Membership resource in the format `projects/*/locations/*/memberships/{membership_id}`, set during creation. `membership_id` must be a valid RFC 1123 compliant DNS label: 1. At most 63 characters in length 2. It must consist of lower case alphanumeric characters or `-` 3. It must start and end with an alphanumeric character Which can be expressed as the regex: `[a-z0-9]([-a-z0-9]*[a-z0-9])?`, with a maximum length of 63 characters.
  /// [state] State of the Membership resource.
  /// [uniqueId] Google-generated UUID for this resource. This is unique across all Membership resources. If a Membership resource is deleted and another resource with the same name is created, it gets a different unique_id.
  /// [updateTime] When the Membership was last updated.
  const GetMembershipGkehubV1alphaResult({
    this.authority,
    this.createTime,
    this.deleteTime,
    this.description,
    this.endpoint,
    this.externalId,
    this.labels,
    this.lastConnectionTime,
    this.monitoringConfig,
    this.name,
    this.state,
    this.uniqueId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authority': ?authority?.toMap(),
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'description': ?description,
      'endpoint': ?endpoint?.toMap(),
      'externalId': ?externalId,
      'labels': ?labels,
      'lastConnectionTime': ?lastConnectionTime,
      'monitoringConfig': ?monitoringConfig?.toMap(),
      'name': ?name,
      'state': ?state?.toMap(),
      'uniqueId': ?uniqueId,
      'updateTime': ?updateTime,
    };
  }

  factory GetMembershipGkehubV1alphaResult.fromMap(Map<String, dynamic> map) {
    return GetMembershipGkehubV1alphaResult(
      authority: (() { final guardedValue = map['authority']; if (guardedValue == null) return null; return AuthorityResponseGkehubV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return MembershipEndpointResponseGkehubV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      lastConnectionTime: (() { final guardedValue = map['lastConnectionTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monitoringConfig: (() { final guardedValue = map['monitoringConfig']; if (guardedValue == null) return null; return MonitoringConfigResponseGkehubV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return MembershipStateResponseGkehubV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      uniqueId: (() { final guardedValue = map['uniqueId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
