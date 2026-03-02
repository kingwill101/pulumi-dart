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
    this.creationTimestamp,
    this.description,
    this.fingerprint,
    this.firewallPolicyId,
    this.name,
    this.parent,
    this.ruleTupleCount,
    this.selfLink,
    this.selfLinkWithId,
    this.shortName,
  });

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
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint'] as String).input(),
      firewallPolicyId: map['firewallPolicyId'] == null ? null : (map['firewallPolicyId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      ruleTupleCount: map['ruleTupleCount'] == null ? null : (map['ruleTupleCount'] as int).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
      selfLinkWithId: map['selfLinkWithId'] == null ? null : (map['selfLinkWithId'] as String).input(),
      shortName: map['shortName'] == null ? null : (map['shortName'] as String).input(),
    );
  }
}

