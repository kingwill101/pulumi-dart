import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_args.dart';
import 'system_data_response.dart';

/// The test base credential resource.
///
/// Uses Azure REST API version 2023-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-11-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ImageDefinitionCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var credential = new AzureNative.TestBase.Credential("credential", new()
///     {
///         CredentialName = "contoso-credential",
///         CredentialType = AzureNative.TestBase.CredentialType.IntuneAccount,
///         DisplayName = "contoso-credential",
///         ResourceGroupName = "contoso-rg1",
///         TestBaseAccountName = "contoso-testBaseAccount1",
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
/// 	testbase "github.com/pulumi/pulumi-azure-native-sdk/testbase/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := testbase.NewCredential(ctx, "credential", &testbase.CredentialArgs{
/// 			CredentialName:      pulumi.String("contoso-credential"),
/// 			CredentialType:      pulumi.String(testbase.CredentialTypeIntuneAccount),
/// 			DisplayName:         pulumi.String("contoso-credential"),
/// 			ResourceGroupName:   pulumi.String("contoso-rg1"),
/// 			TestBaseAccountName: pulumi.String("contoso-testBaseAccount1"),
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
/// import com.pulumi.azurenative.testbase.Credential;
/// import com.pulumi.azurenative.testbase.CredentialArgs;
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
///         var credential = new Credential("credential", CredentialArgs.builder()
///             .credentialName("contoso-credential")
///             .credentialType("IntuneAccount")
///             .displayName("contoso-credential")
///             .resourceGroupName("contoso-rg1")
///             .testBaseAccountName("contoso-testBaseAccount1")
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
/// const credential = new azure_native.testbase.Credential("credential", {
///     credentialName: "contoso-credential",
///     credentialType: azure_native.testbase.CredentialType.IntuneAccount,
///     displayName: "contoso-credential",
///     resourceGroupName: "contoso-rg1",
///     testBaseAccountName: "contoso-testBaseAccount1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// credential = azure_native.testbase.Credential("credential",
///     credential_name="contoso-credential",
///     credential_type=azure_native.testbase.CredentialType.INTUNE_ACCOUNT,
///     display_name="contoso-credential",
///     resource_group_name="contoso-rg1",
///     test_base_account_name="contoso-testBaseAccount1")
///
/// ```
///
/// ```yaml
/// resources:
///   credential:
///     type: azure-native:testbase:Credential
///     properties:
///       credentialName: contoso-credential
///       credentialType: IntuneAccount
///       displayName: contoso-credential
///       resourceGroupName: contoso-rg1
///       testBaseAccountName: contoso-testBaseAccount1
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
/// $ pulumi import azure-native:testbase:Credential contoso-credential /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TestBase/testBaseAccounts/{testBaseAccountName}/credentials/{credentialName}
/// ```
class Credential extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Credential type.
  late final pulumi.Output<String> credentialType;
  /// Credential display name.
  late final pulumi.Output<String> displayName;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Credential].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Credential]. {@macro pulumi_testbase_credential_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Credential(
    String name, {
    CredentialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:testbase:Credential',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    credentialType = registerOutput<String>('credentialType');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
