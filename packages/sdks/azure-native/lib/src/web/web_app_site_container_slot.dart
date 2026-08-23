import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'web_app_site_container_slot_args.dart';

/// Container of a site
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2023-12-01.
///
/// Other available API versions: 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppSiteContainerSlot myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/sitecontainers/{containerName}
/// ```
class WebAppSiteContainerSlot extends pulumi.CustomResource {
  /// Auth Type
  late final pulumi.Output<String?> authType;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Created Time
  late final pulumi.Output<String> createdTime;
  /// List of environment variables
  late final pulumi.Output<List<Map<String, dynamic>>?> environmentVariables;
  /// Image Name
  late final pulumi.Output<String> image;
  /// &lt;code&gt;true&lt;/code&gt; if all AppSettings and ConnectionStrings have to be passed to the container as environment variables; &lt;code&gt;false&lt;/code&gt; otherwise.
  late final pulumi.Output<bool?> inheritAppSettingsAndConnectionStrings;
  /// &lt;code&gt;true&lt;/code&gt; if the container is the main site container; &lt;code&gt;false&lt;/code&gt; otherwise.
  late final pulumi.Output<bool> isMain;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// Last Modified Time
  late final pulumi.Output<String> lastModifiedTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Password Secret
  late final pulumi.Output<String?> passwordSecret;
  /// StartUp Command
  late final pulumi.Output<String?> startUpCommand;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Target Port
  late final pulumi.Output<String?> targetPort;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// UserManagedIdentity ClientId
  late final pulumi.Output<String?> userManagedIdentityClientId;
  /// User Name
  late final pulumi.Output<String?> userName;
  /// List of volume mounts
  late final pulumi.Output<List<Map<String, dynamic>>?> volumeMounts;

  /// Creates a new [WebAppSiteContainerSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppSiteContainerSlot]. {@macro pulumi_web_web_app_site_container_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppSiteContainerSlot(
    String name, {
    WebAppSiteContainerSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppSiteContainerSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authType = registerOutput<String?>('authType');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    createdTime = registerOutput<String>('createdTime');
    environmentVariables = registerOutput<List<Map<String, dynamic>>?>('environmentVariables');
    image = registerOutput<String>('image');
    inheritAppSettingsAndConnectionStrings = registerOutput<bool?>('inheritAppSettingsAndConnectionStrings');
    isMain = registerOutput<bool>('isMain');
    kind = registerOutput<String?>('kind');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    passwordSecret = registerOutput<String?>('passwordSecret');
    startUpCommand = registerOutput<String?>('startUpCommand');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetPort = registerOutput<String?>('targetPort');
    type = registerOutput<String>('type');
    userManagedIdentityClientId = registerOutput<String?>('userManagedIdentityClientId');
    userName = registerOutput<String?>('userName');
    volumeMounts = registerOutput<List<Map<String, dynamic>>?>('volumeMounts');
  }
}
