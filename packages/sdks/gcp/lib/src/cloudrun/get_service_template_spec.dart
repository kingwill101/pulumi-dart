// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_spec_container.dart';
import 'get_service_template_spec_volume.dart';

class GetServiceTemplateSpec {
  /// ContainerConcurrency specifies the maximum allowed in-flight (concurrent)
  /// requests per container of the Revision. If not specified or 0, defaults to 80 when
  /// requested CPU &gt;= 1 and defaults to 1 when requested CPU &lt; 1.
  final pulumi.Input<int> containerConcurrency;
  /// Containers defines the unit of execution for this Revision.
  final pulumi.Input<List<GetServiceTemplateSpecContainer>> containers;
  /// Node Selector describes the hardware requirements of the resources.
  /// Use the following node selector keys to configure features on a Revision:
  /// - 'run.googleapis.com/accelerator' sets the [type of GPU](https://cloud.google.com/run/docs/configuring/services/gpu) required by the Revision to run.
  final pulumi.Input<Map<String, String>> nodeSelector;
  /// Email address of the IAM service account associated with the revision of the
  /// service. The service account represents the identity of the running revision,
  /// and determines what permissions the revision has. If not provided, the revision
  /// will use the project's default service account.
  final pulumi.Input<String> serviceAccountName;
  /// ServingState holds a value describing the state the resources
  /// are in for this Revision.
  /// It is expected
  /// that the system will manipulate this based on routability and load.
  final pulumi.Input<String> servingState;
  /// TimeoutSeconds holds the max duration the instance is allowed for responding to a request.
  final pulumi.Input<int> timeoutSeconds;
  /// Volume represents a named volume in a container.
  final pulumi.Input<List<GetServiceTemplateSpecVolume>> volumes;

  /// Creates a new [GetServiceTemplateSpec].
  /// [containerConcurrency] ContainerConcurrency specifies the maximum allowed in-flight (concurrent)
  /// [containers] Containers defines the unit of execution for this Revision.
  /// [nodeSelector] Node Selector describes the hardware requirements of the resources.
  /// [serviceAccountName] Email address of the IAM service account associated with the revision of the
  /// [servingState] ServingState holds a value describing the state the resources
  /// [timeoutSeconds] TimeoutSeconds holds the max duration the instance is allowed for responding to a request.
  /// [volumes] Volume represents a named volume in a container.
  const GetServiceTemplateSpec({
    required this.containerConcurrency,
    required this.containers,
    required this.nodeSelector,
    required this.serviceAccountName,
    required this.servingState,
    required this.timeoutSeconds,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerConcurrency': containerConcurrency,
      'containers': pulumi.Input.mapInputValue<List<GetServiceTemplateSpecContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<GetServiceTemplateSpecContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeSelector': nodeSelector,
      'serviceAccountName': serviceAccountName,
      'servingState': servingState,
      'timeoutSeconds': timeoutSeconds,
      'volumes': pulumi.Input.mapInputValue<List<GetServiceTemplateSpecVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<GetServiceTemplateSpecVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetServiceTemplateSpec.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateSpec(
      containerConcurrency: pulumi.Input.fromValue(map['containerConcurrency'] as int),
      containers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateSpecContainer>(map['containers']!, (value) => GetServiceTemplateSpecContainer.fromMap((value as Map).cast<String, dynamic>()))),
      nodeSelector: pulumi.Input.fromValue((map['nodeSelector'] as Map).cast<String, String>()),
      serviceAccountName: pulumi.Input.fromValue(map['serviceAccountName'] as String),
      servingState: pulumi.Input.fromValue(map['servingState'] as String),
      timeoutSeconds: pulumi.Input.fromValue(map['timeoutSeconds'] as int),
      volumes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceTemplateSpecVolume>(map['volumes']!, (value) => GetServiceTemplateSpecVolume.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
