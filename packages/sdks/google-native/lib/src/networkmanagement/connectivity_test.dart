import 'package:pulumi/pulumi.dart' as pulumi;
import 'connectivity_test_args.dart';
import 'endpoint_response.dart';
import 'probing_details_response.dart';
import 'reachability_details_response.dart';

/// Creates a new Connectivity Test. After you create a test, the reachability analysis is performed as part of the long running operation, which completes when the analysis completes. If the endpoint specifications in `ConnectivityTest` are invalid (for example, containing non-existent resources in the network, or you don't have read permissions to the network configurations of listed projects), then the reachability result returns a value of `UNKNOWN`. If the endpoint specifications in `ConnectivityTest` are incomplete, the reachability result returns a value of AMBIGUOUS. For more information, see the Connectivity Test documentation.
/// Auto-naming is currently not supported for this resource.
class ConnectivityTest extends pulumi.CustomResource {
  /// The time the test was created.
  late final pulumi.Output<String> createTime;
  /// The user-supplied description of the Connectivity Test. Maximum of 512 characters.
  late final pulumi.Output<String> description;
  /// Destination specification of the Connectivity Test. You can use a combination of destination IP address, Compute Engine VM instance, or VPC network to uniquely identify the destination location. Even if the destination IP address is not unique, the source IP location is unique. Usually, the analysis can infer the destination endpoint from route information. If the destination you specify is a VM instance and the instance has multiple network interfaces, then you must also specify either a destination IP address or VPC network to identify the destination interface. A reachability analysis proceeds even if the destination location is ambiguous. However, the result can include endpoints that you don't intend to test.
  late final pulumi.Output<EndpointResponse> destination;
  /// The display name of a Connectivity Test.
  late final pulumi.Output<String> displayName;
  /// Resource labels to represent user-provided metadata.
  late final pulumi.Output<Map<String, String>> labels;
  /// Unique name of the resource using the form: `projects/{project_id}/locations/global/connectivityTests/{test_id}`
  late final pulumi.Output<String> name;
  /// The probing details of this test from the latest run, present for applicable tests only. The details are updated when creating a new test, updating an existing test, or triggering a one-time rerun of an existing test.
  late final pulumi.Output<ProbingDetailsResponse> probingDetails;
  late final pulumi.Output<String> project;
  /// IP Protocol of the test. When not provided, "TCP" is assumed.
  late final pulumi.Output<String> protocol;
  /// The reachability details of this test from the latest run. The details are updated when creating a new test, updating an existing test, or triggering a one-time rerun of an existing test.
  late final pulumi.Output<ReachabilityDetailsResponse> reachabilityDetails;
  /// Other projects that may be relevant for reachability analysis. This is applicable to scenarios where a test can cross project boundaries.
  late final pulumi.Output<List<String>> relatedProjects;
  /// Source specification of the Connectivity Test. You can use a combination of source IP address, virtual machine (VM) instance, or Compute Engine network to uniquely identify the source location. Examples: If the source IP address is an internal IP address within a Google Cloud Virtual Private Cloud (VPC) network, then you must also specify the VPC network. Otherwise, specify the VM instance, which already contains its internal IP address and VPC network information. If the source of the test is within an on-premises network, then you must provide the destination VPC network. If the source endpoint is a Compute Engine VM instance with multiple network interfaces, the instance itself is not sufficient to identify the endpoint. So, you must also specify the source IP address or VPC network. A reachability analysis proceeds even if the source location is ambiguous. However, the test result may include endpoints that you don't intend to test.
  late final pulumi.Output<EndpointResponse> source;
  /// Required. The logical name of the Connectivity Test in your project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-40 characters. * Must end with a number or a letter. * Must be unique within the customer project
  late final pulumi.Output<String> testId;
  /// The time the test's configuration was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ConnectivityTest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectivityTest]. {@macro pulumi_networkmanagement_v1_connectivity_test_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectivityTest(
    String name, {
    ConnectivityTestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:networkmanagement/v1:ConnectivityTest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    destination = registerOutput<EndpointResponse>('destination', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    probingDetails = registerOutput<ProbingDetailsResponse>('probingDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProbingDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    protocol = registerOutput<String>('protocol');
    reachabilityDetails = registerOutput<ReachabilityDetailsResponse>('reachabilityDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReachabilityDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    relatedProjects = registerOutput<List<String>>('relatedProjects');
    source = registerOutput<EndpointResponse>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    testId = registerOutput<String>('testId');
    updateTime = registerOutput<String>('updateTime');
  }
}
