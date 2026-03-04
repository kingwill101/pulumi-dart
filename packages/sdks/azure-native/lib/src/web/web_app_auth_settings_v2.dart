import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_platform_response.dart';
import 'global_validation_response.dart';
import 'http_settings_response.dart';
import 'identity_providers_response.dart';
import 'login_response.dart';
import 'web_app_auth_settings_v2_args.dart';

/// Configuration settings for the Azure App Service Authentication / Authorization V2 feature.
///
/// Uses Azure REST API version 2021-02-01. In version 2.x of the Azure Native provider, it used API version 2021-02-01.
///
/// Other available API versions: 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppAuthSettingsV2 myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/config/authsettingsV2
/// ```
class WebAppAuthSettingsV2 extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The configuration settings that determines the validation flow of users using App Service Authentication/Authorization.
  late final pulumi.Output<GlobalValidationResponse?> globalValidation;

  /// The configuration settings of the HTTP requests for authentication and authorization requests made against App Service Authentication/Authorization.
  late final pulumi.Output<HttpSettingsResponse?> httpSettings;

  /// The configuration settings of each of the identity providers used to configure App Service Authentication/Authorization.
  late final pulumi.Output<IdentityProvidersResponse?> identityProviders;

  /// Kind of resource.
  late final pulumi.Output<String?> kind;

  /// The configuration settings of the login flow of users using App Service Authentication/Authorization.
  late final pulumi.Output<LoginResponse?> login;

  /// Resource Name.
  late final pulumi.Output<String> name;

  /// The configuration settings of the platform of App Service Authentication/Authorization.
  late final pulumi.Output<AuthPlatformResponse?> platform;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppAuthSettingsV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppAuthSettingsV2]. {@macro pulumi_web_web_app_auth_settings_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppAuthSettingsV2(
    String name, {
    WebAppAuthSettingsV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:web:WebAppAuthSettingsV2',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    globalValidation = registerOutput<GlobalValidationResponse?>(
      'globalValidation',
    );
    httpSettings = registerOutput<HttpSettingsResponse?>('httpSettings');
    identityProviders = registerOutput<IdentityProvidersResponse?>(
      'identityProviders',
    );
    kind = registerOutput<String?>('kind');
    login = registerOutput<LoginResponse?>('login');
    this.name = registerOutput<String>('name');
    platform = registerOutput<AuthPlatformResponse?>('platform');
    type = registerOutput<String>('type');
  }
}
