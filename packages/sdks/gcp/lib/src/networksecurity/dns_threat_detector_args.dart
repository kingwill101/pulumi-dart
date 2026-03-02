// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_dns_threat_detector_dns_threat_detector_args_doc}
/// The set of arguments for DnsThreatDetector.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_dns_threat_detector_dns_threat_detector_args_doc}
class DnsThreatDetectorArgs {
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
  /// DNS Threat Detection provider. The only supported value is `INFOBLOX`.
  final pulumi.Input<String>? threatDetectorProvider;

  /// Creates a new [DnsThreatDetectorArgs].
  /// [excludedNetworks] List of networks that are excluded from detection. Format: projects/{project}/global/networks/{name}.
  /// [labels] Set of label tags associated with the DNS Threat Detector resource.
  /// [location] The location of the DNS Threat Detector. The only supported value is `global`.
  /// [name] Name of the DnsThreatDetector resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [threatDetectorProvider] DNS Threat Detection provider. The only supported value is `INFOBLOX`.
  DnsThreatDetectorArgs({
    this.excludedNetworks,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.threatDetectorProvider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedNetworks': ?excludedNetworks,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'threatDetectorProvider': ?threatDetectorProvider,
    };
  }

  factory DnsThreatDetectorArgs.fromMap(Map<String, dynamic> map) {
    return DnsThreatDetectorArgs(
      excludedNetworks: map['excludedNetworks'] == null ? null : ((map['excludedNetworks'] as List).cast<String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      threatDetectorProvider: map['threatDetectorProvider'] == null ? null : (map['threatDetectorProvider'] as String).input(),
    );
  }
}

