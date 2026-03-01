import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_policy_args.dart';
import 'get_access_policy_result.dart';
import 'get_certificate_args.dart';
import 'get_certificate_data_args.dart';
import 'get_certificate_data_result.dart';
import 'get_certificate_issuer_args.dart';
import 'get_certificate_issuer_result.dart';
import 'get_certificate_result.dart';
import 'get_certificates_args.dart';
import 'get_certificates_result.dart';
import 'get_encrypted_value_args.dart';
import 'get_encrypted_value_result.dart';
import 'get_key_args.dart';
import 'get_key_result.dart';
import 'get_key_vault_args.dart';
import 'get_key_vault_result.dart';
import 'get_managed_hardware_security_module_args.dart';
import 'get_managed_hardware_security_module_key_args.dart';
import 'get_managed_hardware_security_module_key_result.dart';
import 'get_managed_hardware_security_module_result.dart';
import 'get_managed_hardware_security_module_role_definition_args.dart';
import 'get_managed_hardware_security_module_role_definition_result.dart';
import 'get_secret_args.dart';
import 'get_secret_result.dart';
import 'get_secrets_args.dart';
import 'get_secrets_result.dart';

/// Use this data source to access information about the permissions from the Management Key Vault Templates.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const contributor = azure.keyvault.getAccessPolicy({
///     name: "Key Management",
/// });
/// export const accessPolicyKeyPermissions = contributor.then(contributor => contributor.keyPermissions);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// contributor = azure.keyvault.get_access_policy(name="Key Management")
/// pulumi.export("accessPolicyKeyPermissions", contributor.key_permissions)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var contributor = Azure.KeyVault.GetAccessPolicy.Invoke(new()
///     {
///         Name = "Key Management",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["accessPolicyKeyPermissions"] = contributor.Apply(getAccessPolicyResult => getAccessPolicyResult.KeyPermissions),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		contributor, err := keyvault.LookupAccessPolicy(ctx, &keyvault.LookupAccessPolicyArgs{
/// 			Name: "Key Management",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("accessPolicyKeyPermissions", contributor.KeyPermissions)
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
/// import com.pulumi.azure.keyvault.KeyvaultFunctions;
/// import com.pulumi.azure.keyvault.inputs.GetAccessPolicyArgs;
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
///         final var contributor = KeyvaultFunctions.getAccessPolicy(GetAccessPolicyArgs.builder()
///             .name("Key Management")
///             .build());
///
///         ctx.export("accessPolicyKeyPermissions", contributor.keyPermissions());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   contributor:
///     fn::invoke:
///       function: azure:keyvault:getAccessPolicy
///       arguments:
///         name: Key Management
/// outputs:
///   accessPolicyKeyPermissions: ${contributor.keyPermissions}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_access_policy_get_access_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccessPolicyResult> getAccessPolicy(
  GetAccessPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:keyvault/getAccessPolicy:getAccessPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccessPolicyResult.fromMap(result);
}

