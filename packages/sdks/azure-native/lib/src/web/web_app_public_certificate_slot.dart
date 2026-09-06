import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'web_app_public_certificate_slot_args.dart';

/// Public certificate object
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:WebAppPublicCertificateSlot myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/publicCertificates/{publicCertificateName}
/// ```
class WebAppPublicCertificateSlot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Public Certificate byte array
  late final pulumi.Output<String?> blob;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Public Certificate Location
  late final pulumi.Output<String?> publicCertificateLocation;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Certificate Thumbprint
  late final pulumi.Output<String> thumbprint;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppPublicCertificateSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppPublicCertificateSlot]. {@macro pulumi_web_web_app_public_certificate_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppPublicCertificateSlot(
    String name, {
    WebAppPublicCertificateSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppPublicCertificateSlot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    blob = registerOutput<String?>('blob');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    publicCertificateLocation = registerOutput<String?>('publicCertificateLocation');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    thumbprint = registerOutput<String>('thumbprint');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [WebAppPublicCertificateSlot] resource.
  WebAppPublicCertificateSlot.reference(String urn)
    : super(
        'azure-native:web:WebAppPublicCertificateSlot',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    blob = registerOutput<String?>('blob');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    publicCertificateLocation = registerOutput<String?>('publicCertificateLocation');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    thumbprint = registerOutput<String>('thumbprint');
    type = registerOutput<String>('type');
  }
}
