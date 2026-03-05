import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'certificate_state.dart';

/// Manages a certificate in an Azure Batch account.
///
/// &gt; **Note:** The `azure.batch.Certificate` resource has been deprecated due to Azure retiring the Azure Batch Account Certificates Feature, and will be removed in v5.0 of the AzureRM provider.
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
///     name: "testbatch",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "teststorage",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleAccount2 = new azure.batch.Account("example", {
///     name: "testbatchaccount",
///     resourceGroupName: example.name,
///     location: example.location,
///     poolAllocationMode: "BatchService",
///     storageAccountId: exampleAccount.id,
///     storageAccountAuthenticationMode: "StorageKeys",
///     tags: {
///         env: "test",
///     },
/// });
/// const exampleCertificate = new azure.batch.Certificate("example", {
///     resourceGroupName: example.name,
///     accountName: exampleAccount2.name,
///     certificate: std.filebase64({
///         input: "certificate.pfx",
///     }).then(invoke => invoke.result),
///     format: "Pfx",
///     password: "password",
///     thumbprint: "42C107874FD0E4A9583292A2F1098E8FE4B2EDDA",
///     thumbprintAlgorithm: "SHA1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="testbatch",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="teststorage",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_account2 = azure.batch.Account("example",
///     name="testbatchaccount",
///     resource_group_name=example.name,
///     location=example.location,
///     pool_allocation_mode="BatchService",
///     storage_account_id=example_account.id,
///     storage_account_authentication_mode="StorageKeys",
///     tags={
///         "env": "test",
///     })
/// example_certificate = azure.batch.Certificate("example",
///     resource_group_name=example.name,
///     account_name=example_account2.name,
///     certificate=std.filebase64(input="certificate.pfx").result,
///     format="Pfx",
///     password="password",
///     thumbprint="42C107874FD0E4A9583292A2F1098E8FE4B2EDDA",
///     thumbprint_algorithm="SHA1")
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
///         Name = "testbatch",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "teststorage",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleAccount2 = new Azure.Batch.Account("example", new()
///     {
///         Name = "testbatchaccount",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         PoolAllocationMode = "BatchService",
///         StorageAccountId = exampleAccount.Id,
///         StorageAccountAuthenticationMode = "StorageKeys",
///         Tags =
///         {
///             { "env", "test" },
///         },
///     });
///
///     var exampleCertificate = new Azure.Batch.Certificate("example", new()
///     {
///         ResourceGroupName = example.Name,
///         AccountName = exampleAccount2.Name,
///         BatchCertificate = Std.Filebase64.Invoke(new()
///         {
///             Input = "certificate.pfx",
///         }).Apply(invoke => invoke.Result),
///         Format = "Pfx",
///         Password = "password",
///         Thumbprint = "42C107874FD0E4A9583292A2F1098E8FE4B2EDDA",
///         ThumbprintAlgorithm = "SHA1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/batch"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("testbatch"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("teststorage"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount2, err := batch.NewAccount(ctx, "example", &batch.AccountArgs{
/// 			Name:                             pulumi.String("testbatchaccount"),
/// 			ResourceGroupName:                example.Name,
/// 			Location:                         example.Location,
/// 			PoolAllocationMode:               pulumi.String("BatchService"),
/// 			StorageAccountId:                 exampleAccount.ID(),
/// 			StorageAccountAuthenticationMode: pulumi.String("StorageKeys"),
/// 			Tags: pulumi.StringMap{
/// 				"env": pulumi.String("test"),
/// 			},
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
/// 		_, err = batch.NewCertificate(ctx, "example", &batch.CertificateArgs{
/// 			ResourceGroupName:   example.Name,
/// 			AccountName:         exampleAccount2.Name,
/// 			Certificate:         pulumi.String(invokeFilebase64.Result),
/// 			Format:              pulumi.String("Pfx"),
/// 			Password:            pulumi.String("password"),
/// 			Thumbprint:          pulumi.String("42C107874FD0E4A9583292A2F1098E8FE4B2EDDA"),
/// 			ThumbprintAlgorithm: pulumi.String("SHA1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// import com.pulumi.azure.batch.Certificate;
/// import com.pulumi.azure.batch.CertificateArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("testbatch")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new com.pulumi.azure.storage.Account("exampleAccount", com.pulumi.azure.storage.AccountArgs.builder()
///             .name("teststorage")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleAccount2 = new com.pulumi.azure.batch.Account("exampleAccount2", com.pulumi.azure.batch.AccountArgs.builder()
///             .name("testbatchaccount")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .poolAllocationMode("BatchService")
///             .storageAccountId(exampleAccount.id())
///             .storageAccountAuthenticationMode("StorageKeys")
///             .tags(Map.of("env", "test"))
///             .build());
///
///         var exampleCertificate = new Certificate("exampleCertificate", CertificateArgs.builder()
///             .resourceGroupName(example.name())
///             .accountName(exampleAccount2.name())
///             .certificate(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("certificate.pfx")
///                 .build()).result())
///             .format("Pfx")
///             .password("password")
///             .thumbprint("42C107874FD0E4A9583292A2F1098E8FE4B2EDDA")
///             .thumbprintAlgorithm("SHA1")
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
///       name: testbatch
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: teststorage
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleAccount2:
///     type: azure:batch:Account
///     name: example
///     properties:
///       name: testbatchaccount
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       poolAllocationMode: BatchService
///       storageAccountId: ${exampleAccount.id}
///       storageAccountAuthenticationMode: StorageKeys
///       tags:
///         env: test
///   exampleCertificate:
///     type: azure:batch:Certificate
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       accountName: ${exampleAccount2.name}
///       certificate:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: certificate.pfx
///           return: result
///       format: Pfx
///       password: password
///       thumbprint: 42C107874FD0E4A9583292A2F1098E8FE4B2EDDA
///       thumbprintAlgorithm: SHA1
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Batch` - 2024-07-01
///
/// ## Import
///
/// Batch Certificates can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:batch/certificate:Certificate example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.Batch/batchAccounts/batch1/certificates/certificate1
/// ```
class Certificate extends pulumi.CustomResource {
  /// Specifies the name of the Batch account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accountName;
  /// The base64-encoded contents of the certificate.
  late final pulumi.Output<String> certificate;
  /// The format of the certificate. Possible values are `Cer` or `Pfx`.
  late final pulumi.Output<String> format;
  /// The generated name of the certificate.
  late final pulumi.Output<String> name;
  /// The password to access the certificate's private key. This can only be specified when `format` is `Pfx`.
  late final pulumi.Output<String?> password;
  /// The public key of the certificate.
  late final pulumi.Output<String> publicData;
  /// The name of the resource group in which to create the Batch account. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The thumbprint of the certificate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> thumbprint;
  /// The algorithm of the certificate thumbprint. At this time the only supported value is `SHA1`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> thumbprintAlgorithm;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_batch_certificate_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:batch/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    certificate = registerOutput<String>('certificate');
    format = registerOutput<String>('format');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password');
    publicData = registerOutput<String>('publicData');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    thumbprint = registerOutput<String>('thumbprint');
    thumbprintAlgorithm = registerOutput<String>('thumbprintAlgorithm');
  }

  /// Gets an existing [Certificate] resource's state with the given [name] and [id].
  static Certificate get(
    String name,
    pulumi.Input<String> id, {
    CertificateState? state,
  }) {
    return Certificate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Certificate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:batch/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountName = registerOutput<String>('accountName');
    certificate = registerOutput<String>('certificate');
    format = registerOutput<String>('format');
    this.name = registerOutput<String>('name');
    password = registerOutput<String?>('password');
    publicData = registerOutput<String>('publicData');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    thumbprint = registerOutput<String>('thumbprint');
    thumbprintAlgorithm = registerOutput<String>('thumbprintAlgorithm');
  }
}
