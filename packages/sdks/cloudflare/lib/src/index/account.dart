import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'account_managed_by.dart';
import 'account_settings.dart';
import 'account_state.dart';
import 'account_unit.dart';

/// Accepted Permissions
///
/// - `Account Firewall Access Rules Read`
/// - `Account Firewall Access Rules Write`
/// - `Account Settings Read`
/// - `Account Settings Write`
/// - `Billing Read`
/// - `Billing Write`
/// - `DDoS Botnet Feed Read`
/// - `DDoS Botnet Feed Write`
/// - `DDoS Protection Read`
/// - `DDoS Protection Write`
/// - `DNS Firewall Read`
/// - `DNS Firewall Write`
/// - `DNS View Read`
/// - `DNS View Write`
/// - `Load Balancers Account Read`
/// - `Load Balancers Account Write`
/// - `Load Balancing: Monitors and Pools Read`
/// - `Load Balancing: Monitors and Pools Write`
/// - `SCIM Provisioning`
/// - `Trust and Safety Read`
/// - `Trust and Safety Write`
/// - `Workers KV Storage Read`
/// - `Workers KV Storage Write`
/// - `Workers R2 Storage Read`
/// - `Workers R2 Storage Write`
/// - `Workers Scripts Read`
/// - `Workers Scripts Write`
/// - `Workers Tail Read`
/// - `Zero Trust: PII Read`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleAccount = new cloudflare.Account("example_account", {
///     name: "name",
///     type: "standard",
///     unit: {
///         id: "f267e341f3dd4697bd3b9f71dd96247f",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_account = cloudflare.Account("example_account",
///     name="name",
///     type="standard",
///     unit={
///         "id": "f267e341f3dd4697bd3b9f71dd96247f",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleAccount = new Cloudflare.Account("example_account", new()
///     {
///         Name = "name",
///         Type = "standard",
///         Unit = new Cloudflare.Inputs.AccountUnitArgs
///         {
///             Id = "f267e341f3dd4697bd3b9f71dd96247f",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewAccount(ctx, "example_account", &cloudflare.AccountArgs{
/// 			Name: pulumi.String("name"),
/// 			Type: pulumi.String("standard"),
/// 			Unit: &cloudflare.AccountUnitArgs{
/// 				Id: pulumi.String("f267e341f3dd4697bd3b9f71dd96247f"),
/// 			},
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
/// resource "cloudflare_account" "example_account" {
///   name = "name"
///   type = "standard"
///   unit = {
///     id = "f267e341f3dd4697bd3b9f71dd96247f"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.Account;
/// import com.pulumi.cloudflare.AccountArgs;
/// import com.pulumi.cloudflare.inputs.AccountUnitArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("name")
///             .type("standard")
///             .unit(AccountUnitArgs.builder()
///                 .id("f267e341f3dd4697bd3b9f71dd96247f")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAccount:
///     type: cloudflare:Account
///     name: example_account
///     properties:
///       name: name
///       type: standard
///       unit:
///         id: f267e341f3dd4697bd3b9f71dd96247f
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/account:Account example '<account_id>'
/// ```
class Account extends pulumi.CustomResource {
  /// Timestamp for the creation of the account
  late final pulumi.Output<String> createdOn;
  /// Parent container details
  late final pulumi.Output<AccountManagedBy> managedBy;
  /// Account name
  late final pulumi.Output<String> name;
  /// Account settings
  late final pulumi.Output<AccountSettings> settings;
  /// Available values: "standard", "enterprise".
  late final pulumi.Output<String> type;
  /// information related to the tenant unit, and optionally, an id of the unit to create the account on. see https://developers.cloudflare.com/tenant/how-to/manage-accounts/
  late final pulumi.Output<AccountUnit> unit;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_index_account_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    createdOn = registerOutput<String>('createdOn');
    managedBy = registerOutput<AccountManagedBy>('managedBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountManagedBy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    settings = registerOutput<AccountSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    unit = registerOutput<AccountUnit>('unit', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountUnit.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Account] resource's state with the given [name] and [id].
  static Account get(
    String name,
    pulumi.Input<String> id, {
    AccountState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Account._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Account._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/account:Account',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdOn = registerOutput<String>('createdOn');
    managedBy = registerOutput<AccountManagedBy>('managedBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountManagedBy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    settings = registerOutput<AccountSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    unit = registerOutput<AccountUnit>('unit', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountUnit.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Account] resource.
  Account.reference(String urn)
    : super(
        'cloudflare:index/account:Account',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdOn = registerOutput<String>('createdOn');
    managedBy = registerOutput<AccountManagedBy>('managedBy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountManagedBy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    settings = registerOutput<AccountSettings>('settings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    unit = registerOutput<AccountUnit>('unit', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountUnit.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
