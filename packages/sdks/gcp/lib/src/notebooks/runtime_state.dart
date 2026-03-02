// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_access_config.dart';
import 'runtime_metric.dart';
import 'runtime_software_config.dart';
import 'runtime_virtual_machine.dart';

/// Input properties used for looking up and filtering Runtime resources.
class RuntimeState {
  /// The config settings for accessing runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeAccessConfig>? accessConfig;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The health state of this runtime. For a list of possible output
  /// values, see `https://cloud.google.com/vertex-ai/docs/workbench/
  /// reference/rest/v1/projects.locations.runtimes#healthstate`.
  final pulumi.Input<String>? healthState;
  /// The labels to associate with this runtime. Label **keys** must
  /// contain 1 to 63 characters, and must conform to [RFC 1035]
  /// (https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be
  /// empty, but, if present, must contain 1 to 63 characters, and must
  /// conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No
  /// more than 32 labels can be associated with a cluster.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// A reference to the zone where the machine resides.
  final pulumi.Input<String>? location;
  /// Contains Runtime daemon metrics such as Service status and JupyterLab
  /// status
  /// Structure is documented below.
  final pulumi.Input<List<RuntimeMetric>>? metrics;
  /// The name specified for the Notebook runtime.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The config settings for software inside the runtime.
  /// Structure is documented below.
  final pulumi.Input<RuntimeSoftwareConfig>? softwareConfig;
  /// The state of this runtime.
  final pulumi.Input<String>? state;
  /// Use a Compute Engine VM image to start the managed notebook instance.
  /// Structure is documented below.
  final pulumi.Input<RuntimeVirtualMachine>? virtualMachine;

  /// Creates a new [RuntimeState].
  /// [accessConfig] The config settings for accessing runtime.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [healthState] The health state of this runtime. For a list of possible output
  /// [labels] The labels to associate with this runtime. Label **keys** must
  /// [location] A reference to the zone where the machine resides.
  /// [metrics] Contains Runtime daemon metrics such as Service status and JupyterLab
  /// [name] The name specified for the Notebook runtime.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [softwareConfig] The config settings for software inside the runtime.
  /// [state] The state of this runtime.
  /// [virtualMachine] Use a Compute Engine VM image to start the managed notebook instance.
  RuntimeState({
    this.accessConfig,
    this.effectiveLabels,
    this.healthState,
    this.labels,
    this.location,
    this.metrics,
    this.name,
    this.project,
    this.pulumiLabels,
    this.softwareConfig,
    this.state,
    this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeAccessConfig, Map<String, dynamic>>(accessConfig, (value) => value.toMap()),
      'effectiveLabels': ?effectiveLabels,
      'healthState': ?healthState,
      'labels': ?labels,
      'location': ?location,
      'metrics': ?pulumi.Input.mapOptionalInputValue<List<RuntimeMetric>, List<Map<String, dynamic>>>(metrics, (value) => pulumi.Input.encodeList<RuntimeMetric, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'softwareConfig': ?pulumi.Input.mapOptionalInputValue<RuntimeSoftwareConfig, Map<String, dynamic>>(softwareConfig, (value) => value.toMap()),
      'state': ?state,
      'virtualMachine': ?pulumi.Input.mapOptionalInputValue<RuntimeVirtualMachine, Map<String, dynamic>>(virtualMachine, (value) => value.toMap()),
    };
  }

  factory RuntimeState.fromMap(Map<String, dynamic> map) {
    return RuntimeState(
      accessConfig: map['accessConfig'] == null ? null : (RuntimeAccessConfig.fromMap((map['accessConfig']! as Map).cast<String, dynamic>())).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      healthState: map['healthState'] == null ? null : (map['healthState']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      metrics: map['metrics'] == null ? null : (pulumi.Input.decodeList<RuntimeMetric>(map['metrics']!, (value) => RuntimeMetric.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      softwareConfig: map['softwareConfig'] == null ? null : (RuntimeSoftwareConfig.fromMap((map['softwareConfig']! as Map).cast<String, dynamic>())).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      virtualMachine: map['virtualMachine'] == null ? null : (RuntimeVirtualMachine.fromMap((map['virtualMachine']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

