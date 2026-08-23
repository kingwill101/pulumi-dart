import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_pack_args.dart';

/// A Policy Pack published to Pulumi Cloud. The source directory is tarballed and uploaded on Create; changing source content publishes a new version (replace).
class PolicyPack extends pulumi.CustomResource {
  late final pulumi.Output<String> contentHash;
  /// Optional display name. Changing it requires a new versionTag (policy pack versions are immutable in Pulumi Cloud).
  late final pulumi.Output<String?> displayName;
  /// Policy pack name (unique within the org).
  late final pulumi.Output<String> name;
  /// Organization name.
  late final pulumi.Output<String> organization;
  /// Metadata for each policy in the pack.
  late final pulumi.Output<List<Map<String, dynamic>>?> policies;
  /// Path to the directory containing the policy pack source. The directory is tarballed and uploaded.
  late final pulumi.Output<String> sourcePath;
  late final pulumi.Output<int> version;
  /// Semantic version tag (e.g. "1.0.0"). Versions are immutable; change to publish a new version.
  late final pulumi.Output<String> versionTag;

  /// Creates a new [PolicyPack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyPack]. {@macro pulumi_index_policy_pack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyPack(
    String name, {
    PolicyPackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:PolicyPack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    contentHash = registerOutput<String>('contentHash');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    policies = registerOutput<List<Map<String, dynamic>>?>('policies');
    sourcePath = registerOutput<String>('sourcePath');
    version = registerOutput<int>('version');
    versionTag = registerOutput<String>('versionTag');
  }
}
