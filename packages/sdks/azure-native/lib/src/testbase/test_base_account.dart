import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_assigned_service_identity_response.dart';
import 'system_data_response.dart';
import 'test_base_account_args.dart';
import 'test_base_account_skuresponse.dart';

/// The Test Base Account resource.
///
/// Uses Azure REST API version 2023-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-04-01-preview.
///
/// Other available API versions: 2022-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native testbase [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### TestBaseAccountCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testBaseAccount = new AzureNative.TestBase.TestBaseAccount("testBaseAccount", new()
///     {
///         Location = "westus",
///         ResourceGroupName = "contoso-rg1",
///         Sku = new AzureNative.TestBase.Inputs.TestBaseAccountSKUArgs
///         {
///             Name = "S0",
///             Tier = AzureNative.TestBase.Tier.Standard,
///         },
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
/// 		_, err := testbase.NewTestBaseAccount(ctx, "testBaseAccount", &testbase.TestBaseAccountArgs{
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("contoso-rg1"),
/// 			Sku: &testbase.TestBaseAccountSKUArgs{
/// 				Name: pulumi.String("S0"),
/// 				Tier: pulumi.String(testbase.TierStandard),
/// 			},
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
/// import com.pulumi.azurenative.testbase.TestBaseAccount;
/// import com.pulumi.azurenative.testbase.TestBaseAccountArgs;
/// import com.pulumi.azurenative.testbase.inputs.TestBaseAccountSKUArgs;
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
///         var testBaseAccount = new TestBaseAccount("testBaseAccount", TestBaseAccountArgs.builder()
///             .location("westus")
///             .resourceGroupName("contoso-rg1")
///             .sku(TestBaseAccountSKUArgs.builder()
///                 .name("S0")
///                 .tier("Standard")
///                 .build())
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
/// const testBaseAccount = new azure_native.testbase.TestBaseAccount("testBaseAccount", {
///     location: "westus",
///     resourceGroupName: "contoso-rg1",
///     sku: {
///         name: "S0",
///         tier: azure_native.testbase.Tier.Standard,
///     },
///     testBaseAccountName: "contoso-testBaseAccount1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// test_base_account = azure_native.testbase.TestBaseAccount("testBaseAccount",
///     location="westus",
///     resource_group_name="contoso-rg1",
///     sku={
///         "name": "S0",
///         "tier": azure_native.testbase.Tier.STANDARD,
///     },
///     test_base_account_name="contoso-testBaseAccount1")
///
/// ```
///
/// ```yaml
/// resources:
///   testBaseAccount:
///     type: azure-native:testbase:TestBaseAccount
///     properties:
///       location: westus
///       resourceGroupName: contoso-rg1
///       sku:
///         name: S0
///         tier: Standard
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
/// $ pulumi import azure-native:testbase:TestBaseAccount contoso-testBaseAccount1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TestBase/testBaseAccounts/{testBaseAccountName}
/// ```
class TestBaseAccount extends pulumi.CustomResource {
  /// The access level of the Test Base Account.
  late final pulumi.Output<String> accessLevel;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The identity of the testBaseAccount.
  late final pulumi.Output<SystemAssignedServiceIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// The SKU of the Test Base Account.
  late final pulumi.Output<TestBaseAccountSKUResponse> sku;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [TestBaseAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TestBaseAccount]. {@macro pulumi_testbase_test_base_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TestBaseAccount(
    String name, {
    TestBaseAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:testbase:TestBaseAccount',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessLevel = registerOutput<String>('accessLevel');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<SystemAssignedServiceIdentityResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemAssignedServiceIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<TestBaseAccountSKUResponse>(
      'sku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return TestBaseAccountSKUResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
