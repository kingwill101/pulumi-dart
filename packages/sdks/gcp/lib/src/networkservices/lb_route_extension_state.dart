// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lb_route_extension_extension_chain.dart';

/// Input properties used for looking up and filtering LbRouteExtension resources.
class LbRouteExtensionState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// A set of ordered extension chains that contain the match conditions and extensions to execute.
  /// Match conditions for each extension chain are evaluated in sequence for a given request.
  /// The first extension chain that has a condition that matches the request is executed.
  /// Any subsequent extension chains do not execute. Limited to 5 extension chains per resource.
  /// Further information can be found at https://cloud.google.com/service-extensions/docs/reference/rest/v1/ExtensionChain
  /// Structure is documented below.
  final pulumi.Input<List<LbRouteExtensionExtensionChain>>? extensionChains;
  /// A list of references to the forwarding rules to which this service extension is attached to.
  /// At least one forwarding rule is required. There can be only one LbRouteExtension resource per forwarding rule.
  final pulumi.Input<List<String>>? forwardingRules;
  /// Set of labels associated with the LbRouteExtension resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// All backend services and forwarding rules referenced by this extension must share the same load balancing scheme.
  /// For more information, refer to [Choosing a load balancer](https://cloud.google.com/load-balancing/docs/backend-service) and
  /// [Supported application load balancers](https://cloud.google.com/service-extensions/docs/callouts-overview#supported-lbs).
  /// Possible values are: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`.
  final pulumi.Input<String>? loadBalancingScheme;
  /// The location of the route extension
  final pulumi.Input<String>? location;
  /// Name of the LbRouteExtension resource in the following format: projects/{project}/locations/{location}/lbRouteExtensions/{lbRouteExtension}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Creates a new [LbRouteExtensionState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] A human-readable description of the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [extensionChains] A set of ordered extension chains that contain the match conditions and extensions to execute.
  /// [forwardingRules] A list of references to the forwarding rules to which this service extension is attached to.
  /// [labels] Set of labels associated with the LbRouteExtension resource.
  /// [loadBalancingScheme] All backend services and forwarding rules referenced by this extension must share the same load balancing scheme.
  /// [location] The location of the route extension
  /// [name] Name of the LbRouteExtension resource in the following format: projects/{project}/locations/{location}/lbRouteExtensions/{lbRouteExtension}
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  const LbRouteExtensionState({
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.extensionChains,
    this.forwardingRules,
    this.labels,
    this.loadBalancingScheme,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'extensionChains': ?pulumi.Input.mapOptionalInputValue<List<LbRouteExtensionExtensionChain>, List<Map<String, dynamic>>>(extensionChains, (value) => pulumi.Input.encodeList<LbRouteExtensionExtensionChain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forwardingRules': ?forwardingRules,
      'labels': ?labels,
      'loadBalancingScheme': ?loadBalancingScheme,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
    };
  }

  factory LbRouteExtensionState.fromMap(Map<String, dynamic> map) {
    return LbRouteExtensionState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      extensionChains: (() { final guardedValue = map['extensionChains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LbRouteExtensionExtensionChain>(guardedValue, (value) => LbRouteExtensionExtensionChain.fromMap((value as Map).cast<String, dynamic>()))); })(),
      forwardingRules: (() { final guardedValue = map['forwardingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      loadBalancingScheme: (() { final guardedValue = map['loadBalancingScheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
