// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_rai_policy_content_filter.dart';

/// Input properties used for looking up and filtering AccountRaiPolicy resources.
class AccountRaiPolicyState {
  /// The name of the base policy to use for this RAI Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? basePolicyName;
  /// The ID of the Cognitive Service Account to which this RAI Policy should be associated. Changing this forces a new resource to be created.
  final pulumi.Input<String>? cognitiveAccountId;
  /// A `content_filter` block as defined below.
  final pulumi.Input<List<AccountRaiPolicyContentFilter>>? contentFilters;
  /// The mode of the RAI Policy. Possible values are `Default`, `Deferred`, `Blocking` or `Asynchronous_filter`.
  final pulumi.Input<String>? mode;
  /// The name of the Cognitive Service Account RAI Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountRaiPolicyState].
  /// [basePolicyName] The name of the base policy to use for this RAI Policy. Changing this forces a new resource to be created.
  /// [cognitiveAccountId] The ID of the Cognitive Service Account to which this RAI Policy should be associated. Changing this forces a new resource to be created.
  /// [contentFilters] A `content_filter` block as defined below.
  /// [mode] The mode of the RAI Policy. Possible values are `Default`, `Deferred`, `Blocking` or `Asynchronous_filter`.
  /// [name] The name of the Cognitive Service Account RAI Policy. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  AccountRaiPolicyState({
    pulumi.Output<String>? basePolicyName,
    pulumi.Output<String>? cognitiveAccountId,
    pulumi.Output<List<AccountRaiPolicyContentFilter>>? contentFilters,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      basePolicyName = pulumi.Input.asOptionalInput<String>(basePolicyName),
      cognitiveAccountId = pulumi.Input.asOptionalInput<String>(cognitiveAccountId),
      contentFilters = pulumi.Input.asOptionalInput<List<AccountRaiPolicyContentFilter>>(contentFilters),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePolicyName': ?basePolicyName,
      'cognitiveAccountId': ?cognitiveAccountId,
      'contentFilters': ?pulumi.Input.mapOptionalInputValue<List<AccountRaiPolicyContentFilter>, List<Map<String, dynamic>>>(contentFilters, (value) => pulumi.Input.encodeList<AccountRaiPolicyContentFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': ?mode,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory AccountRaiPolicyState.fromMap(Map<String, dynamic> map) {
    return AccountRaiPolicyState(
      basePolicyName: map['basePolicyName'] == null ? null : pulumi.Output.create<String>(map['basePolicyName'] as String),
      cognitiveAccountId: map['cognitiveAccountId'] == null ? null : pulumi.Output.create<String>(map['cognitiveAccountId'] as String),
      contentFilters: map['contentFilters'] == null ? null : pulumi.Output.create<List<AccountRaiPolicyContentFilter>>(pulumi.Input.decodeList<AccountRaiPolicyContentFilter>(map['contentFilters'], (value) => AccountRaiPolicyContentFilter.fromMap((value as Map).cast<String, dynamic>()))),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

