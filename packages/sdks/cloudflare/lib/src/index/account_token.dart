import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_token_args.dart';
import 'account_token_condition.dart';
import 'account_token_policy.dart';
import 'account_token_state.dart';

/// Accepted Permissions
///
/// - `Account API Tokens Read`
/// - `Account API Tokens Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleAccountToken = new cloudflare.AccountToken("example_account_token", {
///     accountId: "b67e14daa5f8dceeb91fe5449ba496eb",
///     name: "workers read-only token",
///     policies: [{
///         effect: "allow",
///         permissionGroups: [
///             {
///                 id: "1a71c399035b4950a1bd1466bbe4f420",
///             },
///             {
///                 id: "8b47d2786a534c08a1f94ee8f9f599ef",
///             },
///         ],
///         resources: JSON.stringify({
///             "com.cloudflare.api.account.b67e14daa5f8dceeb91fe5449ba496eb": "*",
///         }),
///     }],
///     condition: {
///         requestIp: {
///             ins: [
///                 "123.123.123.0/24",
///                 "2606:4700::/32",
///             ],
///             notIns: [
///                 "123.123.123.0/28",
///                 "2606:4700:4700::/48",
///             ],
///         },
///     },
///     expiresOn: "2027-10-01T00:00:00Z",
///     notBefore: "2025-10-01T00:00:00Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_cloudflare as cloudflare
///
/// example_account_token = cloudflare.AccountToken("example_account_token",
///     account_id="b67e14daa5f8dceeb91fe5449ba496eb",
///     name="workers read-only token",
///     policies=[{
///         "effect": "allow",
///         "permission_groups": [
///             {
///                 "id": "1a71c399035b4950a1bd1466bbe4f420",
///             },
///             {
///                 "id": "8b47d2786a534c08a1f94ee8f9f599ef",
///             },
///         ],
///         "resources": json.dumps({
///             "com.cloudflare.api.account.b67e14daa5f8dceeb91fe5449ba496eb": "*",
///         }),
///     }],
///     condition={
///         "request_ip": {
///             "ins": [
///                 "123.123.123.0/24",
///                 "2606:4700::/32",
///             ],
///             "not_ins": [
///                 "123.123.123.0/28",
///                 "2606:4700:4700::/48",
///             ],
///         },
///     },
///     expires_on="2027-10-01T00:00:00Z",
///     not_before="2025-10-01T00:00:00Z")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleAccountToken = new Cloudflare.AccountToken("example_account_token", new()
///     {
///         AccountId = "b67e14daa5f8dceeb91fe5449ba496eb",
///         Name = "workers read-only token",
///         Policies = new[]
///         {
///             new Cloudflare.Inputs.AccountTokenPolicyArgs
///             {
///                 Effect = "allow",
///                 PermissionGroups = new[]
///                 {
///                     new Cloudflare.Inputs.AccountTokenPolicyPermissionGroupArgs
///                     {
///                         Id = "1a71c399035b4950a1bd1466bbe4f420",
///                     },
///                     new Cloudflare.Inputs.AccountTokenPolicyPermissionGroupArgs
///                     {
///                         Id = "8b47d2786a534c08a1f94ee8f9f599ef",
///                     },
///                 },
///                 Resources = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["com.cloudflare.api.account.b67e14daa5f8dceeb91fe5449ba496eb"] = "*",
///                 }),
///             },
///         },
///         Condition = new Cloudflare.Inputs.AccountTokenConditionArgs
///         {
///             RequestIp = new Cloudflare.Inputs.AccountTokenConditionRequestIpArgs
///             {
///                 Ins = new[]
///                 {
///                     "123.123.123.0/24",
///                     "2606:4700::/32",
///                 },
///                 NotIns = new[]
///                 {
///                     "123.123.123.0/28",
///                     "2606:4700:4700::/48",
///                 },
///             },
///         },
///         ExpiresOn = "2027-10-01T00:00:00Z",
///         NotBefore = "2025-10-01T00:00:00Z",
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
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"com.cloudflare.api.account.b67e14daa5f8dceeb91fe5449ba496eb": "*",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = cloudflare.NewAccountToken(ctx, "example_account_token", &cloudflare.AccountTokenArgs{
/// 			AccountId: pulumi.String("b67e14daa5f8dceeb91fe5449ba496eb"),
/// 			Name:      pulumi.String("workers read-only token"),
/// 			Policies: cloudflare.AccountTokenPolicyArray{
/// 				&cloudflare.AccountTokenPolicyArgs{
/// 					Effect: pulumi.String("allow"),
/// 					PermissionGroups: cloudflare.AccountTokenPolicyPermissionGroupArray{
/// 						&cloudflare.AccountTokenPolicyPermissionGroupArgs{
/// 							Id: pulumi.String("1a71c399035b4950a1bd1466bbe4f420"),
/// 						},
/// 						&cloudflare.AccountTokenPolicyPermissionGroupArgs{
/// 							Id: pulumi.String("8b47d2786a534c08a1f94ee8f9f599ef"),
/// 						},
/// 					},
/// 					Resources: pulumi.String(json0),
/// 				},
/// 			},
/// 			Condition: &cloudflare.AccountTokenConditionArgs{
/// 				RequestIp: &cloudflare.AccountTokenConditionRequestIpArgs{
/// 					Ins: pulumi.StringArray{
/// 						pulumi.String("123.123.123.0/24"),
/// 						pulumi.String("2606:4700::/32"),
/// 					},
/// 					NotIns: pulumi.StringArray{
/// 						pulumi.String("123.123.123.0/28"),
/// 						pulumi.String("2606:4700:4700::/48"),
/// 					},
/// 				},
/// 			},
/// 			ExpiresOn: pulumi.String("2027-10-01T00:00:00Z"),
/// 			NotBefore: pulumi.String("2025-10-01T00:00:00Z"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_accounttoken" "example_account_token" {
///   account_id = "b67e14daa5f8dceeb91fe5449ba496eb"
///   name       = "workers read-only token"
///   policies {
///     effect = "allow"
///     permission_groups {
///       id = "1a71c399035b4950a1bd1466bbe4f420"
///     }
///     permission_groups {
///       id = "8b47d2786a534c08a1f94ee8f9f599ef"
///     }
///     resources = jsonencode({
///       "com.cloudflare.api.account.b67e14daa5f8dceeb91fe5449ba496eb" = "*"
///     })
///   }
///   condition = {
///     request_ip = {
///       ins     = ["123.123.123.0/24", "2606:4700::/32"]
///       not_ins = ["123.123.123.0/28", "2606:4700:4700::/48"]
///     }
///   }
///   expires_on = "2027-10-01T00:00:00Z"
///   not_before = "2025-10-01T00:00:00Z"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.AccountToken;
/// import com.pulumi.cloudflare.AccountTokenArgs;
/// import com.pulumi.cloudflare.inputs.AccountTokenPolicyArgs;
/// import com.pulumi.cloudflare.inputs.AccountTokenPolicyPermissionGroupArgs;
/// import com.pulumi.cloudflare.inputs.AccountTokenConditionArgs;
/// import com.pulumi.cloudflare.inputs.AccountTokenConditionRequestIpArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var exampleAccountToken = new AccountToken("exampleAccountToken", AccountTokenArgs.builder()
///             .accountId("b67e14daa5f8dceeb91fe5449ba496eb")
///             .name("workers read-only token")
///             .policies(AccountTokenPolicyArgs.builder()
///                 .effect("allow")
///                 .permissionGroups(
///                     AccountTokenPolicyPermissionGroupArgs.builder()
///                         .id("1a71c399035b4950a1bd1466bbe4f420")
///                         .build(),
///                     AccountTokenPolicyPermissionGroupArgs.builder()
///                         .id("8b47d2786a534c08a1f94ee8f9f599ef")
///                         .build())
///                 .resources(serializeJson(
///                     jsonObject(
///                         jsonProperty("com.cloudflare.api.account.b67e14daa5f8dceeb91fe5449ba496eb", "*")
///                     )))
///                 .build())
///             .condition(AccountTokenConditionArgs.builder()
///                 .requestIp(AccountTokenConditionRequestIpArgs.builder()
///                     .ins(
///                         "123.123.123.0/24",
///                         "2606:4700::/32")
///                     .notIns(
///                         "123.123.123.0/28",
///                         "2606:4700:4700::/48")
///                     .build())
///                 .build())
///             .expiresOn("2027-10-01T00:00:00Z")
///             .notBefore("2025-10-01T00:00:00Z")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAccountToken:
///     type: cloudflare:AccountToken
///     name: example_account_token
///     properties:
///       accountId: b67e14daa5f8dceeb91fe5449ba496eb
///       name: workers read-only token
///       policies:
///         - effect: allow
///           permissionGroups:
///             - id: 1a71c399035b4950a1bd1466bbe4f420
///             - id: 8b47d2786a534c08a1f94ee8f9f599ef
///           resources:
///             fn::toJSON:
///               com.cloudflare.api.account.b67e14daa5f8dceeb91fe5449ba496eb: '*'
///       condition:
///         requestIp:
///           ins:
///             - 123.123.123.0/24
///             - 2606:4700::/32
///           notIns:
///             - 123.123.123.0/28
///             - 2606:4700:4700::/48
///       expiresOn: 2027-10-01T00:00:00Z
///       notBefore: 2025-10-01T00:00:00Z
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/accountToken:AccountToken example '<account_id>/<token_id>'
/// ```
class AccountToken extends pulumi.CustomResource {
  /// Account identifier tag.
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<AccountTokenCondition?> condition;
  /// The expiration time on or after which the JWT MUST NOT be accepted for processing.
  late final pulumi.Output<String?> expiresOn;
  /// The time on which the token was created.
  late final pulumi.Output<String> issuedOn;
  /// Last time the token was used.
  late final pulumi.Output<String> lastUsedOn;
  /// Last time the token was modified.
  late final pulumi.Output<String> modifiedOn;
  /// Token name.
  late final pulumi.Output<String> name;
  /// The time before which the token MUST NOT be accepted for processing.
  late final pulumi.Output<String?> notBefore;
  /// Set of access policies assigned to the token.
  late final pulumi.Output<List<AccountTokenPolicy>> policies;
  /// Status of the token.
  /// Available values: "active", "disabled", "expired".
  late final pulumi.Output<String> status;
  /// The token value.
  late final pulumi.Output<String> value;

  /// Creates a new [AccountToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountToken]. {@macro pulumi_index_account_token_account_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountToken(
    String name, {
    AccountTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accountToken:AccountToken',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
          additionalSecretOutputs: const ['value'],
        ) {
    accountId = registerOutput<String>('accountId');
    condition = registerOutput<AccountTokenCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountTokenCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    expiresOn = registerOutput<String?>('expiresOn');
    issuedOn = registerOutput<String>('issuedOn');
    lastUsedOn = registerOutput<String>('lastUsedOn');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    notBefore = registerOutput<String?>('notBefore');
    policies = registerOutput<List<AccountTokenPolicy>>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccountTokenPolicy>(guardedValue, (value) => AccountTokenPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
    value = registerOutput<String>('value', isSecret: true);
  }

  /// Gets an existing [AccountToken] resource's state with the given [name] and [id].
  static AccountToken get(
    String name,
    pulumi.Input<String> id, {
    AccountTokenState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccountToken._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccountToken._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accountToken:AccountToken',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    condition = registerOutput<AccountTokenCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountTokenCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    expiresOn = registerOutput<String?>('expiresOn');
    issuedOn = registerOutput<String>('issuedOn');
    lastUsedOn = registerOutput<String>('lastUsedOn');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    notBefore = registerOutput<String?>('notBefore');
    policies = registerOutput<List<AccountTokenPolicy>>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccountTokenPolicy>(guardedValue, (value) => AccountTokenPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
    value = registerOutput<String>('value', isSecret: true);
  }

  /// Creates a typed reference to an existing [AccountToken] resource.
  AccountToken.reference(String urn)
    : super(
        'cloudflare:index/accountToken:AccountToken',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['value'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    condition = registerOutput<AccountTokenCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountTokenCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    expiresOn = registerOutput<String?>('expiresOn');
    issuedOn = registerOutput<String>('issuedOn');
    lastUsedOn = registerOutput<String>('lastUsedOn');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    notBefore = registerOutput<String?>('notBefore');
    policies = registerOutput<List<AccountTokenPolicy>>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccountTokenPolicy>(guardedValue, (value) => AccountTokenPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    status = registerOutput<String>('status');
    value = registerOutput<String>('value', isSecret: true);
  }
}
