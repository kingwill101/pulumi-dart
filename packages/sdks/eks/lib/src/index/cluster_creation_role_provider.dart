import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_creation_role_provider_args.dart';
import 'package:pulumi_aws/iam.dart' as pulumi_aws_iam;

/// ClusterCreationRoleProvider is a component that wraps creating a role provider that can be passed to the `Cluster`'s `creationRoleProvider`. This can be used to provide a specific role to use for the creation of the EKS cluster different from the role being used to run the Pulumi deployment.
class ClusterCreationRoleProvider extends pulumi.ComponentResource {
  late final pulumi.Output<pulumi_aws_iam.Role> role;

  /// Creates a new [ClusterCreationRoleProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterCreationRoleProvider]. {@macro pulumi_index_cluster_creation_role_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterCreationRoleProvider(
    String name, {
    ClusterCreationRoleProviderArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'eks:index:ClusterCreationRoleProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.ComponentResourceOptions(),
        ) {
    this.role = registerOutput<pulumi_aws_iam.Role>('role');
  }
}
