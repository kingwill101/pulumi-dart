import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_certificate_args.dart';
import 'spring_cloud_certificate_state.dart';

/// Manages an Azure Spring Cloud Certificate.
///
/// &gt; **Note:** Azure Spring Apps is now deprecated and will be retired on 2028-05-31 - as such the `azure.appplatform.SpringCloudCertificate` resource is deprecated and will be removed in a future major version of the AzureRM Provider. See https://aka.ms/asaretirement for more information.
///
/// ## Import
///
/// Spring Cloud Certificate can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appplatform/springCloudCertificate:SpringCloudCertificate example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourcegroup1/providers/Microsoft.AppPlatform/spring/spring1/certificates/cert1
/// ```
class SpringCloudCertificate extends pulumi.CustomResource {
  /// The content of uploaded certificate. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> certificateContent;
  /// Specifies whether the private key should be excluded from the Key Vault Certificate. Changing this forces a new resource to be created. Defaults to `false`.
  late final pulumi.Output<bool?> excludePrivateKey;
  /// Specifies the ID of the Key Vault Certificate resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> keyVaultCertificateId;
  /// Specifies the name of the Spring Cloud Certificate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the resource group in which to create the Spring Cloud Certificate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the name of the Spring Cloud Service resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> serviceName;
  /// The thumbprint of the Spring Cloud certificate.
  late final pulumi.Output<String> thumbprint;

  /// Creates a new [SpringCloudCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SpringCloudCertificate]. {@macro pulumi_appplatform_spring_cloud_certificate_spring_cloud_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SpringCloudCertificate(
    String name, {
    SpringCloudCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudCertificate:SpringCloudCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    certificateContent = registerOutput<String?>('certificateContent');
    excludePrivateKey = registerOutput<bool?>('excludePrivateKey');
    keyVaultCertificateId = registerOutput<String?>('keyVaultCertificateId');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serviceName = registerOutput<String>('serviceName');
    thumbprint = registerOutput<String>('thumbprint');
  }

  /// Gets an existing [SpringCloudCertificate] resource's state with the given [name] and [id].
  static SpringCloudCertificate get(
    String name,
    pulumi.Input<String> id, {
    SpringCloudCertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SpringCloudCertificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SpringCloudCertificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appplatform/springCloudCertificate:SpringCloudCertificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificateContent = registerOutput<String?>('certificateContent');
    excludePrivateKey = registerOutput<bool?>('excludePrivateKey');
    keyVaultCertificateId = registerOutput<String?>('keyVaultCertificateId');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serviceName = registerOutput<String>('serviceName');
    thumbprint = registerOutput<String>('thumbprint');
  }

  /// Creates a typed reference to an existing [SpringCloudCertificate] resource.
  SpringCloudCertificate.reference(String urn)
    : super(
        'azure:appplatform/springCloudCertificate:SpringCloudCertificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    certificateContent = registerOutput<String?>('certificateContent');
    excludePrivateKey = registerOutput<bool?>('excludePrivateKey');
    keyVaultCertificateId = registerOutput<String?>('keyVaultCertificateId');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serviceName = registerOutput<String>('serviceName');
    thumbprint = registerOutput<String>('thumbprint');
  }
}
