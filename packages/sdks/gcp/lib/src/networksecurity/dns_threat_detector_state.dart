// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DnsThreatDetector resources.
class DnsThreatDetectorState {
  /// The timestamp when the resource was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// List of networks that are excluded from detection. Format: projects/{project}/global/networks/{name}.
  final pulumi.Input<List<String>>? excludedNetworks;
  /// Set of label tags associated with the DNS Threat Detector resource.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the DNS Threat Detector. The only supported value is `global`.
  final pulumi.Input<String>? location;
  /// Name of the DnsThreatDetector resource.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// DNS Threat Detection provider. The only supported value is `INFOBLOX`.
  final pulumi.Input<String>? threatDetectorProvider;
  /// The timestamp when the resource was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [DnsThreatDetectorState].
  /// [createTime] The timestamp when the resource was created.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [excludedNetworks] List of networks that are excluded from detection. Format: projects/{project}/global/networks/{name}.
  /// [labels] Set of label tags associated with the DNS Threat Detector resource.
  /// [location] The location of the DNS Threat Detector. The only supported value is `global`.
  /// [name] Name of the DnsThreatDetector resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [threatDetectorProvider] DNS Threat Detection provider. The only supported value is `INFOBLOX`.
  /// [updateTime] The timestamp when the resource was updated.
  DnsThreatDetectorState({
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<List<String>>? excludedNetworks,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? threatDetectorProvider,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      excludedNetworks = pulumi.Input.asOptionalInput<List<String>>(excludedNetworks),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      threatDetectorProvider = pulumi.Input.asOptionalInput<String>(threatDetectorProvider),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'excludedNetworks': ?excludedNetworks,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'threatDetectorProvider': ?threatDetectorProvider,
      'updateTime': ?updateTime,
    };
  }

  factory DnsThreatDetectorState.fromMap(Map<String, dynamic> map) {
    return DnsThreatDetectorState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      excludedNetworks: map['excludedNetworks'] == null ? null : pulumi.Output.create<List<String>>((map['excludedNetworks'] as List).cast<String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      threatDetectorProvider: map['threatDetectorProvider'] == null ? null : pulumi.Output.create<String>(map['threatDetectorProvider'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