/// Use this data source to access information about an existing Key Vault Certificate.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.keyvault.getKeyVault({
///     name: "examplekv",
///     resourceGroupName: "some-resource-group",
/// });
/// const exampleGetCertificate = example.then(example => azure.keyvault.getCertificate({
///     name: "secret-sauce",
///     keyVaultId: example.id,
/// }));
/// export const certificateThumbprint = exampleGetCertificate.then(exampleGetCertificate => exampleGetCertificate.thumbprint);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.keyvault.get_key_vault(name="examplekv",
///     resource_group_name="some-resource-group")
/// example_get_certificate = azure.keyvault.get_certificate(name="secret-sauce",
///     key_vault_id=example.id)
/// pulumi.export("certificateThumbprint", example_get_certificate.thumbprint)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.KeyVault.GetKeyVault.Invoke(new()
///     {
///         Name = "examplekv",
///         ResourceGroupName = "some-resource-group",
///     });
///
///     var exampleGetCertificate = Azure.KeyVault.GetCertificate.Invoke(new()
///     {
///         Name = "secret-sauce",
///         KeyVaultId = example.Apply(getKeyVaultResult => getKeyVaultResult.Id),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["certificateThumbprint"] = exampleGetCertificate.Apply(getCertificateResult => getCertificateResult.Thumbprint),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := keyvault.LookupKeyVault(ctx, &keyvault.LookupKeyVaultArgs{
/// 			Name:              "examplekv",
/// 			ResourceGroupName: "some-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetCertificate, err := keyvault.LookupCertificate(ctx, &keyvault.LookupCertificateArgs{
/// 			Name:       "secret-sauce",
/// 			KeyVaultId: example.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("certificateThumbprint", exampleGetCertificate.Thumbprint)
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
/// import com.pulumi.azure.keyvault.KeyvaultFunctions;
/// import com.pulumi.azure.keyvault.inputs.GetKeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.GetCertificateArgs;
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
///         final var example = KeyvaultFunctions.getKeyVault(GetKeyVaultArgs.builder()
///             .name("examplekv")
///             .resourceGroupName("some-resource-group")
///             .build());
///
///         final var exampleGetCertificate = KeyvaultFunctions.getCertificate(GetCertificateArgs.builder()
///             .name("secret-sauce")
///             .keyVaultId(example.id())
///             .build());
///
///         ctx.export("certificateThumbprint", exampleGetCertificate.thumbprint());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:keyvault:getKeyVault
///       arguments:
///         name: examplekv
///         resourceGroupName: some-resource-group
///   exampleGetCertificate:
///     fn::invoke:
///       function: azure:keyvault:getCertificate
///       arguments:
///         name: secret-sauce
///         keyVaultId: ${example.id}
/// outputs:
///   certificateThumbprint: ${exampleGetCertificate.thumbprint}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_certificate_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:keyvault/getCertificate:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

