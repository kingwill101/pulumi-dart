import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_iam_binding_args.dart';
import 'repository_iam_binding_condition.dart';
import 'repository_iam_binding_state.dart';

class RepositoryIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<RepositoryIamBindingCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<List<String>> members;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> repository;
  late final pulumi.Output<String> role;

  /// Creates a new [RepositoryIamBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RepositoryIamBinding]. {@macro pulumi_dataform_repository_iam_binding_repository_iam_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RepositoryIamBinding(
    String name, {
    RepositoryIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/repositoryIamBinding:RepositoryIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    condition = registerOutput<RepositoryIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    repository = registerOutput<String>('repository');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [RepositoryIamBinding] resource's state with the given [name] and [id].
  static RepositoryIamBinding get(
    String name,
    pulumi.Input<String> id, {
    RepositoryIamBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RepositoryIamBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RepositoryIamBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/repositoryIamBinding:RepositoryIamBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<RepositoryIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    repository = registerOutput<String>('repository');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [RepositoryIamBinding] resource.
  RepositoryIamBinding.reference(String urn)
    : super(
        'gcp:dataform/repositoryIamBinding:RepositoryIamBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<RepositoryIamBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryIamBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    members = registerOutput<List<String>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    repository = registerOutput<String>('repository');
    role = registerOutput<String>('role');
  }
}
