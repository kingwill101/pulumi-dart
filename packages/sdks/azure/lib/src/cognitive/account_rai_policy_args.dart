// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_rai_policy_content_filter.dart';

/// {@template pulumi_cognitive_account_rai_policy_account_rai_policy_args_doc}
/// The set of arguments for AccountRaiPolicy.
/// {@endtemplate}
/// {@macro pulumi_cognitive_account_rai_policy_account_rai_policy_args_doc}
class AccountRaiPolicyArgs {
  /// The name of the base policy to use for this RAI Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String> basePolicyName;

  /// The ID of the Cognitive Service Account to which this RAI Policy should be associated. Changing this forces a new resource to be created.
  final pulumi.Input<String> cognitiveAccountId;

  /// A `content_filter` block as defined below.
  final pulumi.Input<List<AccountRaiPolicyContentFilter>> contentFilters;

  /// The mode of the RAI Policy. Possible values are `Default`, `Deferred`, `Blocking` or `Asynchronous_filter`.
  final pulumi.Input<String>? mode;

  /// The name of the Cognitive Service Account RAI Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountRaiPolicyArgs].
  /// [basePolicyName] The name of the base policy to use for this RAI Policy. Changing this forces a new resource to be created.
  /// [cognitiveAccountId] The ID of the Cognitive Service Account to which this RAI Policy should be associated. Changing this forces a new resource to be created.
  /// [contentFilters] A `content_filter` block as defined below.
  /// [mode] The mode of the RAI Policy. Possible values are `Default`, `Deferred`, `Blocking` or `Asynchronous_filter`.
  /// [name] The name of the Cognitive Service Account RAI Policy. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  AccountRaiPolicyArgs({
    required this.basePolicyName,
    required this.cognitiveAccountId,
    required this.contentFilters,
    this.mode,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basePolicyName': basePolicyName,
      'cognitiveAccountId': cognitiveAccountId,
      'contentFilters':
          pulumi.Input.mapInputValue<
            List<AccountRaiPolicyContentFilter>,
            List<Map<String, dynamic>>
          >(
            contentFilters,
            (value) =>
                pulumi.Input.encodeList<
                  AccountRaiPolicyContentFilter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'mode': ?mode,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory AccountRaiPolicyArgs.fromMap(Map<String, dynamic> map) {
    return AccountRaiPolicyArgs(
      basePolicyName: pulumi.Input.fromValue(map['basePolicyName'] as String),
      cognitiveAccountId: pulumi.Input.fromValue(
        map['cognitiveAccountId'] as String,
      ),
      contentFilters: pulumi.Input.fromValue(
        pulumi.Input.decodeList<AccountRaiPolicyContentFilter>(
          map['contentFilters']!,
          (value) => AccountRaiPolicyContentFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