/// Use this data source to access data stored in an existing Key Vault Certificate.
///
/// > **Note:** This data source uses the `GetSecret` function of the Azure API, to get the key of the certificate. Therefore you need secret/get permission
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.keyvault.getKeyVault({
///     name: "examplekv",
///     resourceGroupName: "some-resource-group",
/// });
/// const exampleGetCertificateData = example.then(example => azure.keyvault.getCertificateData({
///     name: "secret-sauce",
///     keyVaultId: example.id,
/// }));
/// export const examplePem = exampleGetCertificateData.then(exampleGetCertificateData => exampleGetCertificateData.pem);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.keyvault.get_key_vault(name="examplekv",
///     resource_group_name="some-resource-group")
/// example_get_certificate_data = azure.keyvault.get_certificate_data(name="secret-sauce",
///     key_vault_id=example.id)
/// pulumi.export("examplePem", example_get_certificate_data.pem)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.KeyVault.GetKeyVault.Invoke(new()
///     {
///         Name = "examplekv",
///         ResourceGroupName = "some-resource-group",
///     });
///
///     var exampleGetCertificateData = Azure.KeyVault.GetCertificateData.Invoke(new()
///     {
///         Name = "secret-sauce",
///         KeyVaultId = example.Apply(getKeyVaultResult => getKeyVaultResult.Id),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["examplePem"] = exampleGetCertificateData.Apply(getCertificateDataResult => getCertificateDataResult.Pem),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := keyvault.LookupKeyVault(ctx, &keyvault.LookupKeyVaultArgs{
/// 			Name:              "examplekv",
/// 			ResourceGroupName: "some-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetCertificateData, err := keyvault.GetCertificateData(ctx, &keyvault.GetCertificateDataArgs{
/// 			Name:       "secret-sauce",
/// 			KeyVaultId: example.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("examplePem", exampleGetCertificateData.Pem)
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
/// import com.pulumi.azure.keyvault.KeyvaultFunctions;
/// import com.pulumi.azure.keyvault.inputs.GetKeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.GetCertificateDataArgs;
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
///         final var example = KeyvaultFunctions.getKeyVault(GetKeyVaultArgs.builder()
///             .name("examplekv")
///             .resourceGroupName("some-resource-group")
///             .build());
///
///         final var exampleGetCertificateData = KeyvaultFunctions.getCertificateData(GetCertificateDataArgs.builder()
///             .name("secret-sauce")
///             .keyVaultId(example.id())
///             .build());
///
///         ctx.export("examplePem", exampleGetCertificateData.pem());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:keyvault:getKeyVault
///       arguments:
///         name: examplekv
///         resourceGroupName: some-resource-group
///   exampleGetCertificateData:
///     fn::invoke:
///       function: azure:keyvault:getCertificateData
///       arguments:
///         name: secret-sauce
///         keyVaultId: ${example.id}
/// outputs:
///   examplePem: ${exampleGetCertificateData.pem}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_certificate_data_get_certificate_data_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateDataResult> getCertificateData(
  GetCertificateDataArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:keyvault/getCertificateData:getCertificateData',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateDataResult.fromMap(result);
}

/// Use this data source to access information about an existing Key Vault Certificate Issuer.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.keyvault.getKeyVault({
///     name: "mykeyvault",
///     resourceGroupName: "some-resource-group",
/// });
/// const exampleGetCertificateIssuer = example.then(example => azure.keyvault.getCertificateIssuer({
///     name: "existing",
///     keyVaultId: example.id,
/// }));
/// export const id = exampleGetCertificateIssuer.then(exampleGetCertificateIssuer => exampleGetCertificateIssuer.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.keyvault.get_key_vault(name="mykeyvault",
///     resource_group_name="some-resource-group")
/// example_get_certificate_issuer = azure.keyvault.get_certificate_issuer(name="existing",
///     key_vault_id=example.id)
/// pulumi.export("id", example_get_certificate_issuer.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.KeyVault.GetKeyVault.Invoke(new()
///     {
///         Name = "mykeyvault",
///         ResourceGroupName = "some-resource-group",
///     });
///
///     var exampleGetCertificateIssuer = Azure.KeyVault.GetCertificateIssuer.Invoke(new()
///     {
///         Name = "existing",
///         KeyVaultId = example.Apply(getKeyVaultResult => getKeyVaultResult.Id),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = exampleGetCertificateIssuer.Apply(getCertificateIssuerResult => getCertificateIssuerResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := keyvault.LookupKeyVault(ctx, &keyvault.LookupKeyVaultArgs{
/// 			Name:              "mykeyvault",
/// 			ResourceGroupName: "some-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGetCertificateIssuer, err := keyvault.LookupCertificateIssuer(ctx, &keyvault.LookupCertificateIssuerArgs{
/// 			Name:       "existing",
/// 			KeyVaultId: example.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", exampleGetCertificateIssuer.Id)
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
/// import com.pulumi.azure.keyvault.KeyvaultFunctions;
/// import com.pulumi.azure.keyvault.inputs.GetKeyVaultArgs;
/// import com.pulumi.azure.keyvault.inputs.GetCertificateIssuerArgs;
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
///         final var example = KeyvaultFunctions.getKeyVault(GetKeyVaultArgs.builder()
///             .name("mykeyvault")
///             .resourceGroupName("some-resource-group")
///             .build());
///
///         final var exampleGetCertificateIssuer = KeyvaultFunctions.getCertificateIssuer(GetCertificateIssuerArgs.builder()
///             .name("existing")
///             .keyVaultId(example.id())
///             .build());
///
///         ctx.export("id", exampleGetCertificateIssuer.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:keyvault:getKeyVault
///       arguments:
///         name: mykeyvault
///         resourceGroupName: some-resource-group
///   exampleGetCertificateIssuer:
///     fn::invoke:
///       function: azure:keyvault:getCertificateIssuer
///       arguments:
///         name: existing
///         keyVaultId: ${example.id}
/// outputs:
///   id: ${exampleGetCertificateIssuer.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_certificate_issuer_get_certificate_issuer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateIssuerResult> getCertificateIssuer(
  GetCertificateIssuerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:keyvault/getCertificateIssuer:getCertificateIssuer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateIssuerResult.fromMap(result);
}

