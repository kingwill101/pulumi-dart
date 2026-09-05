import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_iam_policy_args.dart';
import 'repository_iam_policy_state.dart';

class RepositoryIamPolicy extends pulumi.CustomResource {
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> policyData;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> repository;

  /// Creates a new [RepositoryIamPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RepositoryIamPolicy]. {@macro pulumi_dataform_repository_iam_policy_repository_iam_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RepositoryIamPolicy(
    String name, {
    RepositoryIamPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/repositoryIamPolicy:RepositoryIamPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    etag = registerOutput<String>('etag');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    repository = registerOutput<String>('repository');
  }

  /// Gets an existing [RepositoryIamPolicy] resource's state with the given [name] and [id].
  static RepositoryIamPolicy get(
    String name,
    pulumi.Input<String> id, {
    RepositoryIamPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RepositoryIamPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RepositoryIamPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/repositoryIamPolicy:RepositoryIamPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    repository = registerOutput<String>('repository');
  }

  /// Creates a typed reference to an existing [RepositoryIamPolicy] resource.
  RepositoryIamPolicy.reference(String urn)
    : super(
        'gcp:dataform/repositoryIamPolicy:RepositoryIamPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    etag = registerOutput<String>('etag');
    policyData = registerOutput<String>('policyData');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    repository = registerOutput<String>('repository');
  }
}
