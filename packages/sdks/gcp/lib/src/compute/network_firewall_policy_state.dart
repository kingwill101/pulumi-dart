// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkFirewallPolicy resources.
class NetworkFirewallPolicyState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Fingerprint of the resource. This field is used internally during updates of this resource.
  final pulumi.Input<String>? fingerprint;
  /// User-provided name of the Network firewall policy. The name should be unique in the project in which the firewall policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The unique identifier for the resource. This identifier is defined by the server.
  final pulumi.Input<String>? networkFirewallPolicyId;
  /// Policy type is used to determine which resources (networks) the policy can be associated with.
  /// A policy can be associated with a network only if the network has the matching policyType in its network profile.
  /// Different policy types may support some of the Firewall Rules features.
  /// Possible values are: `VPC_POLICY`.
  final pulumi.Input<String>? policyType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  final pulumi.Input<int>? ruleTupleCount;
  /// Server-defined URL for the resource.
  final pulumi.Input<String>? selfLink;
  /// Server-defined URL for this resource with the resource id.
  final pulumi.Input<String>? selfLinkWithId;

  /// Creates a new [NetworkFirewallPolicyState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [fingerprint] Fingerprint of the resource. This field is used internally during updates of this resource.
  /// [name] User-provided name of the Network firewall policy. The name should be unique in the project in which the firewall policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [networkFirewallPolicyId] The unique identifier for the resource. This identifier is defined by the server.
  /// [policyType] Policy type is used to determine which resources (networks) the policy can be associated with.
  /// [project] The ID of the project in which the resource belongs.
  /// [ruleTupleCount] Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  NetworkFirewallPolicyState({
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? fingerprint,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkFirewallPolicyId,
    pulumi.Output<String>? policyType,
    pulumi.Output<String>? project,
    pulumi.Output<int>? ruleTupleCount,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? selfLinkWithId,
  }) :
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkFirewallPolicyId = pulumi.Input.asOptionalInput<String>(networkFirewallPolicyId),
      policyType = pulumi.Input.asOptionalInput<String>(policyType),
      project = pulumi.Input.asOptionalInput<String>(project),
      ruleTupleCount = pulumi.Input.asOptionalInput<int>(ruleTupleCount),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      selfLinkWithId = pulumi.Input.asOptionalInput<String>(selfLinkWithId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'name': ?name,
      'networkFirewallPolicyId': ?networkFirewallPolicyId,
      'policyType': ?policyType,
      'project': ?project,
      'ruleTupleCount': ?ruleTupleCount,
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
    };
  }

  factory NetworkFirewallPolicyState.fromMap(Map<String, dynamic> map) {
    return NetworkFirewallPolicyState(
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkFirewallPolicyId: map['networkFirewallPolicyId'] == null ? null : pulumi.Output.create<String>(map['networkFirewallPolicyId'] as String),
      policyType: map['policyType'] == null ? null : pulumi.Output.create<String>(map['policyType'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      ruleTupleCount: map['ruleTupleCount'] == null ? null : pulumi.Output.create<int>(map['ruleTupleCount'] as int),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      selfLinkWithId: map['selfLinkWithId'] == null ? null : pulumi.Output.create<String>(map['selfLinkWithId'] as String),
    );
  }
}

