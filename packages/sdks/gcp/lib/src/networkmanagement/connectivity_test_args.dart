// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connectivity_test_destination.dart';
import 'connectivity_test_source.dart';

/// {@template pulumi_networkmanagement_connectivity_test_connectivity_test_args_doc}
/// The set of arguments for ConnectivityTest.
/// {@endtemplate}
/// {@macro pulumi_networkmanagement_connectivity_test_connectivity_test_args_doc}
class ConnectivityTestArgs {
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
  final pulumi.Input<ConnectivityTestDestination> destination;
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
  final pulumi.Input<ConnectivityTestSource> source;

  /// Creates a new [ConnectivityTestArgs].
  /// [bypassFirewallChecks] Whether the analysis should skip firewall checking. Default value is false.
  /// [description] The user-supplied description of the Connectivity Test.
  /// [destination] Required. Destination specification of the Connectivity Test.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [name] Unique name for the connectivity test.
  /// [project] The ID of the project in which the resource belongs.
  /// [protocol] IP Protocol of the test. When not provided, "TCP" is assumed.
  /// [relatedProjects] Other projects that may be relevant for reachability analysis.
  /// [roundTrip] Whether run analysis for the return path from destination to source.
  /// [source] Required. Source specification of the Connectivity Test.
  const ConnectivityTestArgs({
    this.bypassFirewallChecks,
    this.description,
    required this.destination,
    this.labels,
    this.name,
    this.project,
    this.protocol,
    this.relatedProjects,
    this.roundTrip,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassFirewallChecks': ?bypassFirewallChecks,
      'description': ?description,
      'destination': pulumi.Input.mapInputValue<ConnectivityTestDestination, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'protocol': ?protocol,
      'relatedProjects': ?relatedProjects,
      'roundTrip': ?roundTrip,
      'source': pulumi.Input.mapInputValue<ConnectivityTestSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory ConnectivityTestArgs.fromMap(Map<String, dynamic> map) {
    return ConnectivityTestArgs(
      bypassFirewallChecks: (() { final guardedValue = map['bypassFirewallChecks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: pulumi.Input.fromValue(ConnectivityTestDestination.fromMap((map['destination']! as Map).cast<String, dynamic>())),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relatedProjects: (() { final guardedValue = map['relatedProjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      roundTrip: (() { final guardedValue = map['roundTrip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      source: pulumi.Input.fromValue(ConnectivityTestSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}

