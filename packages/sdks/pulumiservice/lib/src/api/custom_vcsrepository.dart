import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_vcsrepository_args.dart';

/// Adds a repository to a custom VCS integration. The repository name must be unique within the integration. Returns 409 Conflict if a repository with the same name is already configured.
class CustomVCSRepository extends pulumi.CustomResource {
  /// Creates a new [CustomVCSRepository].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomVCSRepository]. {@macro pulumi_api_integrations_custom_vcsrepository_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomVCSRepository(
    String name, {
    CustomVCSRepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/integrations:CustomVCSRepository',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        );
}
