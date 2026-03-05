import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'hosting_environment_profile_response.dart';

/// SSL certificate for an app.
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-03-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-11-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Or Update Certificate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var certificate = new AzureNative.Web.Certificate("certificate", new()
///     {
///         HostNames = new[]
///         {
///             "ServerCert",
///         },
///         Location = "East US",
///         Name = "testc6282",
///         Password = "<password>",
///         ResourceGroupName = "testrg123",
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
/// 		_, err := web.NewCertificate(ctx, "certificate", &web.CertificateArgs{
/// 			HostNames: pulumi.StringArray{
/// 				pulumi.String("ServerCert"),
/// 			},
/// 			Location:          pulumi.String("East US"),
/// 			Name:              pulumi.String("testc6282"),
/// 			Password:          pulumi.String("<password>"),
/// 			ResourceGroupName: pulumi.String("testrg123"),
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
/// import com.pulumi.azurenative.web.Certificate;
/// import com.pulumi.azurenative.web.CertificateArgs;
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
///         var certificate = new Certificate("certificate", CertificateArgs.builder()
///             .hostNames("ServerCert")
///             .location("East US")
///             .name("testc6282")
///             .password("<password>")
///             .resourceGroupName("testrg123")
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
/// const certificate = new azure_native.web.Certificate("certificate", {
///     hostNames: ["ServerCert"],
///     location: "East US",
///     name: "testc6282",
///     password: "<password>",
///     resourceGroupName: "testrg123",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// certificate = azure_native.web.Certificate("certificate",
///     host_names=["ServerCert"],
///     location="East US",
///     name="testc6282",
///     password="<password>",
///     resource_group_name="testrg123")
///
/// ```
///
/// ```yaml
/// resources:
///   certificate:
///     type: azure-native:web:Certificate
///     properties:
///       hostNames:
///         - ServerCert
///       location: East US
///       name: testc6282
///       password: <password>
///       resourceGroupName: testrg123
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
/// $ pulumi import azure-native:web:Certificate testc6282 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/certificates/{name}
/// ```
class Certificate extends pulumi.CustomResource {
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
  late final pulumi.Output<HostingEnvironmentProfileResponse> hostingEnvironmentProfile;
  /// Certificate issue Date.
  late final pulumi.Output<String> issueDate;
  /// Certificate issuer.
  late final pulumi.Output<String> issuer;
  /// Key Vault Csm resource Id.
  late final pulumi.Output<String?> keyVaultId;
  /// Key Vault secret name.
  late final pulumi.Output<String?> keyVaultSecretName;
  /// Status of the Key Vault secret.
  late final pulumi.Output<String> keyVaultSecretStatus;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  late final pulumi.Output<String?> kind;
  /// Resource Location.
  late final pulumi.Output<String> location;
  /// Resource Name.
  late final pulumi.Output<String> name;
  /// Pfx blob.
  late final pulumi.Output<String?> pfxBlob;
  /// Public key hash.
  late final pulumi.Output<String> publicKeyHash;
  /// Self link.
  late final pulumi.Output<String> selfLink;
  /// Resource ID of the associated App Service plan, formatted as: "/subscriptions/{subscriptionID}/resourceGroups/{groupName}/providers/Microsoft.Web/serverfarms/{appServicePlanName}".
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

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_web_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:Certificate',
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
    hostingEnvironmentProfile = registerOutput<HostingEnvironmentProfileResponse>('hostingEnvironmentProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HostingEnvironmentProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    issueDate = registerOutput<String>('issueDate');
    issuer = registerOutput<String>('issuer');
    keyVaultId = registerOutput<String?>('keyVaultId');
    keyVaultSecretName = registerOutput<String?>('keyVaultSecretName');
    keyVaultSecretStatus = registerOutput<String>('keyVaultSecretStatus');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
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
