// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_descriptor_label.dart';
import 'metric_descriptor_metadata.dart';

/// Input properties used for looking up and filtering MetricDescriptor resources.
class MetricDescriptorState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A detailed description of the metric, which can be used in documentation.
  final pulumi.Input<String?>? description;
  /// A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example "Request count".
  final pulumi.Input<String?>? displayName;
  /// The set of labels that can be used to describe a specific instance of this metric type. In order to delete a label, the entire resource must be deleted, then created with the desired labels.
  /// Structure is documented below.
  final pulumi.Input<List<MetricDescriptorLabel>?>? labels;
  /// The launch stage of the metric definition.
  /// Possible values are: `LAUNCH_STAGE_UNSPECIFIED`, `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  final pulumi.Input<String?>? launchStage;
  /// Metadata which can be used to guide usage of the metric.
  /// Structure is documented below.
  final pulumi.Input<MetricDescriptorMetadata?>? metadata;
  /// Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metricKind and valueType might not be supported.
  /// Possible values are: `METRIC_KIND_UNSPECIFIED`, `GAUGE`, `DELTA`, `CUMULATIVE`.
  final pulumi.Input<String?>? metricKind;
  /// If present, then a time series, which is identified partially by a metric type and a MonitoredResourceDescriptor, that is associated with this metric type can only be associated with one of the monitored resource types listed here. This field allows time series to be associated with the intersection of this metric type and the monitored resource types in this list.
  final pulumi.Input<List<String>?>? monitoredResourceTypes;
  /// The resource name of the metric descriptor.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The metric type, including its DNS name prefix. The type is not URL-encoded. All service defined metrics must be prefixed with the service name, in the format of {service name}/{relative metric name}, such as cloudsql.googleapis.com/database/cpu/utilization. The relative metric name must have only upper and lower-case letters, digits, '/' and underscores '_' are allowed. Additionally, the maximum number of characters allowed for the relativeMetricName is 100. All user-defined metric types have the DNS name custom.googleapis.com, external.googleapis.com, or logging.googleapis.com/user/.
  final pulumi.Input<String?>? type;
  /// The units in which the metric value is reported. It is only applicable if the
  /// valueType is INT64, DOUBLE, or DISTRIBUTION. The unit defines the representation of
  /// the stored metric values.
  /// Different systems may scale the values to be more easily displayed (so a value of
  /// 0.02KBy might be displayed as 20By, and a value of 3523KBy might be displayed as
  /// 3.5MBy). However, if the unit is KBy, then the value of the metric is always in
  /// thousands of bytes, no matter how it may be displayed.
  /// If you want a custom metric to record the exact number of CPU-seconds used by a job,
  /// you can create an INT64 CUMULATIVE metric whose unit is s{CPU} (or equivalently
  /// 1s{CPU} or just s). If the job uses 12,005 CPU-seconds, then the value is written as
  /// 12005.
  /// Alternatively, if you want a custom metric to record data in a more granular way, you
  /// can create a DOUBLE CUMULATIVE metric whose unit is ks{CPU}, and then write the value
  /// 12.005 (which is 12005/1000), or use Kis{CPU} and write 11.723 (which is 12005/1024).
  /// The supported units are a subset of The Unified Code for Units of Measure standard.
  /// More info can be found in the API documentation
  /// (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors).
  final pulumi.Input<String?>? unit;
  /// Whether the measurement is an integer, a floating-point number, etc. Some combinations of metricKind and valueType might not be supported.
  /// Possible values are: `BOOL`, `INT64`, `DOUBLE`, `STRING`, `DISTRIBUTION`.
  final pulumi.Input<String?>? valueType;

  /// Creates a new [MetricDescriptorState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A detailed description of the metric, which can be used in documentation.
  /// [displayName] A concise name for the metric, which can be displayed in user interfaces. Use sentence case without an ending period, for example "Request count".
  /// [labels] The set of labels that can be used to describe a specific instance of this metric type. In order to delete a label, the entire resource must be deleted, then created with the desired labels.
  /// [launchStage] The launch stage of the metric definition.
  /// [metadata] Metadata which can be used to guide usage of the metric.
  /// [metricKind] Whether the metric records instantaneous values, changes to a value, etc. Some combinations of metricKind and valueType might not be supported.
  /// [monitoredResourceTypes] If present, then a time series, which is identified partially by a metric type and a MonitoredResourceDescriptor, that is associated with this metric type can only be associated with one of the monitored resource types listed here. This field allows time series to be associated with the intersection of this metric type and the monitored resource types in this list.
  /// [name] The resource name of the metric descriptor.
  /// [project] The ID of the project in which the resource belongs.
  /// [type] The metric type, including its DNS name prefix. The type is not URL-encoded. All service defined metrics must be prefixed with the service name, in the format of {service name}/{relative metric name}, such as cloudsql.googleapis.com/database/cpu/utilization. The relative metric name must have only upper and lower-case letters, digits, '/' and underscores '_' are allowed. Additionally, the maximum number of characters allowed for the relativeMetricName is 100. All user-defined metric types have the DNS name custom.googleapis.com, external.googleapis.com, or logging.googleapis.com/user/.
  /// [unit] The units in which the metric value is reported. It is only applicable if the
  /// [valueType] Whether the measurement is an integer, a floating-point number, etc. Some combinations of metricKind and valueType might not be supported.
  const MetricDescriptorState({
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.labels,
    this.launchStage,
    this.metadata,
    this.metricKind,
    this.monitoredResourceTypes,
    this.name,
    this.project,
    this.type,
    this.unit,
    this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<MetricDescriptorLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<MetricDescriptorLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'launchStage': ?launchStage,
      'metadata': ?pulumi.Input.mapOptionalInputValue<MetricDescriptorMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'metricKind': ?metricKind,
      'monitoredResourceTypes': ?monitoredResourceTypes,
      'name': ?name,
      'project': ?project,
      'type': ?type,
      'unit': ?unit,
      'valueType': ?valueType,
    };
  }

  factory MetricDescriptorState.fromMap(Map<String, dynamic> map) {
    return MetricDescriptorState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MetricDescriptorLabel>(guardedValue, (value) => MetricDescriptorLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      launchStage: (() { final guardedValue = map['launchStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetricDescriptorMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      metricKind: (() { final guardedValue = map['metricKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoredResourceTypes: (() { final guardedValue = map['monitoredResourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueType: (() { final guardedValue = map['valueType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
