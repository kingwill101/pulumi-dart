import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_function_args.dart';

/// Function information.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppFunction myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/functions/{functionName}
/// ```
class WebAppFunction extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Config information.
  late final pulumi.Output<dynamic> config;
  /// Config URI.
  late final pulumi.Output<String?> configHref;
  /// File list.
  late final pulumi.Output<Map<String, String>?> files;
  /// Function App ID.
  late final pulumi.Output<String?> functionAppId;
  /// Function URI.
  late final pulumi.Output<String?> href;
  /// The invocation URL
  late final pulumi.Output<String?> invokeUrlTemplate;
  /// Gets or sets a value indicating whether the function is disabled
  late final pulumi.Output<bool?> isDisabled;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// The function language
  late final pulumi.Output<String?> language;
  /// Resource Name.
  late final pulumi.Output<String> name;
  /// Script URI.
  late final pulumi.Output<String?> scriptHref;
  /// Script root path URI.
  late final pulumi.Output<String?> scriptRootPathHref;
  /// Secrets file URI.
  late final pulumi.Output<String?> secretsFileHref;
  /// Test data used when testing via the Azure Portal.
  late final pulumi.Output<String?> testData;
  /// Test data URI.
  late final pulumi.Output<String?> testDataHref;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppFunction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppFunction]. {@macro pulumi_web_web_app_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppFunction(
    String name, {
    WebAppFunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppFunction',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    config = registerOutput<dynamic>('config');
    configHref = registerOutput<String?>('configHref');
    files = registerOutput<Map<String, String>?>('files');
    functionAppId = registerOutput<String?>('functionAppId');
    href = registerOutput<String?>('href');
    invokeUrlTemplate = registerOutput<String?>('invokeUrlTemplate');
    isDisabled = registerOutput<bool?>('isDisabled');
    kind = registerOutput<String?>('kind');
    language = registerOutput<String?>('language');
    this.name = registerOutput<String>('name');
    scriptHref = registerOutput<String?>('scriptHref');
    scriptRootPathHref = registerOutput<String?>('scriptRootPathHref');
    secretsFileHref = registerOutput<String?>('secretsFileHref');
    testData = registerOutput<String?>('testData');
    testDataHref = registerOutput<String?>('testDataHref');
    type = registerOutput<String>('type');
  }
}
