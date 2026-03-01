import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'application_artifact_response.dart';
import 'application_authorization_response.dart';
import 'application_billing_details_definition_response.dart';
import 'application_client_details_response.dart';
import 'application_jit_access_policy_response.dart';
import 'application_package_contact_response.dart';
import 'application_package_support_urls_response.dart';
import 'identity_response.dart';
import 'plan_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Information about managed application.
///
/// Uses Azure REST API version 2021-07-01. In version 2.x of the Azure Native provider, it used API version 2021-07-01.
///
/// Other available API versions: 2023-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native solutions [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update managed application
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var application = new AzureNative.Solutions.Application("application", new()
///     {
///         ApplicationDefinitionId = "/subscriptions/subid/resourceGroups/rg/providers/Microsoft.Solutions/applicationDefinitions/myAppDef",
///         ApplicationName = "myManagedApplication",
///         Kind = "ServiceCatalog",
///         ManagedResourceGroupId = "/subscriptions/subid/resourceGroups/myManagedRG",
///         ResourceGroupName = "rg",
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
/// 	solutions "github.com/pulumi/pulumi-azure-native-sdk/solutions/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := solutions.NewApplication(ctx, "application", &solutions.ApplicationArgs{
/// 			ApplicationDefinitionId: pulumi.String("/subscriptions/subid/resourceGroups/rg/providers/Microsoft.Solutions/applicationDefinitions/myAppDef"),
/// 			ApplicationName:         pulumi.String("myManagedApplication"),
/// 			Kind:                    pulumi.String("ServiceCatalog"),
/// 			ManagedResourceGroupId:  pulumi.String("/subscriptions/subid/resourceGroups/myManagedRG"),
/// 			ResourceGroupName:       pulumi.String("rg"),
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
/// import com.pulumi.azurenative.solutions.Application;
/// import com.pulumi.azurenative.solutions.ApplicationArgs;
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
///         var application = new Application("application", ApplicationArgs.builder()
///             .applicationDefinitionId("/subscriptions/subid/resourceGroups/rg/providers/Microsoft.Solutions/applicationDefinitions/myAppDef")
///             .applicationName("myManagedApplication")
///             .kind("ServiceCatalog")
///             .managedResourceGroupId("/subscriptions/subid/resourceGroups/myManagedRG")
///             .resourceGroupName("rg")
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
/// const application = new azure_native.solutions.Application("application", {
///     applicationDefinitionId: "/subscriptions/subid/resourceGroups/rg/providers/Microsoft.Solutions/applicationDefinitions/myAppDef",
///     applicationName: "myManagedApplication",
///     kind: "ServiceCatalog",
///     managedResourceGroupId: "/subscriptions/subid/resourceGroups/myManagedRG",
///     resourceGroupName: "rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// application = azure_native.solutions.Application("application",
///     application_definition_id="/subscriptions/subid/resourceGroups/rg/providers/Microsoft.Solutions/applicationDefinitions/myAppDef",
///     application_name="myManagedApplication",
///     kind="ServiceCatalog",
///     managed_resource_group_id="/subscriptions/subid/resourceGroups/myManagedRG",
///     resource_group_name="rg")
///
/// ```
///
/// ```yaml
/// resources:
///   application:
///     type: azure-native:solutions:Application
///     properties:
///       applicationDefinitionId: /subscriptions/subid/resourceGroups/rg/providers/Microsoft.Solutions/applicationDefinitions/myAppDef
///       applicationName: myManagedApplication
///       kind: ServiceCatalog
///       managedResourceGroupId: /subscriptions/subid/resourceGroups/myManagedRG
///       resourceGroupName: rg
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
/// $ pulumi import azure-native:solutions:Application myManagedApplication /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Solutions/applications/{applicationName}
/// ```
class Application extends pulumi.CustomResource {
  /// The fully qualified path of managed application definition Id.
  late final pulumi.Output<String?> applicationDefinitionId;
  /// The collection of managed application artifacts.
  late final pulumi.Output<List<ApplicationArtifactResponse>> artifacts;
  /// The  read-only authorizations property that is retrieved from the application package.
  late final pulumi.Output<List<ApplicationAuthorizationResponse>> authorizations;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The managed application billing details.
  late final pulumi.Output<ApplicationBillingDetailsDefinitionResponse> billingDetails;
  /// The client entity that created the JIT request.
  late final pulumi.Output<ApplicationClientDetailsResponse> createdBy;
  /// The read-only customer support property that is retrieved from the application package.
  late final pulumi.Output<ApplicationPackageContactResponse> customerSupport;
  /// The identity of the resource.
  late final pulumi.Output<IdentityResponse?> identity;
  /// The managed application Jit access policy.
  late final pulumi.Output<ApplicationJitAccessPolicyResponse?> jitAccessPolicy;
  /// The kind of the managed application. Allowed values are MarketPlace and ServiceCatalog.
  late final pulumi.Output<String> kind;
  /// Resource location
  late final pulumi.Output<String?> location;
  /// ID of the resource that manages this resource.
  late final pulumi.Output<String?> managedBy;
  /// The managed resource group Id.
  late final pulumi.Output<String?> managedResourceGroupId;
  /// The managed application management mode.
  late final pulumi.Output<String> managementMode;
  /// Resource name
  late final pulumi.Output<String> name;
  /// Name and value pairs that define the managed application outputs.
  late final pulumi.Output<dynamic> outputs;
  /// Name and value pairs that define the managed application parameters. It can be a JObject or a well formed JSON string.
  late final pulumi.Output<dynamic> parameters;
  /// The plan information.
  late final pulumi.Output<PlanResponse?> plan;
  /// The managed application provisioning state.
  late final pulumi.Output<String> provisioningState;
  /// The publisher tenant Id.
  late final pulumi.Output<String> publisherTenantId;
  /// The SKU of the resource.
  late final pulumi.Output<SkuResponse?> sku;
  /// The read-only support URLs property that is retrieved from the application package.
  late final pulumi.Output<ApplicationPackageSupportUrlsResponse> supportUrls;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type
  late final pulumi.Output<String> type;
  /// The client entity that last updated the JIT request.
  late final pulumi.Output<ApplicationClientDetailsResponse> updatedBy;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_solutions_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:solutions:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationDefinitionId = registerOutput<String?>('applicationDefinitionId');
    this.artifacts = registerOutput<List<ApplicationArtifactResponse>>('artifacts');
    this.authorizations = registerOutput<List<ApplicationAuthorizationResponse>>('authorizations');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.billingDetails = registerOutput<ApplicationBillingDetailsDefinitionResponse>('billingDetails');
    this.createdBy = registerOutput<ApplicationClientDetailsResponse>('createdBy');
    this.customerSupport = registerOutput<ApplicationPackageContactResponse>('customerSupport');
    this.identity = registerOutput<IdentityResponse?>('identity');
    this.jitAccessPolicy = registerOutput<ApplicationJitAccessPolicyResponse?>('jitAccessPolicy');
    this.kind = registerOutput<String>('kind');
    this.location = registerOutput<String?>('location');
    this.managedBy = registerOutput<String?>('managedBy');
    this.managedResourceGroupId = registerOutput<String?>('managedResourceGroupId');
    this.managementMode = registerOutput<String>('managementMode');
    this.name = registerOutput<String>('name');
    this.outputs = registerOutput<dynamic>('outputs');
    this.parameters = registerOutput<dynamic>('parameters');
    this.plan = registerOutput<PlanResponse?>('plan');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.publisherTenantId = registerOutput<String>('publisherTenantId');
    this.sku = registerOutput<SkuResponse?>('sku');
    this.supportUrls = registerOutput<ApplicationPackageSupportUrlsResponse>('supportUrls');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.updatedBy = registerOutput<ApplicationClientDetailsResponse>('updatedBy');
  }
}