/// Use this data source to retrieve a list of certificate names from an existing Key Vault.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = azure.keyvault.getCertificates({
///     keyVaultId: existing.id,
/// });
/// const exampleGetCertificate = example.then(example => std.toset({
///     input: example.names,
/// })).then(invoke => .reduce((__obj, [__key, __value]) => ({ ...__obj, [__key]: azure.keyvault.getCertificate({
///     name: __key,
///     keyVaultId: existing.id,
/// }) })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.keyvault.get_certificates(key_vault_id=existing["id"])
/// example_get_certificate = {__key: azure.keyvault.get_certificate(name=__key,
///     key_vault_id=existing["id"]) for __key, __value in std.toset(input=example.names).result}
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
///     var example = Azure.KeyVault.GetCertificates.Invoke(new()
///     {
///         KeyVaultId = existing.Id,
///     });
///
///     var exampleGetCertificate = Std.Toset.Invoke(new()
///     {
///         Input = example.Apply(getCertificatesResult => getCertificatesResult.Names),
///     }).Apply(invoke => );
///
/// });
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_certificates_get_certificates_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificatesResult> getCertificates(
  GetCertificatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:keyvault/getCertificates:getCertificates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificatesResult.fromMap(result);
}

/// Encrypts or Decrypts a value using a Key Vault Key.
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_encrypted_value_get_encrypted_value_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEncryptedValueResult> getEncryptedValue(
  GetEncryptedValueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:keyvault/getEncryptedValue:getEncryptedValue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEncryptedValueResult.fromMap(result);
}

/// Use this data source to access information about an existing Key Vault Key.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.keyvault.getKey({
///     name: "secret-sauce",
///     keyVaultId: existing.id,
/// });
/// export const keyType = example.then(example => example.keyType);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.keyvault.get_key(name="secret-sauce",
///     key_vault_id=existing["id"])
/// pulumi.export("keyType", example.key_type)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.KeyVault.GetKey.Invoke(new()
///     {
///         Name = "secret-sauce",
///         KeyVaultId = existing.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["keyType"] = example.Apply(getKeyResult => getKeyResult.KeyType),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := keyvault.LookupKey(ctx, &keyvault.LookupKeyArgs{
/// 			Name:       "secret-sauce",
/// 			KeyVaultId: existing.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("keyType", example.KeyType)
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
/// import com.pulumi.azure.keyvault.KeyvaultFunctions;
/// import com.pulumi.azure.keyvault.inputs.GetKeyArgs;
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
///         final var example = KeyvaultFunctions.getKey(GetKeyArgs.builder()
///             .name("secret-sauce")
///             .keyVaultId(existing.id())
///             .build());
///
///         ctx.export("keyType", example.keyType());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:keyvault:getKey
///       arguments:
///         name: secret-sauce
///         keyVaultId: ${existing.id}
/// outputs:
///   keyType: ${example.keyType}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_key_get_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyResult> getKey(
  GetKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:keyvault/getKey:getKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyResult.fromMap(result);
}

