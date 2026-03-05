import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_platform_response.dart';
import 'global_validation_response.dart';
import 'http_settings_response.dart';
import 'identity_providers_response.dart';
import 'login_response.dart';
import 'web_app_auth_settings_v2_without_secrets_slot_args.dart';

/// Configuration settings for the Azure App Service Authentication / Authorization V2 feature.
///
/// Uses Azure REST API version 2024-04-01.
///
/// Other available API versions: 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppAuthSettingsV2WithoutSecretsSlot myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/config/authsettingsV2
/// ```
class WebAppAuthSettingsV2WithoutSecretsSlot extends pulumi.CustomResource {
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

  /// Creates a new [WebAppAuthSettingsV2WithoutSecretsSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppAuthSettingsV2WithoutSecretsSlot]. {@macro pulumi_web_web_app_auth_settings_v2_without_secrets_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppAuthSettingsV2WithoutSecretsSlot(
    String name, {
    WebAppAuthSettingsV2WithoutSecretsSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppAuthSettingsV2WithoutSecretsSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    globalValidation = registerOutput<GlobalValidationResponse?>('globalValidation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GlobalValidationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    httpSettings = registerOutput<HttpSettingsResponse?>('httpSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HttpSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identityProviders = registerOutput<IdentityProvidersResponse?>('identityProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityProvidersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kind = registerOutput<String?>('kind');
    login = registerOutput<LoginResponse?>('login', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoginResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    platform = registerOutput<AuthPlatformResponse?>('platform', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthPlatformResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
