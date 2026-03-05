import 'package:pulumi/pulumi.dart' as pulumi;
import 'claims_mapping_policy_args.dart';
import 'claims_mapping_policy_state.dart';

/// Manages a Claims Mapping Policy within Azure Active Directory.
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
/// const myPolicy = new azuread.ClaimsMappingPolicy("my_policy", {
///     definitions: [JSON.stringify({
///         ClaimsMappingPolicy: {
///             ClaimsSchema: [
///                 {
///                     ID: "employeeid",
///                     JwtClaimType: "name",
///                     SamlClaimType: "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name",
///                     Source: "user",
///                 },
///                 {
///                     ID: "tenantcountry",
///                     JwtClaimType: "country",
///                     SamlClaimType: "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/country",
///                     Source: "company",
///                 },
///             ],
///             IncludeBasicClaimSet: "true",
///             Version: 1,
///         },
///     })],
///     displayName: "My Policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_azuread as azuread
///
/// my_policy = azuread.ClaimsMappingPolicy("my_policy",
///     definitions=[json.dumps({
///         "ClaimsMappingPolicy": {
///             "ClaimsSchema": [
///                 {
///                     "ID": "employeeid",
///                     "JwtClaimType": "name",
///                     "SamlClaimType": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name",
///                     "Source": "user",
///                 },
///                 {
///                     "ID": "tenantcountry",
///                     "JwtClaimType": "country",
///                     "SamlClaimType": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/country",
///                     "Source": "company",
///                 },
///             ],
///             "IncludeBasicClaimSet": "true",
///             "Version": 1,
///         },
///     })],
///     display_name="My Policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myPolicy = new AzureAD.ClaimsMappingPolicy("my_policy", new()
///     {
///         Definitions = new[]
///         {
///             JsonSerializer.Serialize(new Dictionary<string, object?>
///             {
///                 ["ClaimsMappingPolicy"] = new Dictionary<string, object?>
///                 {
///                     ["ClaimsSchema"] = new[]
///                     {
///                         new Dictionary<string, object?>
///                         {
///                             ["ID"] = "employeeid",
///                             ["JwtClaimType"] = "name",
///                             ["SamlClaimType"] = "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name",
///                             ["Source"] = "user",
///                         },
///                         new Dictionary<string, object?>
///                         {
///                             ["ID"] = "tenantcountry",
///                             ["JwtClaimType"] = "country",
///                             ["SamlClaimType"] = "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/country",
///                             ["Source"] = "company",
///                         },
///                     },
///                     ["IncludeBasicClaimSet"] = "true",
///                     ["Version"] = 1,
///                 },
///             }),
///         },
///         DisplayName = "My Policy",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"ClaimsMappingPolicy": map[string]interface{}{
/// 				"ClaimsSchema": []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"ID":            "employeeid",
/// 						"JwtClaimType":  "name",
/// 						"SamlClaimType": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name",
/// 						"Source":        "user",
/// 					},
/// 					map[string]interface{}{
/// 						"ID":            "tenantcountry",
/// 						"JwtClaimType":  "country",
/// 						"SamlClaimType": "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/country",
/// 						"Source":        "company",
/// 					},
/// 				},
/// 				"IncludeBasicClaimSet": "true",
/// 				"Version":              1,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = azuread.NewClaimsMappingPolicy(ctx, "my_policy", &azuread.ClaimsMappingPolicyArgs{
/// 			Definitions: pulumi.StringArray{
/// 				pulumi.String(json0),
/// 			},
/// 			DisplayName: pulumi.String("My Policy"),
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
/// import com.pulumi.azuread.ClaimsMappingPolicy;
/// import com.pulumi.azuread.ClaimsMappingPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var myPolicy = new ClaimsMappingPolicy("myPolicy", ClaimsMappingPolicyArgs.builder()
///             .definitions(serializeJson(
///                 jsonObject(
///                     jsonProperty("ClaimsMappingPolicy", jsonObject(
///                         jsonProperty("ClaimsSchema", jsonArray(
///                             jsonObject(
///                                 jsonProperty("ID", "employeeid"),
///                                 jsonProperty("JwtClaimType", "name"),
///                                 jsonProperty("SamlClaimType", "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name"),
///                                 jsonProperty("Source", "user")
///                             ),
///                             jsonObject(
///                                 jsonProperty("ID", "tenantcountry"),
///                                 jsonProperty("JwtClaimType", "country"),
///                                 jsonProperty("SamlClaimType", "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/country"),
///                                 jsonProperty("Source", "company")
///                             )
///                         )),
///                         jsonProperty("IncludeBasicClaimSet", "true"),
///                         jsonProperty("Version", 1)
///                     ))
///                 )))
///             .displayName("My Policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myPolicy:
///     type: azuread:ClaimsMappingPolicy
///     name: my_policy
///     properties:
///       definitions:
///         - fn::toJSON:
///             ClaimsMappingPolicy:
///               ClaimsSchema:
///                 - ID: employeeid
///                   JwtClaimType: name
///                   SamlClaimType: http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name
///                   Source: user
///                 - ID: tenantcountry
///                   JwtClaimType: country
///                   SamlClaimType: http://schemas.xmlsoap.org/ws/2005/05/identity/claims/country
///                   Source: company
///               IncludeBasicClaimSet: 'true'
///               Version: 1
///       displayName: My Policy
/// ```
///
///
/// ## Import
///
/// Claims Mapping Policies can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/claimsMappingPolicy:ClaimsMappingPolicy my_policy /policies/claimsMappingPolicies/00000000-0000-0000-0000-000000000000
/// ```
class ClaimsMappingPolicy extends pulumi.CustomResource {
  /// The claims mapping policy. This is a JSON formatted string, for which the `jsonencode()` function can be used.
  late final pulumi.Output<List<String>> definitions;
  /// The display name for this Claims Mapping Policy.
  late final pulumi.Output<String> displayName;

  /// Creates a new [ClaimsMappingPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClaimsMappingPolicy]. {@macro pulumi_index_claims_mapping_policy_claims_mapping_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClaimsMappingPolicy(
    String name, {
    ClaimsMappingPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/claimsMappingPolicy:ClaimsMappingPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    definitions = registerOutput<List<String>>('definitions');
    displayName = registerOutput<String>('displayName');
  }

  /// Gets an existing [ClaimsMappingPolicy] resource's state with the given [name] and [id].
  static ClaimsMappingPolicy get(
    String name,
    pulumi.Input<String> id, {
    ClaimsMappingPolicyState? state,
  }) {
    return ClaimsMappingPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClaimsMappingPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/claimsMappingPolicy:ClaimsMappingPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    definitions = registerOutput<List<String>>('definitions');
    displayName = registerOutput<String>('displayName');
  }
}
