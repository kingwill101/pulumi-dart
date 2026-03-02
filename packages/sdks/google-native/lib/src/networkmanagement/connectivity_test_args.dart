// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint.dart';

/// {@template pulumi_networkmanagement_v1_connectivity_test_args_doc}
/// The set of arguments for ConnectivityTest.
/// {@endtemplate}
/// {@macro pulumi_networkmanagement_v1_connectivity_test_args_doc}
class ConnectivityTestArgs {
  /// The user-supplied description of the Connectivity Test. Maximum of 512 characters.
  final pulumi.Input<String>? description;
  /// Destination specification of the Connectivity Test. You can use a combination of destination IP address, Compute Engine VM instance, or VPC network to uniquely identify the destination location. Even if the destination IP address is not unique, the source IP location is unique. Usually, the analysis can infer the destination endpoint from route information. If the destination you specify is a VM instance and the instance has multiple network interfaces, then you must also specify either a destination IP address or VPC network to identify the destination interface. A reachability analysis proceeds even if the destination location is ambiguous. However, the result can include endpoints that you don't intend to test.
  final pulumi.Input<Endpoint> destination;
  /// Resource labels to represent user-provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  /// Unique name of the resource using the form: `projects/{project_id}/locations/global/connectivityTests/{test_id}`
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;
  /// IP Protocol of the test. When not provided, "TCP" is assumed.
  final pulumi.Input<String>? protocol;
  /// Other projects that may be relevant for reachability analysis. This is applicable to scenarios where a test can cross project boundaries.
  final pulumi.Input<List<String>>? relatedProjects;
  /// Source specification of the Connectivity Test. You can use a combination of source IP address, virtual machine (VM) instance, or Compute Engine network to uniquely identify the source location. Examples: If the source IP address is an internal IP address within a Google Cloud Virtual Private Cloud (VPC) network, then you must also specify the VPC network. Otherwise, specify the VM instance, which already contains its internal IP address and VPC network information. If the source of the test is within an on-premises network, then you must provide the destination VPC network. If the source endpoint is a Compute Engine VM instance with multiple network interfaces, the instance itself is not sufficient to identify the endpoint. So, you must also specify the source IP address or VPC network. A reachability analysis proceeds even if the source location is ambiguous. However, the test result may include endpoints that you don't intend to test.
  final pulumi.Input<Endpoint> source;
  /// Required. The logical name of the Connectivity Test in your project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the customer project
  final pulumi.Input<String> testId;

  /// Creates a new [ConnectivityTestArgs].
  /// [description] The user-supplied description of the Connectivity Test. Maximum of 512 characters.
  /// [destination] Destination specification of the Connectivity Test. You can use a combination of destination IP address, Compute Engine VM instance, or VPC network to uniquely identify the destination location. Even if the destination IP address is not unique, the source IP location is unique. Usually, the analysis can infer the destination endpoint from route information. If the destination you specify is a VM instance and the instance has multiple network interfaces, then you must also specify either a destination IP address or VPC network to identify the destination interface. A reachability analysis proceeds even if the destination location is ambiguous. However, the result can include endpoints that you don't intend to test.
  /// [labels] Resource labels to represent user-provided metadata.
  /// [name] Unique name of the resource using the form: `projects/{project_id}/locations/global/connectivityTests/{test_id}`
  /// [project] Optional.
  /// [protocol] IP Protocol of the test. When not provided, "TCP" is assumed.
  /// [relatedProjects] Other projects that may be relevant for reachability analysis. This is applicable to scenarios where a test can cross project boundaries.
  /// [source] Source specification of the Connectivity Test. You can use a combination of source IP address, virtual machine (VM) instance, or Compute Engine network to uniquely identify the source location. Examples: If the source IP address is an internal IP address within a Google Cloud Virtual Private Cloud (VPC) network, then you must also specify the VPC network. Otherwise, specify the VM instance, which already contains its internal IP address and VPC network information. If the source of the test is within an on-premises network, then you must provide the destination VPC network. If the source endpoint is a Compute Engine VM instance with multiple network interfaces, the instance itself is not sufficient to identify the endpoint. So, you must also specify the source IP address or VPC network. A reachability analysis proceeds even if the source location is ambiguous. However, the test result may include endpoints that you don't intend to test.
  /// [testId] Required. The logical name of the Connectivity Test in your project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the customer project
  ConnectivityTestArgs({
    this.description,
    required this.destination,
    this.labels,
    required this.name,
    this.project,
    this.protocol,
    this.relatedProjects,
    required this.source,
    required this.testId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destination': pulumi.Input.mapInputValue<Endpoint, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'labels': ?labels,
      'name': name,
      'project': ?project,
      'protocol': ?protocol,
      'relatedProjects': ?relatedProjects,
      'source': pulumi.Input.mapInputValue<Endpoint, Map<String, dynamic>>(source, (value) => value.toMap()),
      'testId': testId,
    };
  }

  factory ConnectivityTestArgs.fromMap(Map<String, dynamic> map) {
    return ConnectivityTestArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      destination: (Endpoint.fromMap((map['destination'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      relatedProjects: map['relatedProjects'] == null ? null : ((map['relatedProjects']! as List).cast<String>()).input(),
      source: (Endpoint.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
      testId: (map['testId'] as String).input(),
    );
  }
}

