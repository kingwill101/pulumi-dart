// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_response.dart';
import 'local_object_reference_response.dart';
import 'volume_response.dart';

/// RevisionSpec holds the desired state of the Revision (from the client).
class RevisionSpecResponse {
  /// ContainerConcurrency specifies the maximum allowed in-flight (concurrent) requests per container instance of the Revision. If not specified, defaults to 80.
  final pulumi.Input<int> containerConcurrency;
  /// Containers holds the single container that defines the unit of execution for this Revision. In the context of a Revision, we disallow a number of fields on this Container, including: name and lifecycle. In Cloud Run, only a single container may be provided.
  final pulumi.Input<List<ContainerResponse>> containers;
  /// Not supported by Cloud Run.
  final pulumi.Input<bool> enableServiceLinks;
  /// Not supported by Cloud Run.
  final pulumi.Input<List<LocalObjectReferenceResponse>> imagePullSecrets;
  /// Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  final pulumi.Input<String> serviceAccountName;
  /// TimeoutSeconds holds the max duration the instance is allowed for responding to a request. Cloud Run: defaults to 300 seconds (5 minutes). Maximum allowed value is 3600 seconds (1 hour).
  final pulumi.Input<int> timeoutSeconds;
  final pulumi.Input<List<VolumeResponse>> volumes;

  /// Creates a new [RevisionSpecResponse].
  /// [containerConcurrency] ContainerConcurrency specifies the maximum allowed in-flight (concurrent) requests per container instance of the Revision. If not specified, defaults to 80.
  /// [containers] Containers holds the single container that defines the unit of execution for this Revision. In the context of a Revision, we disallow a number of fields on this Container, including: name and lifecycle. In Cloud Run, only a single container may be provided.
  /// [enableServiceLinks] Not supported by Cloud Run.
  /// [imagePullSecrets] Not supported by Cloud Run.
  /// [serviceAccountName] Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  /// [timeoutSeconds] TimeoutSeconds holds the max duration the instance is allowed for responding to a request. Cloud Run: defaults to 300 seconds (5 minutes). Maximum allowed value is 3600 seconds (1 hour).
  /// [volumes] Required.
  const RevisionSpecResponse({
    required this.containerConcurrency,
    required this.containers,
    required this.enableServiceLinks,
    required this.imagePullSecrets,
    required this.serviceAccountName,
    required this.timeoutSeconds,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerConcurrency': containerConcurrency,
      'containers': pulumi.Input.mapInputValue<List<ContainerResponse>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<ContainerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableServiceLinks': enableServiceLinks,
      'imagePullSecrets': pulumi.Input.mapInputValue<List<LocalObjectReferenceResponse>, List<Map<String, dynamic>>>(imagePullSecrets, (value) => pulumi.Input.encodeList<LocalObjectReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccountName': serviceAccountName,
      'timeoutSeconds': timeoutSeconds,
      'volumes': pulumi.Input.mapInputValue<List<VolumeResponse>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<VolumeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RevisionSpecResponse.fromMap(Map<String, dynamic> map) {
    return RevisionSpecResponse(
      containerConcurrency: pulumi.Input.fromValue(map['containerConcurrency'] as int),
      containers: pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerResponse>(map['containers']!, (value) => ContainerResponse.fromMap((value as Map).cast<String, dynamic>()))),
      enableServiceLinks: pulumi.Input.fromValue(map['enableServiceLinks'] as bool),
      imagePullSecrets: pulumi.Input.fromValue(pulumi.Input.decodeList<LocalObjectReferenceResponse>(map['imagePullSecrets']!, (value) => LocalObjectReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      serviceAccountName: pulumi.Input.fromValue(map['serviceAccountName'] as String),
      timeoutSeconds: pulumi.Input.fromValue(map['timeoutSeconds'] as int),
      volumes: pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeResponse>(map['volumes']!, (value) => VolumeResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
