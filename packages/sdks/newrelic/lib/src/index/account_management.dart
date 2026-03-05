import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_management_args.dart';
import 'account_management_state.dart';

/// Use this resource to create and manage New Relic sub accounts.
///
/// &gt; **WARNING:** The `newrelic.AccountManagement` resource will only create/update but won't delete a sub account. Please visit our documentation on  [`Account Management`](https://docs.newrelic.com/docs/apis/nerdgraph/examples/manage-accounts-nerdgraph/#delete) for more information .
///
/// ## Example Usage
///
/// ##### Create Account
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.AccountManagement("foo", {
///     name: "Test Account Name",
///     region: "us01",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.AccountManagement("foo",
///     name="Test Account Name",
///     region="us01")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.AccountManagement("foo", new()
///     {
///         Name = "Test Account Name",
///         Region = "us01",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := newrelic.NewAccountManagement(ctx, "foo", &newrelic.AccountManagementArgs{
/// 			Name:   pulumi.String("Test Account Name"),
/// 			Region: pulumi.String("us01"),
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
/// import com.pulumi.newrelic.AccountManagement;
/// import com.pulumi.newrelic.AccountManagementArgs;
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
///         var foo = new AccountManagement("foo", AccountManagementArgs.builder()
///             .name("Test Account Name")
///             .region("us01")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:AccountManagement
///     properties:
///       name: Test Account Name
///       region: us01
/// ```
///
///
/// ## Import
///
/// Accounts can be imported using the `id`, e.g.
///
/// ```bash
/// $ terraform import newrelic_account_management.foo <id>
/// ```
class AccountManagement extends pulumi.CustomResource {
  /// The name of the Account.
  late final pulumi.Output<String> name;
  /// The region code of the account.  One of: `us01`, `eu01`.
  late final pulumi.Output<String> region;
  /// Status of the account - active or canceled
  late final pulumi.Output<String> status;

  /// Creates a new [AccountManagement].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountManagement]. {@macro pulumi_index_account_management_account_management_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountManagement(
    String name, {
    AccountManagementArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/accountManagement:AccountManagement',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [AccountManagement] resource's state with the given [name] and [id].
  static AccountManagement get(
    String name,
    pulumi.Input<String> id, {
    AccountManagementState? state,
  }) {
    return AccountManagement._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccountManagement._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/accountManagement:AccountManagement',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
  }
}
