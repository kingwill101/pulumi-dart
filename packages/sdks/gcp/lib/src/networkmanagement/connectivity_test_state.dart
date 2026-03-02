// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connectivity_test_destination.dart';
import 'connectivity_test_source.dart';

/// Input properties used for looking up and filtering ConnectivityTest resources.
class ConnectivityTestState {
  /// Whether the analysis should skip firewall checking. Default value is false.
  final pulumi.Input<bool>? bypassFirewallChecks;
  /// The user-supplied description of the Connectivity Test.
  /// Maximum of 512 characters.
  final pulumi.Input<String>? description;
  /// Required. Destination specification of the Connectivity Test.
  /// You can use a combination of destination IP address, URI of a supported
  /// endpoint, project ID, or VPC network to identify the destination location.
  /// Reachability analysis proceeds even if the destination location is
  /// ambiguous. However, the test result might include endpoints or use a
  /// destination that you don't intend to test.
  /// Structure is documented below.
  final pulumi.Input<ConnectivityTestDestination>? destination;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Resource labels to represent user-provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Unique name for the connectivity test.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// IP Protocol of the test. When not provided, "TCP" is assumed.
  final pulumi.Input<String>? protocol;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Other projects that may be relevant for reachability analysis.
  /// This is applicable to scenarios where a test can cross project
  /// boundaries.
  final pulumi.Input<List<String>>? relatedProjects;
  /// Whether run analysis for the return path from destination to source.
  /// Default value is false.
  final pulumi.Input<bool>? roundTrip;
  /// Required. Source specification of the Connectivity Test.
  /// You can use a combination of source IP address, URI of a supported
  /// endpoint, project ID, or VPC network to identify the source location.
  /// Reachability analysis might proceed even if the source location is
  /// ambiguous. However, the test result might include endpoints or use a source
  /// that you don't intend to test.
  /// Structure is documented below.
  final pulumi.Input<ConnectivityTestSource>? source;

  /// Creates a new [ConnectivityTestState].
  /// [bypassFirewallChecks] Whether the analysis should skip firewall checking. Default value is false.
  /// [description] The user-supplied description of the Connectivity Test.
  /// [destination] Required. Destination specification of the Connectivity Test.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [name] Unique name for the connectivity test.
  /// [project] The ID of the project in which the resource belongs.
  /// [protocol] IP Protocol of the test. When not provided, "TCP" is assumed.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [relatedProjects] Other projects that may be relevant for reachability analysis.
  /// [roundTrip] Whether run analysis for the return path from destination to source.
  /// [source] Required. Source specification of the Connectivity Test.
  ConnectivityTestState({
    this.bypassFirewallChecks,
    this.description,
    this.destination,
    this.effectiveLabels,
    this.labels,
    this.name,
    this.project,
    this.protocol,
    this.pulumiLabels,
    this.relatedProjects,
    this.roundTrip,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassFirewallChecks': ?bypassFirewallChecks,
      'description': ?description,
      'destination': ?pulumi.Input.mapOptionalInputValue<ConnectivityTestDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'protocol': ?protocol,
      'pulumiLabels': ?pulumiLabels,
      'relatedProjects': ?relatedProjects,
      'roundTrip': ?roundTrip,
      'source': ?pulumi.Input.mapOptionalInputValue<ConnectivityTestSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory ConnectivityTestState.fromMap(Map<String, dynamic> map) {
    return ConnectivityTestState(
      bypassFirewallChecks: map['bypassFirewallChecks'] == null ? null : (map['bypassFirewallChecks'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destination: map['destination'] == null ? null : (ConnectivityTestDestination.fromMap((map['destination'] as Map).cast<String, dynamic>())).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      relatedProjects: map['relatedProjects'] == null ? null : ((map['relatedProjects'] as List).cast<String>()).input(),
      roundTrip: map['roundTrip'] == null ? null : (map['roundTrip'] as bool).input(),
      source: map['source'] == null ? null : (ConnectivityTestSource.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

