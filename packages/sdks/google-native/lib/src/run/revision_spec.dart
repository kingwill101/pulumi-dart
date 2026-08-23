// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container.dart';
import 'local_object_reference.dart';
import 'volume.dart';

/// RevisionSpec holds the desired state of the Revision (from the client).
class RevisionSpec {
  /// ContainerConcurrency specifies the maximum allowed in-flight (concurrent) requests per container instance of the Revision. If not specified, defaults to 80.
  final pulumi.Input<int>? containerConcurrency;
  /// Containers holds the single container that defines the unit of execution for this Revision. In the context of a Revision, we disallow a number of fields on this Container, including: name and lifecycle. In Cloud Run, only a single container may be provided.
  final pulumi.Input<List<Container>>? containers;
  /// Not supported by Cloud Run.
  final pulumi.Input<bool>? enableServiceLinks;
  /// Not supported by Cloud Run.
  final pulumi.Input<List<LocalObjectReference>>? imagePullSecrets;
  /// Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  final pulumi.Input<String>? serviceAccountName;
  /// TimeoutSeconds holds the max duration the instance is allowed for responding to a request. Cloud Run: defaults to 300 seconds (5 minutes). Maximum allowed value is 3600 seconds (1 hour).
  final pulumi.Input<int>? timeoutSeconds;
  final pulumi.Input<List<Volume>>? volumes;

  /// Creates a new [RevisionSpec].
  /// [containerConcurrency] ContainerConcurrency specifies the maximum allowed in-flight (concurrent) requests per container instance of the Revision. If not specified, defaults to 80.
  /// [containers] Containers holds the single container that defines the unit of execution for this Revision. In the context of a Revision, we disallow a number of fields on this Container, including: name and lifecycle. In Cloud Run, only a single container may be provided.
  /// [enableServiceLinks] Not supported by Cloud Run.
  /// [imagePullSecrets] Not supported by Cloud Run.
  /// [serviceAccountName] Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  /// [timeoutSeconds] TimeoutSeconds holds the max duration the instance is allowed for responding to a request. Cloud Run: defaults to 300 seconds (5 minutes). Maximum allowed value is 3600 seconds (1 hour).
  /// [volumes] Optional.
  const RevisionSpec({
    this.containerConcurrency,
    this.containers,
    this.enableServiceLinks,
    this.imagePullSecrets,
    this.serviceAccountName,
    this.timeoutSeconds,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerConcurrency': ?containerConcurrency,
      'containers': ?pulumi.Input.mapOptionalInputValue<List<Container>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<Container, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableServiceLinks': ?enableServiceLinks,
      'imagePullSecrets': ?pulumi.Input.mapOptionalInputValue<List<LocalObjectReference>, List<Map<String, dynamic>>>(imagePullSecrets, (value) => pulumi.Input.encodeList<LocalObjectReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAccountName': ?serviceAccountName,
      'timeoutSeconds': ?timeoutSeconds,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<Volume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<Volume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RevisionSpec.fromMap(Map<String, dynamic> map) {
    return RevisionSpec(
      containerConcurrency: (() { final guardedValue = map['containerConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Container>(guardedValue, (value) => Container.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableServiceLinks: (() { final guardedValue = map['enableServiceLinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imagePullSecrets: (() { final guardedValue = map['imagePullSecrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LocalObjectReference>(guardedValue, (value) => LocalObjectReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceAccountName: (() { final guardedValue = map['serviceAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Volume>(guardedValue, (value) => Volume.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
