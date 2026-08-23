// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connectivity_tests_connectivity_test_destination.dart';
import 'get_connectivity_tests_connectivity_test_source.dart';

class GetConnectivityTestsConnectivityTest {
  /// Whether the analysis should skip firewall checking.
  final pulumi.Input<bool> bypassFirewallChecks;
  /// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'terraform apply' would delete the instance,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String> deletionPolicy;
  /// The user-supplied description of the Connectivity Test.
  final pulumi.Input<String> description;
  /// Destination specification of the Connectivity Test.
  /// Structure is documented below.
  final pulumi.Input<List<GetConnectivityTestsConnectivityTestDestination>> destinations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>> effectiveLabels;
  /// Resource labels to represent user-provided metadata.
  final pulumi.Input<Map<String, String>> labels;
  /// Unique name for the connectivity test.
  final pulumi.Input<String> name;
  /// The ID of the project.
  final pulumi.Input<String> project;
  /// IP Protocol of the test.
  final pulumi.Input<String> protocol;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>> pulumiLabels;
  /// Other projects that may be relevant for reachability analysis.
  final pulumi.Input<List<String>> relatedProjects;
  /// Whether run analysis for the return path from destination to source.
  final pulumi.Input<bool> roundTrip;
  /// Source specification of the Connectivity Test.
  /// Structure is documented below.
  final pulumi.Input<List<GetConnectivityTestsConnectivityTestSource>> sources;

  /// Creates a new [GetConnectivityTestsConnectivityTest].
  /// [bypassFirewallChecks] Whether the analysis should skip firewall checking.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// [description] The user-supplied description of the Connectivity Test.
  /// [destinations] Destination specification of the Connectivity Test.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Terraform, other clients and services.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [name] Unique name for the connectivity test.
  /// [project] The ID of the project.
  /// [protocol] IP Protocol of the test.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [relatedProjects] Other projects that may be relevant for reachability analysis.
  /// [roundTrip] Whether run analysis for the return path from destination to source.
  /// [sources] Source specification of the Connectivity Test.
  const GetConnectivityTestsConnectivityTest({
    required this.bypassFirewallChecks,
    required this.deletionPolicy,
    required this.description,
    required this.destinations,
    required this.effectiveLabels,
    required this.labels,
    required this.name,
    required this.project,
    required this.protocol,
    required this.pulumiLabels,
    required this.relatedProjects,
    required this.roundTrip,
    required this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassFirewallChecks': bypassFirewallChecks,
      'deletionPolicy': deletionPolicy,
      'description': description,
      'destinations': pulumi.Input.mapInputValue<List<GetConnectivityTestsConnectivityTestDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<GetConnectivityTestsConnectivityTestDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'effectiveLabels': effectiveLabels,
      'labels': labels,
      'name': name,
      'project': project,
      'protocol': protocol,
      'pulumiLabels': pulumiLabels,
      'relatedProjects': relatedProjects,
      'roundTrip': roundTrip,
      'sources': pulumi.Input.mapInputValue<List<GetConnectivityTestsConnectivityTestSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<GetConnectivityTestsConnectivityTestSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetConnectivityTestsConnectivityTest.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestsConnectivityTest(
      bypassFirewallChecks: pulumi.Input.fromValue(map['bypassFirewallChecks'] as bool),
      deletionPolicy: pulumi.Input.fromValue(map['deletionPolicy'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      destinations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetConnectivityTestsConnectivityTestDestination>(map['destinations']!, (value) => GetConnectivityTestsConnectivityTestDestination.fromMap((value as Map).cast<String, dynamic>()))),
      effectiveLabels: pulumi.Input.fromValue((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      pulumiLabels: pulumi.Input.fromValue((map['pulumiLabels'] as Map).cast<String, String>()),
      relatedProjects: pulumi.Input.fromValue((map['relatedProjects'] as List).cast<String>()),
      roundTrip: pulumi.Input.fromValue(map['roundTrip'] as bool),
      sources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetConnectivityTestsConnectivityTestSource>(map['sources']!, (value) => GetConnectivityTestsConnectivityTestSource.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
