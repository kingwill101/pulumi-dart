import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';
import 'provider_state.dart';

/// Manages an Attestation Provider.
///
/// ## Example Usage
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
/// const exampleProvider = new azure.attestation.Provider("example", {
///     name: "exampleprovider",
///     resourceGroupName: example.name,
///     location: example.location,
///     policySigningCertificateData: std.file({
///         input: "./example/cert.pem",
///     }).then(invoke => invoke.result),
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
/// example_provider = azure.attestation.Provider("example",
///     name="exampleprovider",
///     resource_group_name=example.name,
///     location=example.location,
///     policy_signing_certificate_data=std.file(input="./example/cert.pem").result)
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
///     var exampleProvider = new Azure.Attestation.Provider("example", new()
///     {
///         Name = "exampleprovider",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         PolicySigningCertificateData = Std.File.Invoke(new()
///         {
///             Input = "./example/cert.pem",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/attestation"
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
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "./example/cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = attestation.NewProvider(ctx, "example", &attestation.ProviderArgs{
/// 			Name:                         pulumi.String("exampleprovider"),
/// 			ResourceGroupName:            example.Name,
/// 			Location:                     example.Location,
/// 			PolicySigningCertificateData: pulumi.String(invokeFile.Result),
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
/// resource "azure_attestation_provider" "example" {
///   name                            = "exampleprovider"
///   resource_group_name             = azure_core_resourcegroup.example.name
///   location                        = azure_core_resourcegroup.example.location
///   policy_signing_certificate_data = file("./example/cert.pem")
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
/// import com.pulumi.azure.attestation.Provider;
/// import com.pulumi.azure.attestation.ProviderArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var exampleProvider = new Provider("exampleProvider", ProviderArgs.builder()
///             .name("exampleprovider")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .policySigningCertificateData(StdFunctions.file(FileArgs.builder()
///                 .input("./example/cert.pem")
///                 .build()).result())
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
///   exampleProvider:
///     type: azure:attestation:Provider
///     name: example
///     properties:
///       name: exampleprovider
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       policySigningCertificateData:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: ./example/cert.pem
///           return: result
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Attestation` - 2020-10-01
///
/// ## Import
///
/// Attestation Providers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:attestation/provider:Provider example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Attestation/attestationProviders/provider1
/// ```
class Provider extends pulumi.CustomResource {
  /// The URI of the Attestation Service.
  late final pulumi.Output<String> attestationUri;
  /// The Azure Region where the Attestation Provider should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Attestation Provider. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  late final pulumi.Output<String?> openEnclavePolicyBase64;
  /// A valid X.509 certificate (Section 4 of [RFC4648](https://tools.ietf.org/html/rfc4648)). Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If the `policySigningCertificateData` argument contains more than one valid X.509 certificate only the first certificate will be used.
  late final pulumi.Output<String?> policySigningCertificateData;
  /// The name of the Resource Group where the attestation provider should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  ///
  /// &gt; **Note:** [More information on the JWT Policies can be found in this article on `learn.microsoft.com`](https://learn.microsoft.com/azure/attestation/author-sign-policy).
  late final pulumi.Output<String?> sevSnpPolicyBase64;
  /// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  late final pulumi.Output<String?> sgxEnclavePolicyBase64;
  /// A mapping of tags which should be assigned to the Attestation Provider.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the base64 URI Encoded RFC 7519 JWT that should be used for the Attestation Policy.
  late final pulumi.Output<String?> tpmPolicyBase64;
  /// Trust model used for the Attestation Service.
  late final pulumi.Output<String> trustModel;

  /// Creates a new [Provider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Provider]. {@macro pulumi_attestation_provider_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Provider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:attestation/provider:Provider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attestationUri = registerOutput<String>('attestationUri');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    openEnclavePolicyBase64 = registerOutput<String?>('openEnclavePolicyBase64');
    policySigningCertificateData = registerOutput<String?>('policySigningCertificateData');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sevSnpPolicyBase64 = registerOutput<String?>('sevSnpPolicyBase64');
    sgxEnclavePolicyBase64 = registerOutput<String?>('sgxEnclavePolicyBase64');
    tags = registerOutput<Map<String, String>?>('tags');
    tpmPolicyBase64 = registerOutput<String?>('tpmPolicyBase64');
    trustModel = registerOutput<String>('trustModel');
  }

  /// Gets an existing [Provider] resource's state with the given [name] and [id].
  static Provider get(
    String name,
    pulumi.Input<String> id, {
    ProviderState? state,
  }) {
    return Provider._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Provider._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:attestation/provider:Provider',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attestationUri = registerOutput<String>('attestationUri');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    openEnclavePolicyBase64 = registerOutput<String?>('openEnclavePolicyBase64');
    policySigningCertificateData = registerOutput<String?>('policySigningCertificateData');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sevSnpPolicyBase64 = registerOutput<String?>('sevSnpPolicyBase64');
    sgxEnclavePolicyBase64 = registerOutput<String?>('sgxEnclavePolicyBase64');
    tags = registerOutput<Map<String, String>?>('tags');
    tpmPolicyBase64 = registerOutput<String?>('tpmPolicyBase64');
    trustModel = registerOutput<String>('trustModel');
  }
}
