// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FirewallPolicy resources.
class FirewallPolicyState {
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Fingerprint of the resource. This field is used internally during updates of this resource.
  final pulumi.Input<String>? fingerprint;
  /// The unique identifier for the resource. This identifier is defined by the server.
  final pulumi.Input<String>? firewallPolicyId;
  /// Name of the resource. It is a numeric ID allocated by GCP which uniquely identifies the Firewall Policy.
  final pulumi.Input<String>? name;
  /// The parent of the firewall policy.
  final pulumi.Input<String>? parent;
  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  final pulumi.Input<int>? ruleTupleCount;
  /// Server-defined URL for the resource.
  final pulumi.Input<String>? selfLink;
  /// Server-defined URL for this resource with the resource id.
  final pulumi.Input<String>? selfLinkWithId;
  /// User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created.
  /// This field is not applicable to network firewall policies. This name must be set on creation and cannot be changed. The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? shortName;

  /// Creates a new [FirewallPolicyState].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [fingerprint] Fingerprint of the resource. This field is used internally during updates of this resource.
  /// [firewallPolicyId] The unique identifier for the resource. This identifier is defined by the server.
  /// [name] Name of the resource. It is a numeric ID allocated by GCP which uniquely identifies the Firewall Policy.
  /// [parent] The parent of the firewall policy.
  /// [ruleTupleCount] Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [shortName] User-provided name of the Organization firewall policy. The name should be unique in the organization in which the firewall policy is created.
  FirewallPolicyState({
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<String>? fingerprint,
    pulumi.Output<String>? firewallPolicyId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<int>? ruleTupleCount,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? selfLinkWithId,
    pulumi.Output<String>? shortName,
  }) :
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      firewallPolicyId = pulumi.Input.asOptionalInput<String>(firewallPolicyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      ruleTupleCount = pulumi.Input.asOptionalInput<int>(ruleTupleCount),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      selfLinkWithId = pulumi.Input.asOptionalInput<String>(selfLinkWithId),
      shortName = pulumi.Input.asOptionalInput<String>(shortName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'fingerprint': ?fingerprint,
      'firewallPolicyId': ?firewallPolicyId,
      'name': ?name,
      'parent': ?parent,
      'ruleTupleCount': ?ruleTupleCount,
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
      'shortName': ?shortName,
    };
  }

  factory FirewallPolicyState.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyState(
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      firewallPolicyId: map['firewallPolicyId'] == null ? null : pulumi.Output.create<String>(map['firewallPolicyId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      ruleTupleCount: map['ruleTupleCount'] == null ? null : pulumi.Output.create<int>(map['ruleTupleCount'] as int),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      selfLinkWithId: map['selfLinkWithId'] == null ? null : pulumi.Output.create<String>(map['selfLinkWithId'] as String),
      shortName: map['shortName'] == null ? null : pulumi.Output.create<String>(map['shortName'] as String),
    );
  }
}

