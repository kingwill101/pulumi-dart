import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_organization_args.dart';

/// UpdateDefaultOrganization sets the default organization for the current user.
class DefaultOrganization extends pulumi.CustomResource {
  /// Returns the organization name. Can be an empty string, if the user is a member of no organizations
  late final pulumi.Output<String> gitHubLogin;
  /// Messages is a list of messages that should be displayed to the user that contextualize
  /// the default org; for example: warning new users if their default org as returned by the
  /// service is on an expiring trial and not free tier, with possible recommendations
  /// on how to configure their default org locally.
  /// Can be possibly empty.
  late final pulumi.Output<List<dynamic>> messages;

  /// Creates a new [DefaultOrganization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultOrganization]. {@macro pulumi_api_default_organization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultOrganization(
    String name, {
    DefaultOrganizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api:DefaultOrganization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    gitHubLogin = registerOutput<String>('GitHubLogin');
    messages = registerOutput<List<dynamic>>('Messages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
  }

  /// Creates a typed reference to an existing [DefaultOrganization] resource.
  DefaultOrganization.reference(String urn)
    : super(
        'pulumiservice:api:DefaultOrganization',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    gitHubLogin = registerOutput<String>('GitHubLogin');
    messages = registerOutput<List<dynamic>>('Messages', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
  }
}
