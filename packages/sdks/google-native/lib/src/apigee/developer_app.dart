import 'package:pulumi/pulumi.dart' as pulumi;
import 'developer_app_args.dart';

/// Creates an app associated with a developer. This API associates the developer app with the specified API product and auto-generates an API key for the app to use in calls to API proxies inside that API product. The `name` is the unique ID of the app that you can use in API calls. The `DisplayName` (set as an attribute) appears in the UI. If you don't set the `DisplayName` attribute, the `name` appears in the UI.
class DeveloperApp extends pulumi.CustomResource {
  /// List of API products associated with the developer app.
  late final pulumi.Output<List<String>> apiProducts;

  /// Developer app family.
  late final pulumi.Output<String> appFamily;

  /// ID of the developer app.
  late final pulumi.Output<String> appId;

  /// List of attributes for the developer app.
  late final pulumi.Output<List<Map<String, dynamic>>> attributes;

  /// Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to developer apps.
  late final pulumi.Output<String> callbackUrl;

  /// Time the developer app was created in milliseconds since epoch.
  late final pulumi.Output<String> createdAt;

  /// Set of credentials for the developer app consisting of the consumer key/secret pairs associated with the API products.
  late final pulumi.Output<List<Map<String, dynamic>>> credentials;
  late final pulumi.Output<String> developerId;

  /// Expiration time, in milliseconds, for the consumer key that is generated for the developer app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  late final pulumi.Output<String> keyExpiresIn;

  /// Time the developer app was modified in milliseconds since epoch.
  late final pulumi.Output<String> lastModifiedAt;

  /// Name of the developer app.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Scopes to apply to the developer app. The specified scopes must already exist for the API product that you associate with the developer app.
  late final pulumi.Output<List<String>> scopes;

  /// Status of the credential. Valid values include `approved` or `revoked`.
  late final pulumi.Output<String> status;

  /// Creates a new [DeveloperApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeveloperApp]. {@macro pulumi_apigee_v1_developer_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeveloperApp(
    String name, {
    DeveloperAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:apigee/v1:DeveloperApp',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiProducts = registerOutput<List<String>>('apiProducts');
    appFamily = registerOutput<String>('appFamily');
    appId = registerOutput<String>('appId');
    attributes = registerOutput<List<Map<String, dynamic>>>('attributes');
    callbackUrl = registerOutput<String>('callbackUrl');
    createdAt = registerOutput<String>('createdAt');
    credentials = registerOutput<List<Map<String, dynamic>>>('credentials');
    developerId = registerOutput<String>('developerId');
    keyExpiresIn = registerOutput<String>('keyExpiresIn');
    lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    scopes = registerOutput<List<String>>('scopes');
    status = registerOutput<String>('status');
  }
}
