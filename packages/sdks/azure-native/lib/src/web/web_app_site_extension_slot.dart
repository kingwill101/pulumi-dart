import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_site_extension_slot_args.dart';

/// Site Extension Information.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppSiteExtensionSlot myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/siteextensions/{siteExtensionId}
/// ```
class WebAppSiteExtensionSlot extends pulumi.CustomResource {
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
  /// <code>true</code> if the local version is the latest version; <code>false</code> otherwise.
  late final pulumi.Output<bool?> localIsLatestVersion;
  /// Local path.
  late final pulumi.Output<String?> localPath;
  /// Resource Name.
  late final pulumi.Output<String> name;
  /// Project URL.
  late final pulumi.Output<String?> projectUrl;
  /// Provisioning state.
  late final pulumi.Output<String?> provisioningState;
  /// Published timestamp.
  late final pulumi.Output<String?> publishedDateTime;
  /// Summary description.
  late final pulumi.Output<String?> summary;
  late final pulumi.Output<String?> title;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// Version information.
  late final pulumi.Output<String?> version;

  /// Creates a new [WebAppSiteExtensionSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppSiteExtensionSlot]. {@macro pulumi_web_web_app_site_extension_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppSiteExtensionSlot(
    String name, {
    WebAppSiteExtensionSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppSiteExtensionSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authors = registerOutput<List<String>?>('authors');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.comment = registerOutput<String?>('comment');
    this.description = registerOutput<String?>('description');
    this.downloadCount = registerOutput<int?>('downloadCount');
    this.extensionId = registerOutput<String?>('extensionId');
    this.extensionType = registerOutput<String?>('extensionType');
    this.extensionUrl = registerOutput<String?>('extensionUrl');
    this.feedUrl = registerOutput<String?>('feedUrl');
    this.iconUrl = registerOutput<String?>('iconUrl');
    this.installedDateTime = registerOutput<String?>('installedDateTime');
    this.installerCommandLineParams = registerOutput<String?>('installerCommandLineParams');
    this.kind = registerOutput<String?>('kind');
    this.licenseUrl = registerOutput<String?>('licenseUrl');
    this.localIsLatestVersion = registerOutput<bool?>('localIsLatestVersion');
    this.localPath = registerOutput<String?>('localPath');
    this.name = registerOutput<String>('name');
    this.projectUrl = registerOutput<String?>('projectUrl');
    this.provisioningState = registerOutput<String?>('provisioningState');
    this.publishedDateTime = registerOutput<String?>('publishedDateTime');
    this.summary = registerOutput<String?>('summary');
    this.title = registerOutput<String?>('title');
    this.type = registerOutput<String>('type');
    this.version = registerOutput<String?>('version');
  }
}
