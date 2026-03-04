import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_account_args.dart';

/// Creates a ServiceAccount.
/// Auto-naming is currently not supported for this resource.
class ServiceAccount extends pulumi.CustomResource {
  /// Optional. A user-specified, human-readable description of the service account. The maximum length is 256 UTF-8 bytes.
  late final pulumi.Output<String> description;

  /// Whether the service account is disabled.
  late final pulumi.Output<bool> disabled;

  /// Optional. A user-specified, human-readable name for the service account. The maximum length is 100 UTF-8 bytes.
  late final pulumi.Output<String> displayName;

  /// The email address of the service account.
  late final pulumi.Output<String> email;

  /// Deprecated. Do not use.
  late final pulumi.Output<String> etag;

  /// The resource name of the service account. Use one of the following formats: * `projects/{PROJECT_ID}/serviceAccounts/{EMAIL_ADDRESS}` * `projects/{PROJECT_ID}/serviceAccounts/{UNIQUE_ID}` As an alternative, you can use the `-` wildcard character instead of the project ID: * `projects/-/serviceAccounts/{EMAIL_ADDRESS}` * `projects/-/serviceAccounts/{UNIQUE_ID}` When possible, avoid using the `-` wildcard character, because it can cause response messages to contain misleading error codes. For example, if you try to access the service account `projects/-/serviceAccounts/fake@example.com`, which does not exist, the response contains an HTTP `403 Forbidden` error instead of a `404 Not Found` error.
  late final pulumi.Output<String> name;

  /// The OAuth 2.0 client ID for the service account.
  late final pulumi.Output<String> oauth2ClientId;
  late final pulumi.Output<String> project;

  /// The unique, stable numeric ID for the service account. Each service account retains its unique ID even if you delete the service account. For example, if you delete a service account, then create a new service account with the same name, the new service account has a different unique ID than the deleted service account.
  late final pulumi.Output<String> uniqueId;

  /// Creates a new [ServiceAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceAccount]. {@macro pulumi_iam_v1_service_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceAccount(
    String name, {
    ServiceAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:iam/v1:ServiceAccount',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    description = registerOutput<String>('description');
    disabled = registerOutput<bool>('disabled');
    displayName = registerOutput<String>('displayName');
    email = registerOutput<String>('email');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    oauth2ClientId = registerOutput<String>('oauth2ClientId');
    project = registerOutput<String>('project');
    uniqueId = registerOutput<String>('uniqueId');
  }
}