/// Use this data source to access information about an existing Key Vault.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.keyvault.getKeyVault({
///     name: "mykeyvault",
///     resourceGroupName: "some-resource-group",
/// });
/// export const vaultUri = example.then(example => example.vaultUri);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.keyvault.get_key_vault(name="mykeyvault",
///     resource_group_name="some-resource-group")
/// pulumi.export("vaultUri", example.vault_uri)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.KeyVault.GetKeyVault.Invoke(new()
///     {
///         Name = "mykeyvault",
///         ResourceGroupName = "some-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vaultUri"] = example.Apply(getKeyVaultResult => getKeyVaultResult.VaultUri),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := keyvault.LookupKeyVault(ctx, &keyvault.LookupKeyVaultArgs{
/// 			Name:              "mykeyvault",
/// 			ResourceGroupName: "some-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vaultUri", example.VaultUri)
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
/// import com.pulumi.azure.keyvault.KeyvaultFunctions;
/// import com.pulumi.azure.keyvault.inputs.GetKeyVaultArgs;
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
///         final var example = KeyvaultFunctions.getKeyVault(GetKeyVaultArgs.builder()
///             .name("mykeyvault")
///             .resourceGroupName("some-resource-group")
///             .build());
///
///         ctx.export("vaultUri", example.vaultUri());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:keyvault:getKeyVault
///       arguments:
///         name: mykeyvault
///         resourceGroupName: some-resource-group
/// outputs:
///   vaultUri: ${example.vaultUri}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_key_vault_get_key_vault_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyVaultResult> getKeyVault(
  GetKeyVaultArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:keyvault/getKeyVault:getKeyVault',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyVaultResult.fromMap(result);
}

/// Use this data source to access information about an existing Key Vault Managed Hardware Security Module.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.keyvault.getManagedHardwareSecurityModule({
///     name: "mykeyvaultHsm",
///     resourceGroupName: "some-resource-group",
/// });
/// export const hsmUri = example.then(example => example.hsmUri);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.keyvault.get_managed_hardware_security_module(name="mykeyvaultHsm",
///     resource_group_name="some-resource-group")
/// pulumi.export("hsmUri", example.hsm_uri)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.KeyVault.GetManagedHardwareSecurityModule.Invoke(new()
///     {
///         Name = "mykeyvaultHsm",
///         ResourceGroupName = "some-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["hsmUri"] = example.Apply(getManagedHardwareSecurityModuleResult => getManagedHardwareSecurityModuleResult.HsmUri),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := keyvault.LookupManagedHardwareSecurityModule(ctx, &keyvault.LookupManagedHardwareSecurityModuleArgs{
/// 			Name:              "mykeyvaultHsm",
/// 			ResourceGroupName: "some-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("hsmUri", example.HsmUri)
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
/// import com.pulumi.azure.keyvault.KeyvaultFunctions;
/// import com.pulumi.azure.keyvault.inputs.GetManagedHardwareSecurityModuleArgs;
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
///         final var example = KeyvaultFunctions.getManagedHardwareSecurityModule(GetManagedHardwareSecurityModuleArgs.builder()
///             .name("mykeyvaultHsm")
///             .resourceGroupName("some-resource-group")
///             .build());
///
///         ctx.export("hsmUri", example.hsmUri());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:keyvault:getManagedHardwareSecurityModule
///       arguments:
///         name: mykeyvaultHsm
///         resourceGroupName: some-resource-group
/// outputs:
///   hsmUri: ${example.hsmUri}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.KeyVault` - 2023-07-01
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_managed_hardware_security_module_get_managed_hardware_security_module_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedHardwareSecurityModuleResult> getManagedHardwareSecurityModule(
  GetManagedHardwareSecurityModuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:keyvault/getManagedHardwareSecurityModule:getManagedHardwareSecurityModule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedHardwareSecurityModuleResult.fromMap(result);
}

