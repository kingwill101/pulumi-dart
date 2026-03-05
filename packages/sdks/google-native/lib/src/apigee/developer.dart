import 'package:pulumi/pulumi.dart' as pulumi;
import 'developer_args.dart';

/// Creates a developer. Once created, the developer can register an app and obtain an API key. At creation time, a developer is set as `active`. To change the developer status, use the SetDeveloperStatus API.
/// Auto-naming is currently not supported for this resource.
class Developer extends pulumi.CustomResource {
  /// Access type.
  late final pulumi.Output<String> accessType;
  /// Developer app family.
  late final pulumi.Output<String> appFamily;
  /// List of apps associated with the developer.
  late final pulumi.Output<List<String>> apps;
  /// Optional. Developer attributes (name/value pairs). The custom attribute limit is 18.
  late final pulumi.Output<List<Map<String, dynamic>>> attributes;
  /// List of companies associated with the developer.
  late final pulumi.Output<List<String>> companies;
  /// Time at which the developer was created in milliseconds since epoch.
  late final pulumi.Output<String> createdAt;
  /// ID of the developer. **Note**: IDs are generated internally by Apigee and are not guaranteed to stay the same over time.
  late final pulumi.Output<String> developerId;
  /// Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only.
  late final pulumi.Output<String> email;
  /// First name of the developer.
  late final pulumi.Output<String> firstName;
  /// Time at which the developer was last modified in milliseconds since epoch.
  late final pulumi.Output<String> lastModifiedAt;
  /// Last name of the developer.
  late final pulumi.Output<String> lastName;
  late final pulumi.Output<String> organizationId;
  /// Name of the Apigee organization in which the developer resides.
  late final pulumi.Output<String> organizationName;
  /// Status of the developer. Valid values are `active` and `inactive`.
  late final pulumi.Output<String> status;
  /// User name of the developer. Not used by Apigee hybrid.
  late final pulumi.Output<String> userName;

  /// Creates a new [Developer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Developer]. {@macro pulumi_apigee_v1_developer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Developer(
    String name, {
    DeveloperArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Developer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessType = registerOutput<String>('accessType');
    appFamily = registerOutput<String>('appFamily');
    apps = registerOutput<List<String>>('apps');
    attributes = registerOutput<List<Map<String, dynamic>>>('attributes');
    companies = registerOutput<List<String>>('companies');
    createdAt = registerOutput<String>('createdAt');
    developerId = registerOutput<String>('developerId');
    email = registerOutput<String>('email');
    firstName = registerOutput<String>('firstName');
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    lastName = registerOutput<String>('lastName');
    organizationId = registerOutput<String>('organizationId');
    organizationName = registerOutput<String>('organizationName');
    status = registerOutput<String>('status');
    userName = registerOutput<String>('userName');
  }
}
