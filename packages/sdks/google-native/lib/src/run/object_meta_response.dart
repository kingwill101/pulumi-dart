// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'owner_reference_response.dart';

/// google.cloud.run.meta.v1.ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
class ObjectMetaResponse {
  /// Unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. In Cloud Run, annotations with 'run.googleapis.com/' and 'autoscaling.knative.dev' are restricted, and the accepted annotations will be different depending on the resource type. * `autoscaling.knative.dev/maxScale`: Revision. * `autoscaling.knative.dev/minScale`: Revision. * `run.googleapis.com/binary-authorization-breakglass`: Service, Job, * `run.googleapis.com/binary-authorization`: Service, Job, Execution. * `run.googleapis.com/client-name`: All resources. * `run.googleapis.com/cloudsql-instances`: Revision, Execution. * `run.googleapis.com/container-dependencies`: Revision. * `run.googleapis.com/cpu-throttling`: Revision. * `run.googleapis.com/custom-audiences`: Service. * `run.googleapis.com/description`: Service. * `run.googleapis.com/disable-default-url`: Service. * `run.googleapis.com/encryption-key-shutdown-hours`: Revision * `run.googleapis.com/encryption-key`: Revision, Execution. * `run.googleapis.com/execution-environment`: Revision, Execution. * `run.googleapis.com/gc-traffic-tags`: Service. * `run.googleapis.com/ingress`: Service. * `run.googleapis.com/launch-stage`: Service, Job. * `run.googleapis.com/minScale`: Service (ALPHA) * `run.googleapis.com/network-interfaces`: Revision, Execution. * `run.googleapis.com/post-key-revocation-action-type`: Revision. * `run.googleapis.com/secrets`: Revision, Execution. * `run.googleapis.com/secure-session-agent`: Revision. * `run.googleapis.com/sessionAffinity`: Revision. * `run.googleapis.com/startup-cpu-boost`: Revision. * `run.googleapis.com/vpc-access-connector`: Revision, Execution. * `run.googleapis.com/vpc-access-egress`: Revision, Execution.
  final pulumi.Input<Map<String, String>> annotations;
  /// Not supported by Cloud Run
  final pulumi.Input<String> clusterName;
  /// UTC timestamp representing the server time when this object was created.
  final pulumi.Input<String> creationTimestamp;
  /// Not supported by Cloud Run
  final pulumi.Input<int> deletionGracePeriodSeconds;
  /// The read-only soft deletion timestamp for this resource. In Cloud Run, users are not able to set this field. Instead, they must call the corresponding Delete API.
  final pulumi.Input<String> deletionTimestamp;
  /// Not supported by Cloud Run
  final pulumi.Input<List<String>> finalizers;
  /// Not supported by Cloud Run
  final pulumi.Input<String> generateName;
  /// A system-provided sequence number representing a specific generation of the desired state.
  final pulumi.Input<int> generation;
  /// Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and routes.
  final pulumi.Input<Map<String, String>> labels;
  /// The name of the resource. Name is required when creating top-level resources (Service, Job), must be unique within a Cloud Run project/region, and cannot be changed once created.
  final pulumi.Input<String> name;
  /// Defines the space within each name must be unique within a Cloud Run region. In Cloud Run, it must be project ID or number.
  final pulumi.Input<String> namespace;
  /// Not supported by Cloud Run
  final pulumi.Input<List<OwnerReferenceResponse>> ownerReferences;
  /// Opaque, system-generated value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server or omit the value to disable conflict-detection.
  final pulumi.Input<String> resourceVersion;
  /// URL representing this object.
  final pulumi.Input<String> selfLink;
  /// Unique, system-generated identifier for this resource.
  final pulumi.Input<String> uid;