/// Use this data source to access information about an existing Managed Hardware Security Module Key.
///
/// > **Note:** All arguments including the secret value will be stored in the raw state as plain-text.
/// [Read more about sensitive data in state](https://www.terraform.io/docs/state/sensitive-data.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// export = async () => {
///     const example = await azure.keyvault.getManagedHardwareSecurityModuleKey({
///         managedHsmId: exampleAzurermKeyVaultManagedHardwareSecurityModule.id,
///         name: exampleAzurermKeyVaultManagedHardwareSecurityModuleKey.name,
///     });
///     return {
///         "hsm-key-vesrion": example.version,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.keyvault.get_managed_hardware_security_module_key(managed_hsm_id=example_azurerm_key_vault_managed_hardware_security_module["id"],
///     name=example_azurerm_key_vault_managed_hardware_security_module_key["name"])
/// pulumi.export("hsm-key-vesrion", example.version)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.KeyVault.GetManagedHardwareSecurityModuleKey.Invoke(new()
///     {
///         ManagedHsmId = exampleAzurermKeyVaultManagedHardwareSecurityModule.Id,
///         Name = exampleAzurermKeyVaultManagedHardwareSecurityModuleKey.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["hsm-key-vesrion"] = example.Apply(getManagedHardwareSecurityModuleKeyResult => getManagedHardwareSecurityModuleKeyResult.Version),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := keyvault.LookupManagedHardwareSecurityModuleKey(ctx, &keyvault.LookupManagedHardwareSecurityModuleKeyArgs{
/// 			ManagedHsmId: exampleAzurermKeyVaultManagedHardwareSecurityModule.Id,
/// 			Name:         exampleAzurermKeyVaultManagedHardwareSecurityModuleKey.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("hsm-key-vesrion", example.Version)
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
/// import com.pulumi.azure.keyvault.KeyvaultFunctions;
/// import com.pulumi.azure.keyvault.inputs.GetManagedHardwareSecurityModuleKeyArgs;
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
///         final var example = KeyvaultFunctions.getManagedHardwareSecurityModuleKey(GetManagedHardwareSecurityModuleKeyArgs.builder()
///             .managedHsmId(exampleAzurermKeyVaultManagedHardwareSecurityModule.id())
///             .name(exampleAzurermKeyVaultManagedHardwareSecurityModuleKey.name())
///             .build());
///
///         ctx.export("hsm-key-vesrion", example.version());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:keyvault:getManagedHardwareSecurityModuleKey
///       arguments:
///         managedHsmId: ${exampleAzurermKeyVaultManagedHardwareSecurityModule.id}
///         name: ${exampleAzurermKeyVaultManagedHardwareSecurityModuleKey.name}
/// outputs:
///   hsm-key-vesrion: ${example.version}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_managed_hardware_security_module_key_get_managed_hardware_security_module_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedHardwareSecurityModuleKeyResult> getManagedHardwareSecurityModuleKey(
  GetManagedHardwareSecurityModuleKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:keyvault/getManagedHardwareSecurityModuleKey:getManagedHardwareSecurityModuleKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedHardwareSecurityModuleKeyResult.fromMap(result);
}

/// Use this data source to access information about an existing Key Vault Managed Hardware Security Module Role Definition.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.keyvault.getManagedHardwareSecurityModuleRoleDefinition({
///     managedHsmId: exampleAzurermKeyVaultManagedHardwareSecurityModule.id,
///     name: "21dbd100-6940-42c2-9190-5d6cb909625b",
/// });
/// export const id = example.then(example => example.resourceManagerId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.keyvault.get_managed_hardware_security_module_role_definition(managed_hsm_id=example_azurerm_key_vault_managed_hardware_security_module["id"],
///     name="21dbd100-6940-42c2-9190-5d6cb909625b")
/// pulumi.export("id", example.resource_manager_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.KeyVault.GetManagedHardwareSecurityModuleRoleDefinition.Invoke(new()
///     {
///         ManagedHsmId = exampleAzurermKeyVaultManagedHardwareSecurityModule.Id,
///         Name = "21dbd100-6940-42c2-9190-5d6cb909625b",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getManagedHardwareSecurityModuleRoleDefinitionResult => getManagedHardwareSecurityModuleRoleDefinitionResult.ResourceManagerId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := keyvault.LookupManagedHardwareSecurityModuleRoleDefinition(ctx, &keyvault.LookupManagedHardwareSecurityModuleRoleDefinitionArgs{
/// 			ManagedHsmId: exampleAzurermKeyVaultManagedHardwareSecurityModule.Id,
/// 			Name:         "21dbd100-6940-42c2-9190-5d6cb909625b",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.ResourceManagerId)
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
/// import com.pulumi.azure.keyvault.KeyvaultFunctions;
/// import com.pulumi.azure.keyvault.inputs.GetManagedHardwareSecurityModuleRoleDefinitionArgs;
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
///         final var example = KeyvaultFunctions.getManagedHardwareSecurityModuleRoleDefinition(GetManagedHardwareSecurityModuleRoleDefinitionArgs.builder()
///             .managedHsmId(exampleAzurermKeyVaultManagedHardwareSecurityModule.id())
///             .name("21dbd100-6940-42c2-9190-5d6cb909625b")
///             .build());
///
///         ctx.export("id", example.resourceManagerId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:keyvault:getManagedHardwareSecurityModuleRoleDefinition
///       arguments:
///         managedHsmId: ${exampleAzurermKeyVaultManagedHardwareSecurityModule.id}
///         name: 21dbd100-6940-42c2-9190-5d6cb909625b
/// outputs:
///   id: ${example.resourceManagerId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_managed_hardware_security_module_role_definition_get_managed_hardware_security_module_role_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedHardwareSecurityModuleRoleDefinitionResult> getManagedHardwareSecurityModuleRoleDefinition(
  GetManagedHardwareSecurityModuleRoleDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:keyvault/getManagedHardwareSecurityModuleRoleDefinition:getManagedHardwareSecurityModuleRoleDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedHardwareSecurityModuleRoleDefinitionResult.fromMap(result);
}

