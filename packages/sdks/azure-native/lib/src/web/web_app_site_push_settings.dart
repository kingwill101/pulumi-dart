import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_site_push_settings_args.dart';

/// Push settings for the App.
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppSitePushSettings myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/config/pushsettings
/// ```
class WebAppSitePushSettings extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets a JSON string containing a list of dynamic tags that will be evaluated from user claims in the push registration endpoint.
  late final pulumi.Output<String?> dynamicTagsJson;
  /// Gets or sets a flag indicating whether the Push endpoint is enabled.
  late final pulumi.Output<bool> isPushEnabled;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// Resource Name.
  late final pulumi.Output<String> name;
  /// Gets or sets a JSON string containing a list of tags that are whitelisted for use by the push registration endpoint.
  late final pulumi.Output<String?> tagWhitelistJson;
  /// Gets or sets a JSON string containing a list of tags that require user authentication to be used in the push registration endpoint.
  /// Tags can consist of alphanumeric characters and the following:
  /// '_', '@', '#', '.', ':', '-'.
  /// Validation should be performed at the PushRequestHandler.
  late final pulumi.Output<String?> tagsRequiringAuth;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppSitePushSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppSitePushSettings]. {@macro pulumi_web_web_app_site_push_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppSitePushSettings(
    String name, {
    WebAppSitePushSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppSitePushSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dynamicTagsJson = registerOutput<String?>('dynamicTagsJson');
    isPushEnabled = registerOutput<bool>('isPushEnabled');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    tagWhitelistJson = registerOutput<String?>('tagWhitelistJson');
    tagsRequiringAuth = registerOutput<String?>('tagsRequiringAuth');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [WebAppSitePushSettings] resource.
  WebAppSitePushSettings.reference(String urn)
    : super(
        'azure-native:web:WebAppSitePushSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    dynamicTagsJson = registerOutput<String?>('dynamicTagsJson');
    isPushEnabled = registerOutput<bool>('isPushEnabled');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    tagWhitelistJson = registerOutput<String?>('tagWhitelistJson');
    tagsRequiringAuth = registerOutput<String?>('tagsRequiringAuth');
    type = registerOutput<String>('type');
  }
}
