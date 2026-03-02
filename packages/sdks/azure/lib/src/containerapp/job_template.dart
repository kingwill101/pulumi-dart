// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_container.dart';
import 'job_template_init_container.dart';
import 'job_template_volume.dart';

class JobTemplate {
  /// A `container` block as defined below.
  final pulumi.Input<List<JobTemplateContainer>> containers;
  /// A `init_container` block as defined below.
  final pulumi.Input<List<JobTemplateInitContainer>>? initContainers;
  /// A `volume` block as defined below.
  final pulumi.Input<List<JobTemplateVolume>>? volumes;

  /// Creates a new [JobTemplate].
  /// [containers] A `container` block as defined below.
  /// [initContainers] A `init_container` block as defined below.
  /// [volumes] A `volume` block as defined below.
  JobTemplate({
    required this.containers,
    this.initContainers,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containers': pulumi.Input.mapInputValue<List<JobTemplateContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<JobTemplateContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initContainers': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateInitContainer>, List<Map<String, dynamic>>>(initContainers, (value) => pulumi.Input.encodeList<JobTemplateInitContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<JobTemplateVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JobTemplate.fromMap(Map<String, dynamic> map) {
    return JobTemplate(
      containers: (pulumi.Input.decodeList<JobTemplateContainer>(map['containers'], (value) => JobTemplateContainer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      initContainers: map['initContainers'] == null ? null : (pulumi.Input.decodeList<JobTemplateInitContainer>(map['initContainers']!, (value) => JobTemplateInitContainer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<JobTemplateVolume>(map['volumes']!, (value) => JobTemplateVolume.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