/// Use this data source to access information about an existing Key Vault Secret.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.keyvault.getSecret({
///     name: "secret-sauce",
///     keyVaultId: existing.id,
/// });
/// export const secretValue = example.then(example => example.value);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.keyvault.get_secret(name="secret-sauce",
///     key_vault_id=existing["id"])
/// pulumi.export("secretValue", example.value)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.KeyVault.GetSecret.Invoke(new()
///     {
///         Name = "secret-sauce",
///         KeyVaultId = existing.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["secretValue"] = example.Apply(getSecretResult => getSecretResult.Value),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/keyvault"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := keyvault.LookupSecret(ctx, &keyvault.LookupSecretArgs{
/// 			Name:       "secret-sauce",
/// 			KeyVaultId: existing.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("secretValue", example.Value)
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
/// import com.pulumi.azure.keyvault.KeyvaultFunctions;
/// import com.pulumi.azure.keyvault.inputs.GetSecretArgs;
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
///         final var example = KeyvaultFunctions.getSecret(GetSecretArgs.builder()
///             .name("secret-sauce")
///             .keyVaultId(existing.id())
///             .build());
///
///         ctx.export("secretValue", example.value());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:keyvault:getSecret
///       arguments:
///         name: secret-sauce
///         keyVaultId: ${existing.id}
/// outputs:
///   secretValue: ${example.value}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_secret_get_secret_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretResult> getSecret(
  GetSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:keyvault/getSecret:getSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretResult.fromMap(result);
}

/// Use this data source to retrieve a list of secret names from an existing Key Vault Secret.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = azure.keyvault.getSecrets({
///     keyVaultId: existing.id,
/// });
/// const exampleGetSecret = example.then(example => std.toset({
///     input: example.names,
/// })).then(invoke => .reduce((__obj, [__key, __value]) => ({ ...__obj, [__key]: azure.keyvault.getSecret({
///     name: __key,
///     keyVaultId: existing.id,
/// }) })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.keyvault.get_secrets(key_vault_id=existing["id"])
/// example_get_secret = {__key: azure.keyvault.get_secret(name=__key,
///     key_vault_id=existing["id"]) for __key, __value in std.toset(input=example.names).result}
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
///     var example = Azure.KeyVault.GetSecrets.Invoke(new()
///     {
///         KeyVaultId = existing.Id,
///     });
///
///     var exampleGetSecret = Std.Toset.Invoke(new()
///     {
///         Input = example.Apply(getSecretsResult => getSecretsResult.Names),
///     }).Apply(invoke => );
///
/// });
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_keyvault_get_secrets_get_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecretsResult> getSecrets(
  GetSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:keyvault/getSecrets:getSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecretsResult.fromMap(result);
}
