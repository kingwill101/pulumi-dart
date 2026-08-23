// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_policy_association.dart';

/// Input properties used for looking up and filtering RegionNetworkPolicy resources.
class RegionNetworkPolicyState {
  /// [Output Only] A list of associations that belong to this network policy.
  /// Structure is documented below.
  final pulumi.Input<List<RegionNetworkPolicyAssociation>>? associations;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// User-provided name of the Network policy. The name should be unique in the project in which the policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of this resource.
  final pulumi.Input<String>? region;
  /// The unique identifier for the resource. This identifier is defined by the server.
  final pulumi.Input<String>? regionNetworkPolicyId;
  /// Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  final pulumi.Input<int>? ruleTupleCount;
  /// Server-defined URL for the resource.
  final pulumi.Input<String>? selfLink;
  /// Server-defined URL for this resource with the resource id.
  final pulumi.Input<String>? selfLinkWithId;

  /// Creates a new [RegionNetworkPolicyState].
  /// [associations] [Output Only] A list of associations that belong to this network policy.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [name] User-provided name of the Network policy. The name should be unique in the project in which the policy is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of this resource.
  /// [regionNetworkPolicyId] The unique identifier for the resource. This identifier is defined by the server.
  /// [ruleTupleCount] Total count of all firewall policy rule tuples. A firewall policy can not exceed a set number of tuples.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  const RegionNetworkPolicyState({
    this.associations,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.name,
    this.project,
    this.region,
    this.regionNetworkPolicyId,
    this.ruleTupleCount,
    this.selfLink,
    this.selfLinkWithId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associations': ?pulumi.Input.mapOptionalInputValue<List<RegionNetworkPolicyAssociation>, List<Map<String, dynamic>>>(associations, (value) => pulumi.Input.encodeList<RegionNetworkPolicyAssociation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'regionNetworkPolicyId': ?regionNetworkPolicyId,
      'ruleTupleCount': ?ruleTupleCount,
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
    };
  }

  factory RegionNetworkPolicyState.fromMap(Map<String, dynamic> map) {
    return RegionNetworkPolicyState(
      associations: (() { final guardedValue = map['associations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegionNetworkPolicyAssociation>(guardedValue, (value) => RegionNetworkPolicyAssociation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionNetworkPolicyId: (() { final guardedValue = map['regionNetworkPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleTupleCount: (() { final guardedValue = map['ruleTupleCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      selfLinkWithId: (() { final guardedValue = map['selfLinkWithId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
