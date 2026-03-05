import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_environment_profile_response.dart';
import 'site_certificate_slot_args.dart';

/// SSL certificate for an app.
///
/// Uses Azure REST API version 2024-11-01.
///
/// Other available API versions: 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Or Update Certificate for slot
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var siteCertificateSlot = new AzureNative.Web.SiteCertificateSlot("siteCertificateSlot", new()
///     {
///         CertificateName = "testc6282",
///         HostNames = new[]
///         {
///             "ServerCert",
///         },
///         Location = "East US",
///         Name = "testSiteName",
///         Password = "<password>",
///         ResourceGroupName = "testrg123",
///         Slot = "staging",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	web "github.com/pulumi/pulumi-azure-native-sdk/web/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := web.NewSiteCertificateSlot(ctx, "siteCertificateSlot", &web.SiteCertificateSlotArgs{
/// 			CertificateName: pulumi.String("testc6282"),
/// 			HostNames: pulumi.StringArray{
/// 				pulumi.String("ServerCert"),
/// 			},
/// 			Location:          pulumi.String("East US"),
/// 			Name:              pulumi.String("testSiteName"),
/// 			Password:          pulumi.String("<password>"),
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			Slot:              pulumi.String("staging"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.web.SiteCertificateSlot;
/// import com.pulumi.azurenative.web.SiteCertificateSlotArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var siteCertificateSlot = new SiteCertificateSlot("siteCertificateSlot", SiteCertificateSlotArgs.builder()
///             .certificateName("testc6282")
///             .hostNames("ServerCert")
///             .location("East US")
///             .name("testSiteName")
///             .password("<password>")
///             .resourceGroupName("testrg123")
///             .slot("staging")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const siteCertificateSlot = new azure_native.web.SiteCertificateSlot("siteCertificateSlot", {
///     certificateName: "testc6282",
///     hostNames: ["ServerCert"],
///     location: "East US",
///     name: "testSiteName",
///     password: "<password>",
///     resourceGroupName: "testrg123",
///     slot: "staging",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// site_certificate_slot = azure_native.web.SiteCertificateSlot("siteCertificateSlot",
///     certificate_name="testc6282",
///     host_names=["ServerCert"],
///     location="East US",
///     name="testSiteName",
///     password="<password>",
///     resource_group_name="testrg123",
///     slot="staging")
///
/// ```
///
/// ```yaml
/// resources:
///   siteCertificateSlot:
///     type: azure-native:web:SiteCertificateSlot
///     properties:
///       certificateName: testc6282
///       hostNames:
///         - ServerCert
///       location: East US
///       name: testSiteName
///       password: <password>
///       resourceGroupName: testrg123
///       slot: staging
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:web:SiteCertificateSlot testc6282 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/slots/{slot}/certificates/{certificateName}
/// ```
class SiteCertificateSlot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// CNAME of the certificate to be issued via free certificate
  late final pulumi.Output<String?> canonicalName;

  /// Raw bytes of .cer file
  late final pulumi.Output<String> cerBlob;

  /// Method of domain validation for free cert
  late final pulumi.Output<String?> domainValidationMethod;

  /// Certificate expiration date.
  late final pulumi.Output<String> expirationDate;

  /// Friendly name of the certificate.
  late final pulumi.Output<String> friendlyName;

  /// Host names the certificate applies to.
  late final pulumi.Output<List<String>?> hostNames;

  /// Specification for the App Service Environment to use for the certificate.
  late final pulumi.Output<HostingEnvironmentProfileResponse>
  hostingEnvironmentProfile;

  /// Certificate issue Date.
  late final pulumi.Output<String> issueDate;

  /// Certificate issuer.
  late final pulumi.Output<String> issuer;

  /// Azure Key Vault Csm resource Id.
  late final pulumi.Output<String?> keyVaultId;

  /// Azure Key Vault secret name.
  late final pulumi.Output<String?> keyVaultSecretName;

  /// Status of the Key Vault secret.
  late final pulumi.Output<String> keyVaultSecretStatus;

  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  late final pulumi.Output<String?> kind;

  /// Resource Location.
  late final pulumi.Output<String> location;

  /// Resource Name.
  late final pulumi.Output<String> name;

  /// Certificate password.
  late final pulumi.Output<String?> password;

  /// Pfx blob.
  late final pulumi.Output<String?> pfxBlob;

  /// Public key hash.
  late final pulumi.Output<String> publicKeyHash;

  /// Self link.
  late final pulumi.Output<String> selfLink;

  /// Resource ID of the associated App Service plan.
  late final pulumi.Output<String?> serverFarmId;

  /// App name.
  late final pulumi.Output<String> siteName;

  /// Subject name of the certificate.
  late final pulumi.Output<String> subjectName;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Certificate thumbprint.
  late final pulumi.Output<String> thumbprint;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Is the certificate valid?.
  late final pulumi.Output<bool> valid;

  /// Creates a new [SiteCertificateSlot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SiteCertificateSlot]. {@macro pulumi_web_site_certificate_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SiteCertificateSlot(
    String name, {
    SiteCertificateSlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:web:SiteCertificateSlot',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    canonicalName = registerOutput<String?>('canonicalName');
    cerBlob = registerOutput<String>('cerBlob');
    domainValidationMethod = registerOutput<String?>('domainValidationMethod');
    expirationDate = registerOutput<String>('expirationDate');
    friendlyName = registerOutput<String>('friendlyName');
    hostNames = registerOutput<List<String>?>('hostNames');
    hostingEnvironmentProfile =
        registerOutput<HostingEnvironmentProfileResponse>(
          'hostingEnvironmentProfile',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return HostingEnvironmentProfileResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    issueDate = registerOutput<String>('issueDate');
    issuer = registerOutput<String>('issuer');
    keyVaultId = registerOutput<String?>('keyVaultId');
    keyVaultSecretName = registerOutput<String?>('keyVaultSecretName');
    keyVaultSecretStatus = registerOutput<String>('keyVaultSecretStatus');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password');
    pfxBlob = registerOutput<String?>('pfxBlob');
    publicKeyHash = registerOutput<String>('publicKeyHash');
    selfLink = registerOutput<String>('selfLink');
    serverFarmId = registerOutput<String?>('serverFarmId');
    siteName = registerOutput<String>('siteName');
    subjectName = registerOutput<String>('subjectName');
    tags = registerOutput<Map<String, String>?>('tags');
    thumbprint = registerOutput<String>('thumbprint');
    type = registerOutput<String>('type');
    valid = registerOutput<bool>('valid');
  }
}
