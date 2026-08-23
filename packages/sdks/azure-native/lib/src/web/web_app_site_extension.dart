import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'web_app_site_extension_args.dart';

/// Site Extension Information.
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppSiteExtension myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/siteextensions/{siteExtensionId}
/// ```
class WebAppSiteExtension extends pulumi.CustomResource {
  /// List of authors.
  late final pulumi.Output<List<String>?> authors;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Site Extension comment.
  late final pulumi.Output<String?> comment;
  /// Detailed description.
  late final pulumi.Output<String?> description;
  /// Count of downloads.
  late final pulumi.Output<int?> downloadCount;
  /// Site extension ID.
  late final pulumi.Output<String?> extensionId;
  /// Site extension type.
  late final pulumi.Output<String?> extensionType;
  /// Extension URL.
  late final pulumi.Output<String?> extensionUrl;
  /// Feed URL.
  late final pulumi.Output<String?> feedUrl;
  /// Icon URL.
  late final pulumi.Output<String?> iconUrl;
  /// Installed timestamp.
  late final pulumi.Output<String?> installedDateTime;
  /// Installer command line parameters.
  late final pulumi.Output<String?> installerCommandLineParams;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// License URL.
  late final pulumi.Output<String?> licenseUrl;
  /// &lt;code&gt;true&lt;/code&gt; if the local version is the latest version; &lt;code&gt;false&lt;/code&gt; otherwise.
  late final pulumi.Output<bool?> localIsLatestVersion;
  /// Local path.
  late final pulumi.Output<String?> localPath;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Project URL.
  late final pulumi.Output<String?> projectUrl;
  /// Provisioning state.
  late final pulumi.Output<String?> provisioningState;
  /// Published timestamp.
  late final pulumi.Output<String?> publishedDateTime;
  /// Summary description.
  late final pulumi.Output<String?> summary;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  late final pulumi.Output<String?> title;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Version information.
  late final pulumi.Output<String?> version;

  /// Creates a new [WebAppSiteExtension].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppSiteExtension]. {@macro pulumi_web_web_app_site_extension_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppSiteExtension(
    String name, {
    WebAppSiteExtensionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppSiteExtension',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authors = registerOutput<List<String>?>('authors');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    comment = registerOutput<String?>('comment');
    description = registerOutput<String?>('description');
    downloadCount = registerOutput<int?>('downloadCount');
    extensionId = registerOutput<String?>('extensionId');
    extensionType = registerOutput<String?>('extensionType');
    extensionUrl = registerOutput<String?>('extensionUrl');
    feedUrl = registerOutput<String?>('feedUrl');
    iconUrl = registerOutput<String?>('iconUrl');
    installedDateTime = registerOutput<String?>('installedDateTime');
    installerCommandLineParams = registerOutput<String?>('installerCommandLineParams');
    kind = registerOutput<String?>('kind');
    licenseUrl = registerOutput<String?>('licenseUrl');
    localIsLatestVersion = registerOutput<bool?>('localIsLatestVersion');
    localPath = registerOutput<String?>('localPath');
    this.name = registerOutput<String>('name');
    projectUrl = registerOutput<String?>('projectUrl');
    provisioningState = registerOutput<String?>('provisioningState');
    publishedDateTime = registerOutput<String?>('publishedDateTime');
    summary = registerOutput<String?>('summary');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    title = registerOutput<String?>('title');
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }
}
