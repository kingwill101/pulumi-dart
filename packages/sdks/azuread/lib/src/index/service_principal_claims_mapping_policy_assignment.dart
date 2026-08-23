import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_principal_claims_mapping_policy_assignment_args.dart';
import 'service_principal_claims_mapping_policy_assignment_state.dart';

/// Manages a Claims Mapping Policy Assignment within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires the following application roles: `Policy.ReadWrite.ApplicationConfiguration` and `Policy.Read.All`
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Application Administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const app = new azuread.ServicePrincipalClaimsMappingPolicyAssignment("app", {
///     claimsMappingPolicyId: myPolicy.id,
///     servicePrincipalId: myPrincipal.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// app = azuread.ServicePrincipalClaimsMappingPolicyAssignment("app",
///     claims_mapping_policy_id=my_policy["id"],
///     service_principal_id=my_principal["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var app = new AzureAD.ServicePrincipalClaimsMappingPolicyAssignment("app", new()
///     {
///         ClaimsMappingPolicyId = myPolicy.Id,
///         ServicePrincipalId = myPrincipal.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azuread.NewServicePrincipalClaimsMappingPolicyAssignment(ctx, "app", &azuread.ServicePrincipalClaimsMappingPolicyAssignmentArgs{
/// 			ClaimsMappingPolicyId: pulumi.Any(myPolicy.Id),
/// 			ServicePrincipalId:    pulumi.Any(myPrincipal.Id),
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
///     azuread = {
///       source = "pulumi/azuread"
///     }
///   }
/// }
///
/// resource "azuread_serviceprincipalclaimsmappingpolicyassignment" "app" {
///   claims_mapping_policy_id = myPolicy.id
///   service_principal_id     = myPrincipal.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azuread.ServicePrincipalClaimsMappingPolicyAssignment;
/// import com.pulumi.azuread.ServicePrincipalClaimsMappingPolicyAssignmentArgs;
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
///         var app = new ServicePrincipalClaimsMappingPolicyAssignment("app", ServicePrincipalClaimsMappingPolicyAssignmentArgs.builder()
///             .claimsMappingPolicyId(myPolicy.id())
///             .servicePrincipalId(myPrincipal.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   app:
///     type: azuread:ServicePrincipalClaimsMappingPolicyAssignment
///     properties:
///       claimsMappingPolicyId: ${myPolicy.id}
///       servicePrincipalId: ${myPrincipal.id}
/// ```
///
///
/// ## Import
///
/// Claims Mapping Policy Assignments can be imported using the `id`, in the form `/servicePrincipals/{servicePrincipalId}/claimsMappingPolicies/{claimsMappingPolicyId}`, e.g:
///
/// ```sh
/// $ pulumi import azuread:index/servicePrincipalClaimsMappingPolicyAssignment:ServicePrincipalClaimsMappingPolicyAssignment app /servicePrincipals/00000000-0000-0000-0000-000000000000/claimsMappingPolicies/11111111-0000-0000-0000-000000000000
/// ```
class ServicePrincipalClaimsMappingPolicyAssignment extends pulumi.CustomResource {
  /// The ID of the claims mapping policy to assign.
  late final pulumi.Output<String> claimsMappingPolicyId;
  /// The ID of the service principal for the policy assignment.
  late final pulumi.Output<String> servicePrincipalId;

  /// Creates a new [ServicePrincipalClaimsMappingPolicyAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServicePrincipalClaimsMappingPolicyAssignment]. {@macro pulumi_index_service_principal_claims_mapping_policy_assignment_service_principal_claims_mapping_policy_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServicePrincipalClaimsMappingPolicyAssignment(
    String name, {
    ServicePrincipalClaimsMappingPolicyAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/servicePrincipalClaimsMappingPolicyAssignment:ServicePrincipalClaimsMappingPolicyAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    claimsMappingPolicyId = registerOutput<String>('claimsMappingPolicyId');
    servicePrincipalId = registerOutput<String>('servicePrincipalId');
  }

  /// Gets an existing [ServicePrincipalClaimsMappingPolicyAssignment] resource's state with the given [name] and [id].
  static ServicePrincipalClaimsMappingPolicyAssignment get(
    String name,
    pulumi.Input<String> id, {
    ServicePrincipalClaimsMappingPolicyAssignmentState? state,
  }) {
    return ServicePrincipalClaimsMappingPolicyAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServicePrincipalClaimsMappingPolicyAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/servicePrincipalClaimsMappingPolicyAssignment:ServicePrincipalClaimsMappingPolicyAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    claimsMappingPolicyId = registerOutput<String>('claimsMappingPolicyId');
    servicePrincipalId = registerOutput<String>('servicePrincipalId');
  }
}