  /// Creates a new [ObjectMetaResponse].
  /// [annotations] Unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. In Cloud Run, annotations with 'run.googleapis.com/' and 'autoscaling.knative.dev' are restricted, and the accepted annotations will be different depending on the resource type. * `autoscaling.knative.dev/maxScale`: Revision. * `autoscaling.knative.dev/minScale`: Revision. * `run.googleapis.com/binary-authorization-breakglass`: Service, Job, * `run.googleapis.com/binary-authorization`: Service, Job, Execution. * `run.googleapis.com/client-name`: All resources. * `run.googleapis.com/cloudsql-instances`: Revision, Execution. * `run.googleapis.com/container-dependencies`: Revision. * `run.googleapis.com/cpu-throttling`: Revision. * `run.googleapis.com/custom-audiences`: Service. * `run.googleapis.com/description`: Service. * `run.googleapis.com/disable-default-url`: Service. * `run.googleapis.com/encryption-key-shutdown-hours`: Revision * `run.googleapis.com/encryption-key`: Revision, Execution. * `run.googleapis.com/execution-environment`: Revision, Execution. * `run.googleapis.com/gc-traffic-tags`: Service. * `run.googleapis.com/ingress`: Service. * `run.googleapis.com/launch-stage`: Service, Job. * `run.googleapis.com/minScale`: Service (ALPHA) * `run.googleapis.com/network-interfaces`: Revision, Execution. * `run.googleapis.com/post-key-revocation-action-type`: Revision. * `run.googleapis.com/secrets`: Revision, Execution. * `run.googleapis.com/secure-session-agent`: Revision. * `run.googleapis.com/sessionAffinity`: Revision. * `run.googleapis.com/startup-cpu-boost`: Revision. * `run.googleapis.com/vpc-access-connector`: Revision, Execution. * `run.googleapis.com/vpc-access-egress`: Revision, Execution.
  /// [clusterName] Not supported by Cloud Run
  /// [creationTimestamp] UTC timestamp representing the server time when this object was created.
  /// [deletionGracePeriodSeconds] Not supported by Cloud Run
  /// [deletionTimestamp] The read-only soft deletion timestamp for this resource. In Cloud Run, users are not able to set this field. Instead, they must call the corresponding Delete API.
  /// [finalizers] Not supported by Cloud Run
  /// [generateName] Not supported by Cloud Run
  /// [generation] A system-provided sequence number representing a specific generation of the desired state.
  /// [labels] Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and routes.
  /// [name] The name of the resource. Name is required when creating top-level resources (Service, Job), must be unique within a Cloud Run project/region, and cannot be changed once created.
  /// [namespace] Defines the space within each name must be unique within a Cloud Run region. In Cloud Run, it must be project ID or number.
  /// [ownerReferences] Not supported by Cloud Run
  /// [resourceVersion] Opaque, system-generated value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server or omit the value to disable conflict-detection.
  /// [selfLink] URL representing this object.
  /// [uid] Unique, system-generated identifier for this resource.
  const ObjectMetaResponse({
    required this.annotations,
    required this.clusterName,
    required this.creationTimestamp,
    required this.deletionGracePeriodSeconds,
    required this.deletionTimestamp,
    required this.finalizers,
    required this.generateName,
    required this.generation,
    required this.labels,
    required this.name,
    required this.namespace,
    required this.ownerReferences,
    required this.resourceVersion,
    required this.selfLink,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'clusterName': clusterName,
      'creationTimestamp': creationTimestamp,
      'deletionGracePeriodSeconds': deletionGracePeriodSeconds,
      'deletionTimestamp': deletionTimestamp,
      'finalizers': finalizers,
      'generateName': generateName,
      'generation': generation,
      'labels': labels,
      'name': name,
      'namespace': namespace,
      'ownerReferences': pulumi.Input.mapInputValue<List<OwnerReferenceResponse>, List<Map<String, dynamic>>>(ownerReferences, (value) => pulumi.Input.encodeList<OwnerReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceVersion': resourceVersion,
      'selfLink': selfLink,
      'uid': uid,
    };
  }

  factory ObjectMetaResponse.fromMap(Map<String, dynamic> map) {
    return ObjectMetaResponse(
      annotations: pulumi.Input.fromValue((map['annotations'] as Map).cast<String, String>()),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      creationTimestamp: pulumi.Input.fromValue(map['creationTimestamp'] as String),
      deletionGracePeriodSeconds: pulumi.Input.fromValue(map['deletionGracePeriodSeconds'] as int),
      deletionTimestamp: pulumi.Input.fromValue(map['deletionTimestamp'] as String),
      finalizers: pulumi.Input.fromValue((map['finalizers'] as List).cast<String>()),
      generateName: pulumi.Input.fromValue(map['generateName'] as String),
      generation: pulumi.Input.fromValue(map['generation'] as int),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      ownerReferences: pulumi.Input.fromValue(pulumi.Input.decodeList<OwnerReferenceResponse>(map['ownerReferences']!, (value) => OwnerReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      resourceVersion: pulumi.Input.fromValue(map['resourceVersion'] as String),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}
