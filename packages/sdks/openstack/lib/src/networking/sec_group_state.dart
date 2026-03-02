// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecGroup resources.
class SecGroupState {
  /// The collection of tags assigned on the security group, which have
  /// been explicitly and implicitly added.
  final pulumi.Input<List<String>>? allTags;
  /// Whether or not to delete the default
  /// egress security rules. This is `false` by default. See the below note
  /// for more information.
  final pulumi.Input<bool>? deleteDefaultRules;
  /// A unique name for the security group.
  final pulumi.Input<String>? description;
  /// A unique name for the security group.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V2 networking client.
  /// A networking client is needed to create a port. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// security group.
  final pulumi.Input<String>? region;
  /// Indicates if the security group is stateful or
  /// stateless. Update of the stateful argument is allowed when there is no port
  /// associated with the security group. Available only in OpenStack environments
  /// with the `stateful-security-group` extension. Defaults to true.
  final pulumi.Input<bool>? stateful;
  /// A set of string tags for the security group.
  final pulumi.Input<List<String>>? tags;
  /// The owner of the security group. Required if admin
  /// wants to create a port for another tenant. Changing this creates a new
  /// security group.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [SecGroupState].
  /// [allTags] The collection of tags assigned on the security group, which have
  /// [deleteDefaultRules] Whether or not to delete the default
  /// [description] A unique name for the security group.
  /// [name] A unique name for the security group.
  /// [region] The region in which to obtain the V2 networking client.
  /// [stateful] Indicates if the security group is stateful or
  /// [tags] A set of string tags for the security group.
  /// [tenantId] The owner of the security group. Required if admin
  SecGroupState({
    this.allTags,
    this.deleteDefaultRules,
    this.description,
    this.name,
    this.region,
    this.stateful,
    this.tags,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allTags': ?allTags,
      'deleteDefaultRules': ?deleteDefaultRules,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'stateful': ?stateful,
      'tags': ?tags,
      'tenantId': ?tenantId,
    };
  }

  factory SecGroupState.fromMap(Map<String, dynamic> map) {
    return SecGroupState(
      allTags: map['allTags'] == null ? null : ((map['allTags']! as List).cast<String>()).input(),
      deleteDefaultRules: map['deleteDefaultRules'] == null ? null : (map['deleteDefaultRules']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      stateful: map['stateful'] == null ? null : (map['stateful']! as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
    );
  }
}

