import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_account_args.dart';
import 'sub_account_state.dart';

/// Allows creation and management of a Google Cloud Billing Subaccount.
///
/// &gt; **WARNING:** Deleting this resource will not delete or close the billing subaccount.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const subaccount = new gcp.billing.SubAccount("subaccount", {
///     displayName: "My Billing Account",
///     masterBillingAccount: "012345-567890-ABCDEF",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// subaccount = gcp.billing.SubAccount("subaccount",
///     display_name="My Billing Account",
///     master_billing_account="012345-567890-ABCDEF")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subaccount = new Gcp.Billing.SubAccount("subaccount", new()
///     {
///         DisplayName = "My Billing Account",
///         MasterBillingAccount = "012345-567890-ABCDEF",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/billing"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := billing.NewSubAccount(ctx, "subaccount", &billing.SubAccountArgs{
/// 			DisplayName:          pulumi.String("My Billing Account"),
/// 			MasterBillingAccount: pulumi.String("012345-567890-ABCDEF"),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_billing_subaccount" "subaccount" {
///   display_name           = "My Billing Account"
///   master_billing_account = "012345-567890-ABCDEF"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.billing.SubAccount;
/// import com.pulumi.gcp.billing.SubAccountArgs;
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
///         var subaccount = new SubAccount("subaccount", SubAccountArgs.builder()
///             .displayName("My Billing Account")
///             .masterBillingAccount("012345-567890-ABCDEF")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subaccount:
///     type: gcp:billing:SubAccount
///     properties:
///       displayName: My Billing Account
///       masterBillingAccount: 012345-567890-ABCDEF
/// ```
///
///
/// ## Import
///
/// Billing Subaccounts can be imported using any of these accepted formats:
///
/// * `billingAccounts/{billing_account_id}`
///
///
/// When using the `pulumi import` command, Billing Subaccounts can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:billing/subAccount:SubAccount default billingAccounts/{billing_account_id}
/// ```
class SubAccount extends pulumi.CustomResource {
  /// The billing account id.
  late final pulumi.Output<String> billingAccountId;
  /// If set to "RENAME_ON_DESTROY" the billing account displayName
  /// will be changed to "Destroyed" along with a timestamp.  If set to "" this will not occur.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", the command will behave as if set to "".
  ///
  /// Possible values: RENAME_ON_DESTROY, PREVENT, ABANDON, DELETE.
  late final pulumi.Output<String> deletionPolicy;
  /// The display name of the billing account.
  late final pulumi.Output<String> displayName;
  /// The name of the master billing account that the subaccount
  /// will be created under in the form `{billing_account_id}` or `billingAccounts/{billing_account_id}`.
  late final pulumi.Output<String> masterBillingAccount;
  /// The resource name of the billing account in the form `billingAccounts/{billing_account_id}`.
  late final pulumi.Output<String> name;
  /// `true` if the billing account is open, `false` if the billing account is closed.
  late final pulumi.Output<bool> open;

  /// Creates a new [SubAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubAccount]. {@macro pulumi_billing_sub_account_sub_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubAccount(
    String name, {
    SubAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:billing/subAccount:SubAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    billingAccountId = registerOutput<String>('billingAccountId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    masterBillingAccount = registerOutput<String>('masterBillingAccount');
    this.name = registerOutput<String>('name');
    open = registerOutput<bool>('open');
  }

  /// Gets an existing [SubAccount] resource's state with the given [name] and [id].
  static SubAccount get(
    String name,
    pulumi.Input<String> id, {
    SubAccountState? state,
  }) {
    return SubAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SubAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:billing/subAccount:SubAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    billingAccountId = registerOutput<String>('billingAccountId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String>('displayName');
    masterBillingAccount = registerOutput<String>('masterBillingAccount');
    this.name = registerOutput<String>('name');
    open = registerOutput<bool>('open');
  }
}
