// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_spec_container.dart';
import 'service_template_spec_volume.dart';

class ServiceTemplateSpec {
  /// ContainerConcurrency specifies the maximum allowed in-flight (concurrent)
  /// requests per container of the Revision. If not specified or 0, defaults to 80 when
  /// requested CPU &gt;= 1 and defaults to 1 when requested CPU &lt; 1.
  final pulumi.Input<int>? containerConcurrency;
  /// Containers defines the unit of execution for this Revision.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceTemplateSpecContainer>>? containers;
  /// Node Selector describes the hardware requirements of the resources.
  /// Use the following node selector keys to configure features on a Revision:
  /// - `run.googleapis.com/accelerator` sets the [type of GPU](https://cloud.google.com/run/docs/configuring/services/gpu) required by the Revision to run.
  final pulumi.Input<Map<String, String>>? nodeSelector;
  /// Email address of the IAM service account associated with the revision of the
  /// service. The service account represents the identity of the running revision,
  /// and determines what permissions the revision has. If not provided, the revision
  /// will use the project's default service account.
  final pulumi.Input<String>? serviceAccountName;
  /// (Output, Deprecated)
  /// ServingState holds a value describing the state the resources
  /// are in for this Revision.
  /// It is expected
  /// that the system will manipulate this based on routability and load.
  ///
  /// &gt; **Warning:** `servingState` is deprecated and will be removed in a future major release. This field is not supported by the Cloud Run API.
  final pulumi.Input<String>? servingState;
  /// TimeoutSeconds holds the max duration the instance is allowed for responding to a request.
  final pulumi.Input<int>? timeoutSeconds;
  /// Volume represents a named volume in a container.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceTemplateSpecVolume>>? volumes;

  /// Creates a new [ServiceTemplateSpec].
  /// [containerConcurrency] ContainerConcurrency specifies the maximum allowed in-flight (concurrent)
  /// [containers] Containers defines the unit of execution for this Revision.
  /// [nodeSelector] Node Selector describes the hardware requirements of the resources.
  /// [serviceAccountName] Email address of the IAM service account associated with the revision of the
  /// [servingState] (Output, Deprecated)
  /// [timeoutSeconds] TimeoutSeconds holds the max duration the instance is allowed for responding to a request.
  /// [volumes] Volume represents a named volume in a container.
  const ServiceTemplateSpec({
    this.containerConcurrency,
    this.containers,
    this.nodeSelector,
    this.serviceAccountName,
    this.servingState,
    this.timeoutSeconds,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerConcurrency': ?containerConcurrency,
      'containers': ?pulumi.Input.mapOptionalInputValue<List<ServiceTemplateSpecContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<ServiceTemplateSpecContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeSelector': ?nodeSelector,
      'serviceAccountName': ?serviceAccountName,
      'servingState': ?servingState,
      'timeoutSeconds': ?timeoutSeconds,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<ServiceTemplateSpecVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<ServiceTemplateSpecVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceTemplateSpec.fromMap(Map<String, dynamic> map) {
    return ServiceTemplateSpec(
      containerConcurrency: (() { final guardedValue = map['containerConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceTemplateSpecContainer>(guardedValue, (value) => ServiceTemplateSpecContainer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeSelector: (() { final guardedValue = map['nodeSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      serviceAccountName: (() { final guardedValue = map['serviceAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servingState: (() { final guardedValue = map['servingState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceTemplateSpecVolume>(guardedValue, (value) => ServiceTemplateSpecVolume.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
