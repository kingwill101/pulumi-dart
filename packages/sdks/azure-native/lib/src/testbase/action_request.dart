import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_request_args.dart';
import 'pre_release_access_request_spec_response.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2023-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-11-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ActionRequestPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var actionRequest = new AzureNative.TestBase.ActionRequest("actionRequest", new()
///     {
///         ActionRequestName = "167184141414254",
///         ResourceGroupName = "contoso-rg",
///         TestBaseAccountName = "contoso-testBaseAccount",
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
/// 		_, err := testbase.NewActionRequest(ctx, "actionRequest", &testbase.ActionRequestArgs{
/// 			ActionRequestName:   pulumi.String("167184141414254"),
/// 			ResourceGroupName:   pulumi.String("contoso-rg"),
/// 			TestBaseAccountName: pulumi.String("contoso-testBaseAccount"),
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
/// import com.pulumi.azurenative.testbase.ActionRequest;
/// import com.pulumi.azurenative.testbase.ActionRequestArgs;
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
///         var actionRequest = new ActionRequest("actionRequest", ActionRequestArgs.builder()
///             .actionRequestName("167184141414254")
///             .resourceGroupName("contoso-rg")
///             .testBaseAccountName("contoso-testBaseAccount")
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
/// const actionRequest = new azure_native.testbase.ActionRequest("actionRequest", {
///     actionRequestName: "167184141414254",
///     resourceGroupName: "contoso-rg",
///     testBaseAccountName: "contoso-testBaseAccount",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// action_request = azure_native.testbase.ActionRequest("actionRequest",
///     action_request_name="167184141414254",
///     resource_group_name="contoso-rg",
///     test_base_account_name="contoso-testBaseAccount")
///
/// ```
///
/// ```yaml
/// resources:
///   actionRequest:
///     type: azure-native:testbase:ActionRequest
///     properties:
///       actionRequestName: '167184141414254'
///       resourceGroupName: contoso-rg
///       testBaseAccountName: contoso-testBaseAccount
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
/// $ pulumi import azure-native:testbase:ActionRequest 167184141414254 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.TestBase/testBaseAccounts/{testBaseAccountName}/actionRequests/{actionRequestName}
/// ```
class ActionRequest extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<String> creationDate;
  /// The name of the resource
  late final pulumi.Output<String> name;
  late final pulumi.Output<PreReleaseAccessRequestSpecResponse?> preReleaseAccessRequestSpec;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  late final pulumi.Output<String> requestType;
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ActionRequest].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActionRequest]. {@macro pulumi_testbase_action_request_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActionRequest(
    String name, {
    ActionRequestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:testbase:ActionRequest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationDate = registerOutput<String>('creationDate');
    this.name = registerOutput<String>('name');
    preReleaseAccessRequestSpec = registerOutput<PreReleaseAccessRequestSpecResponse?>('preReleaseAccessRequestSpec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PreReleaseAccessRequestSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    requestType = registerOutput<String>('requestType');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
