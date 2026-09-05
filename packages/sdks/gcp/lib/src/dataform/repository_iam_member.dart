import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_iam_member_args.dart';
import 'repository_iam_member_condition.dart';
import 'repository_iam_member_state.dart';

class RepositoryIamMember extends pulumi.CustomResource {
  late final pulumi.Output<RepositoryIamMemberCondition?> condition;
  late final pulumi.Output<String> etag;
  late final pulumi.Output<String> member;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> repository;
  late final pulumi.Output<String> role;

  /// Creates a new [RepositoryIamMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RepositoryIamMember]. {@macro pulumi_dataform_repository_iam_member_repository_iam_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RepositoryIamMember(
    String name, {
    RepositoryIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/repositoryIamMember:RepositoryIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    condition = registerOutput<RepositoryIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    repository = registerOutput<String>('repository');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [RepositoryIamMember] resource's state with the given [name] and [id].
  static RepositoryIamMember get(
    String name,
    pulumi.Input<String> id, {
    RepositoryIamMemberState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RepositoryIamMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  RepositoryIamMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataform/repositoryIamMember:RepositoryIamMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    condition = registerOutput<RepositoryIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    repository = registerOutput<String>('repository');
    role = registerOutput<String>('role');
  }

  /// Creates a typed reference to an existing [RepositoryIamMember] resource.
  RepositoryIamMember.reference(String urn)
    : super(
        'gcp:dataform/repositoryIamMember:RepositoryIamMember',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    condition = registerOutput<RepositoryIamMemberCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryIamMemberCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    repository = registerOutput<String>('repository');
    role = registerOutput<String>('role');
  }
}
