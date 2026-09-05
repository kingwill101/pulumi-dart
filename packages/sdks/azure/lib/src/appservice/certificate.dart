import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'certificate_state.dart';

/// Manages an App Service certificate.
///
/// ## Example Usage
///
/// This example provisions an App Service Certificate from a Local File.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleCertificate = new azure.appservice.Certificate("example", {
///     name: "example-cert",
///     resourceGroupName: example.name,
///     location: example.location,
///     pfxBlob: std.filebase64({
///         input: "certificate.pfx",
///     }).then(invoke => invoke.result),
///     password: "password123!",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_certificate = azure.appservice.Certificate("example",
///     name="example-cert",
///     resource_group_name=example.name,
///     location=example.location,
///     pfx_blob=std.filebase64(input="certificate.pfx").result,
///     password="password123!")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleCertificate = new Azure.AppService.Certificate("example", new()
///     {
///         Name = "example-cert",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         PfxBlob = Std.Filebase64.Invoke(new()
///         {
///             Input = "certificate.pfx",
///         }).Apply(invoke => invoke.Result),
///         Password = "password123!",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "certificate.pfx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewCertificate(ctx, "example", &appservice.CertificateArgs{
/// 			Name:              pulumi.String("example-cert"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			PfxBlob:           pulumi.String(invokeFilebase64.Result),
/// 			Password:          pulumi.String("password123!"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_appservice_certificate" "example" {
///   name                = "example-cert"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   pfx_blob            = filebase64("certificate.pfx")
///   password            = "password123!"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appservice.Certificate;
/// import com.pulumi.azure.appservice.CertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleCertificate = new Certificate("exampleCertificate", CertificateArgs.builder()
///             .name("example-cert")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .pfxBlob(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("certificate.pfx")
///                 .build()).result())
///             .password("password123!")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleCertificate:
///     type: azure:appservice:Certificate
///     name: example
///     properties:
///       name: example-cert
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       pfxBlob:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: certificate.pfx
///           return: result
///       password: password123!
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-12-01
///
/// ## Import
///
/// App Service Certificates can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/certificate:Certificate example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Web/certificates/certificate1
/// ```
class Certificate extends pulumi.CustomResource {
  /// The ID of the associated App Service plan. Must be specified when the certificate is used inside an App Service Environment hosted App Service or with Basic and Premium App Service plans. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> appServicePlanId;
  /// The expiration date for the certificate.
  late final pulumi.Output<String> expirationDate;
  /// The friendly name of the certificate.
  late final pulumi.Output<String> friendlyName;
  /// List of host names the certificate applies to.
  late final pulumi.Output<List<String>> hostNames;
  /// The ID of the App Service Environment where the certificate is in use.
  late final pulumi.Output<String> hostingEnvironmentProfileId;
  /// The issue date for the certificate.
  late final pulumi.Output<String> issueDate;
  /// The name of the certificate issuer.
  late final pulumi.Output<String> issuer;
  late final pulumi.Output<String?> keyVaultId;
  /// The ID of the Key Vault secret. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** Exactly one of `keyVaultSecretId` or `pfxBlob` must be specified.
  late final pulumi.Output<String?> keyVaultSecretId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the certificate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The password to access the certificate's private key. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> password;
  /// The base64-encoded contents of the certificate. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** Exactly one of `keyVaultSecretId` or `pfxBlob` must be specified.
  late final pulumi.Output<String?> pfxBlob;
  /// The name of the resource group in which to create the certificate. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** The resource group must be the same as that which the app service plan is defined in - otherwise the certificate will not show as available for the app services.
  late final pulumi.Output<String> resourceGroupName;
  /// The subject name of the certificate.
  late final pulumi.Output<String> subjectName;
  late final pulumi.Output<Map<String, String>?> tags;
  /// The thumbprint for the certificate.
  late final pulumi.Output<String> thumbprint;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_appservice_certificate_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['password', 'pfxBlob'],
        ) {
    appServicePlanId = registerOutput<String?>('appServicePlanId');
    expirationDate = registerOutput<String>('expirationDate');
    friendlyName = registerOutput<String>('friendlyName');
    hostNames = registerOutput<List<String>>('hostNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    hostingEnvironmentProfileId = registerOutput<String>('hostingEnvironmentProfileId');
    issueDate = registerOutput<String>('issueDate');
    issuer = registerOutput<String>('issuer');
    keyVaultId = registerOutput<String?>('keyVaultId');
    keyVaultSecretId = registerOutput<String?>('keyVaultSecretId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password', isSecret: true);
    pfxBlob = registerOutput<String?>('pfxBlob', isSecret: true);
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subjectName = registerOutput<String>('subjectName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    thumbprint = registerOutput<String>('thumbprint');
  }

  /// Gets an existing [Certificate] resource's state with the given [name] and [id].
  static Certificate get(
    String name,
    pulumi.Input<String> id, {
    CertificateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Certificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Certificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appServicePlanId = registerOutput<String?>('appServicePlanId');
    expirationDate = registerOutput<String>('expirationDate');
    friendlyName = registerOutput<String>('friendlyName');
    hostNames = registerOutput<List<String>>('hostNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    hostingEnvironmentProfileId = registerOutput<String>('hostingEnvironmentProfileId');
    issueDate = registerOutput<String>('issueDate');
    issuer = registerOutput<String>('issuer');
    keyVaultId = registerOutput<String?>('keyVaultId');
    keyVaultSecretId = registerOutput<String?>('keyVaultSecretId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password', isSecret: true);
    pfxBlob = registerOutput<String?>('pfxBlob', isSecret: true);
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subjectName = registerOutput<String>('subjectName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    thumbprint = registerOutput<String>('thumbprint');
  }

  /// Creates a typed reference to an existing [Certificate] resource.
  Certificate.reference(String urn)
    : super(
        'azure:appservice/certificate:Certificate',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['password', 'pfxBlob'],
        isResourceReference: true,
      ) {
    appServicePlanId = registerOutput<String?>('appServicePlanId');
    expirationDate = registerOutput<String>('expirationDate');
    friendlyName = registerOutput<String>('friendlyName');
    hostNames = registerOutput<List<String>>('hostNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    hostingEnvironmentProfileId = registerOutput<String>('hostingEnvironmentProfileId');
    issueDate = registerOutput<String>('issueDate');
    issuer = registerOutput<String>('issuer');
    keyVaultId = registerOutput<String?>('keyVaultId');
    keyVaultSecretId = registerOutput<String?>('keyVaultSecretId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password', isSecret: true);
    pfxBlob = registerOutput<String?>('pfxBlob', isSecret: true);
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subjectName = registerOutput<String>('subjectName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    thumbprint = registerOutput<String>('thumbprint');
  }
}
