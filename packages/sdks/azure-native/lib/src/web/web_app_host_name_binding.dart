import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_host_name_binding_args.dart';

/// A hostname binding object.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppHostNameBinding myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/hostNameBindings/{hostName}
/// ```
class WebAppHostNameBinding extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Azure resource name.
  late final pulumi.Output<String?> azureResourceName;
  /// Azure resource type.
  late final pulumi.Output<String?> azureResourceType;
  /// Custom DNS record type.
  late final pulumi.Output<String?> customHostNameDnsRecordType;
  /// Fully qualified ARM domain resource URI.
  late final pulumi.Output<String?> domainId;
  /// Hostname type.
  late final pulumi.Output<String?> hostNameType;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// Resource Name.
  late final pulumi.Output<String> name;
  /// App Service app name.
  late final pulumi.Output<String?> siteName;
  /// SSL type
  late final pulumi.Output<String?> sslState;
  /// SSL certificate thumbprint
  late final pulumi.Output<String?> thumbprint;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// Virtual IP address assigned to the hostname if IP based SSL is enabled.
  late final pulumi.Output<String> virtualIP;

  /// Creates a new [WebAppHostNameBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppHostNameBinding]. {@macro pulumi_web_web_app_host_name_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppHostNameBinding(
    String name, {
    WebAppHostNameBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppHostNameBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    azureResourceName = registerOutput<String?>('azureResourceName');
    azureResourceType = registerOutput<String?>('azureResourceType');
    customHostNameDnsRecordType = registerOutput<String?>('customHostNameDnsRecordType');
    domainId = registerOutput<String?>('domainId');
    hostNameType = registerOutput<String?>('hostNameType');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    siteName = registerOutput<String?>('siteName');
    sslState = registerOutput<String?>('sslState');
    thumbprint = registerOutput<String?>('thumbprint');
    type = registerOutput<String>('type');
    virtualIP = registerOutput<String>('virtualIP');
  }
}
