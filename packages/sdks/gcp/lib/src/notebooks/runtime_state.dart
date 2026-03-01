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
    pulumi.Output<RuntimeAccessConfig>? accessConfig,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? healthState,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<List<RuntimeMetric>>? metrics,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<RuntimeSoftwareConfig>? softwareConfig,
    pulumi.Output<String>? state,
    pulumi.Output<RuntimeVirtualMachine>? virtualMachine,
  }) :
      accessConfig = pulumi.Input.asOptionalInput<RuntimeAccessConfig>(accessConfig),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      healthState = pulumi.Input.asOptionalInput<String>(healthState),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      metrics = pulumi.Input.asOptionalInput<List<RuntimeMetric>>(metrics),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      softwareConfig = pulumi.Input.asOptionalInput<RuntimeSoftwareConfig>(softwareConfig),
      state = pulumi.Input.asOptionalInput<String>(state),
      virtualMachine = pulumi.Input.asOptionalInput<RuntimeVirtualMachine>(virtualMachine);

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
      accessConfig: map['accessConfig'] == null ? null : pulumi.Output.create<RuntimeAccessConfig>(RuntimeAccessConfig.fromMap((map['accessConfig'] as Map).cast<String, dynamic>())),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      healthState: map['healthState'] == null ? null : pulumi.Output.create<String>(map['healthState'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      metrics: map['metrics'] == null ? null : pulumi.Output.create<List<RuntimeMetric>>(pulumi.Input.decodeList<RuntimeMetric>(map['metrics'], (value) => RuntimeMetric.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      softwareConfig: map['softwareConfig'] == null ? null : pulumi.Output.create<RuntimeSoftwareConfig>(RuntimeSoftwareConfig.fromMap((map['softwareConfig'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      virtualMachine: map['virtualMachine'] == null ? null : pulumi.Output.create<RuntimeVirtualMachine>(RuntimeVirtualMachine.fromMap((map['virtualMachine'] as Map).cast<String, dynamic>())),
    );
  }
}

