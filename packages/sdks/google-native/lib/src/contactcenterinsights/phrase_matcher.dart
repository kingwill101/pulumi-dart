import 'package:pulumi/pulumi.dart' as pulumi;
import 'phrase_matcher_args.dart';

/// Creates a phrase matcher.
class PhraseMatcher extends pulumi.CustomResource {
  /// The most recent time at which the activation status was updated.
  late final pulumi.Output<String> activationUpdateTime;

  /// Applies the phrase matcher only when it is active.
  late final pulumi.Output<bool> active;

  /// The human-readable name of the phrase matcher.
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> location;

  /// The resource name of the phrase matcher. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher}
  late final pulumi.Output<String> name;

  /// A list of phase match rule groups that are included in this matcher.
  late final pulumi.Output<List<Map<String, dynamic>>> phraseMatchRuleGroups;
  late final pulumi.Output<String> project;

  /// The timestamp of when the revision was created. It is also the create time when a new matcher is added.
  late final pulumi.Output<String> revisionCreateTime;

  /// Immutable. The revision ID of the phrase matcher. A new revision is committed whenever the matcher is changed, except when it is activated or deactivated. A server generated random ID will be used. Example: locations/global/phraseMatchers/my-first-matcher@1234567
  late final pulumi.Output<String> revisionId;

  /// The role whose utterances the phrase matcher should be matched against. If the role is ROLE_UNSPECIFIED it will be matched against any utterances in the transcript.
  late final pulumi.Output<String> roleMatch;

  /// The type of this phrase matcher.
  late final pulumi.Output<String> type;

  /// The most recent time at which the phrase matcher was updated.
  late final pulumi.Output<String> updateTime;

  /// The customized version tag to use for the phrase matcher. If not specified, it will default to `revision_id`.
  late final pulumi.Output<String> versionTag;

  /// Creates a new [PhraseMatcher].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PhraseMatcher]. {@macro pulumi_contactcenterinsights_v1_phrase_matcher_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PhraseMatcher(
    String name, {
    PhraseMatcherArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:contactcenterinsights/v1:PhraseMatcher',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    activationUpdateTime = registerOutput<String>('activationUpdateTime');
    active = registerOutput<bool>('active');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    phraseMatchRuleGroups = registerOutput<List<Map<String, dynamic>>>(
      'phraseMatchRuleGroups',
    );
    project = registerOutput<String>('project');
    revisionCreateTime = registerOutput<String>('revisionCreateTime');
    revisionId = registerOutput<String>('revisionId');
    roleMatch = registerOutput<String>('roleMatch');
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
    versionTag = registerOutput<String>('versionTag');
  }
}
