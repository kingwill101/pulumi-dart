import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_availabilities_args.dart';
import 'get_account_availabilities_result.dart';
import 'get_account_availability_args.dart';
import 'get_account_availability_result.dart';
import 'get_account_login_args.dart';
import 'get_account_login_result.dart';
import 'get_account_logins_args.dart';
import 'get_account_logins_result.dart';
import 'get_account_result.dart';
import 'get_account_settings_result.dart';
import 'get_child_account_args.dart';
import 'get_child_account_result.dart';
import 'get_child_accounts_args.dart';
import 'get_child_accounts_result.dart';
import 'get_consumer_image_share_group_args.dart';
import 'get_consumer_image_share_group_image_shares_args.dart';
import 'get_consumer_image_share_group_image_shares_result.dart';
import 'get_consumer_image_share_group_result.dart';
import 'get_consumer_image_share_group_token_args.dart';
import 'get_consumer_image_share_group_token_result.dart';
import 'get_consumer_image_share_group_tokens_args.dart';
import 'get_consumer_image_share_group_tokens_result.dart';
import 'get_database_backups_args.dart';
import 'get_database_backups_result.dart';
import 'get_database_engines_args.dart';
import 'get_database_engines_result.dart';
import 'get_database_mysql_args.dart';
import 'get_database_mysql_backups_args.dart';
import 'get_database_mysql_backups_result.dart';
import 'get_database_mysql_config_result.dart';
import 'get_database_mysql_result.dart';
import 'get_database_mysql_v2_args.dart';
import 'get_database_mysql_v2_result.dart';
import 'get_database_postgresql_args.dart';
import 'get_database_postgresql_config_result.dart';
import 'get_database_postgresql_result.dart';
import 'get_database_postgresql_v2_args.dart';
import 'get_database_postgresql_v2_result.dart';
import 'get_databases_args.dart';
import 'get_databases_result.dart';
import 'get_domain_args.dart';
import 'get_domain_record_args.dart';
import 'get_domain_record_result.dart';
import 'get_domain_result.dart';
import 'get_domain_zonefile_args.dart';
import 'get_domain_zonefile_result.dart';
import 'get_domains_args.dart';
import 'get_domains_result.dart';
import 'get_firewall_args.dart';
import 'get_firewall_result.dart';
import 'get_firewall_settings_result.dart';
import 'get_firewall_template_args.dart';
import 'get_firewall_template_result.dart';
import 'get_firewall_templates_args.dart';
import 'get_firewall_templates_result.dart';
import 'get_firewalls_args.dart';
import 'get_firewalls_result.dart';
import 'get_image_args.dart';
import 'get_image_result.dart';
import 'get_images_args.dart';
import 'get_images_result.dart';
import 'get_instance_backups_args.dart';
import 'get_instance_backups_result.dart';
import 'get_instance_networking_args.dart';
import 'get_instance_networking_result.dart';
import 'get_instance_type_args.dart';
import 'get_instance_type_result.dart';
import 'get_instance_types_args.dart';
import 'get_instance_types_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_interface_args.dart';
import 'get_interface_result.dart';
import 'get_ipv6_range_args.dart';
import 'get_ipv6_range_result.dart';
import 'get_ipv6_ranges_args.dart';
import 'get_ipv6_ranges_result.dart';
import 'get_kernel_args.dart';
import 'get_kernel_result.dart';
import 'get_kernels_args.dart';
import 'get_kernels_result.dart';
import 'get_linode_object_storage_bucket_args.dart';
import 'get_linode_object_storage_bucket_result.dart';
import 'get_lke_cluster_args.dart';
import 'get_lke_cluster_result.dart';
import 'get_lke_clusters_args.dart';
import 'get_lke_clusters_result.dart';
import 'get_lke_types_args.dart';
import 'get_lke_types_result.dart';
import 'get_lke_version_args.dart';
import 'get_lke_version_result.dart';
import 'get_lke_versions_args.dart';
import 'get_lke_versions_result.dart';
import 'get_lock_args.dart';
import 'get_lock_result.dart';
import 'get_locks_args.dart';
import 'get_locks_result.dart';
import 'get_maintenance_policies_args.dart';
import 'get_maintenance_policies_result.dart';
import 'get_nb_types_args.dart';
import 'get_nb_types_result.dart';
import 'get_network_transfer_prices_args.dart';
import 'get_network_transfer_prices_result.dart';
import 'get_networking_ip_args.dart';
import 'get_networking_ip_result.dart';
import 'get_networking_ips_args.dart';
import 'get_networking_ips_result.dart';
import 'get_node_balancer_args.dart';
import 'get_node_balancer_config_args.dart';
import 'get_node_balancer_config_result.dart';
import 'get_node_balancer_node_args.dart';
import 'get_node_balancer_node_result.dart';
import 'get_node_balancer_result.dart';
import 'get_nodebalancer_configs_args.dart';
import 'get_nodebalancer_configs_result.dart';
import 'get_nodebalancer_vpc_args.dart';
import 'get_nodebalancer_vpc_result.dart';
import 'get_nodebalancer_vpcs_args.dart';
import 'get_nodebalancer_vpcs_result.dart';
import 'get_nodebalancers_args.dart';
import 'get_nodebalancers_result.dart';
import 'get_object_storage_cluster_args.dart';
import 'get_object_storage_cluster_result.dart';
import 'get_object_storage_endpoints_args.dart';
import 'get_object_storage_endpoints_result.dart';
import 'get_object_storage_quota_args.dart';
import 'get_object_storage_quota_result.dart';
import 'get_object_storage_quotas_args.dart';
import 'get_object_storage_quotas_result.dart';
import 'get_placement_group_args.dart';
import 'get_placement_group_result.dart';
import 'get_placement_groups_args.dart';
import 'get_placement_groups_result.dart';
import 'get_producer_image_share_group_args.dart';
import 'get_producer_image_share_group_image_shares_args.dart';
import 'get_producer_image_share_group_image_shares_result.dart';
import 'get_producer_image_share_group_member_args.dart';
import 'get_producer_image_share_group_member_result.dart';
import 'get_producer_image_share_group_members_args.dart';
import 'get_producer_image_share_group_members_result.dart';
import 'get_producer_image_share_group_result.dart';
import 'get_producer_image_share_groups_args.dart';
import 'get_producer_image_share_groups_result.dart';
import 'get_profile_result.dart';
import 'get_region_args.dart';
import 'get_region_result.dart';
import 'get_regions_args.dart';
import 'get_regions_result.dart';
import 'get_ssh_key_args.dart';
import 'get_ssh_key_result.dart';
import 'get_sshkeys_args.dart';
import 'get_sshkeys_result.dart';
import 'get_stack_script_args.dart';
import 'get_stack_script_result.dart';
import 'get_stack_scripts_args.dart';
import 'get_stack_scripts_result.dart';
import 'get_user_args.dart';
import 'get_user_result.dart';
import 'get_users_args.dart';
import 'get_users_result.dart';
import 'get_vlans_args.dart';
import 'get_vlans_result.dart';
import 'get_volume_args.dart';
import 'get_volume_result.dart';
import 'get_volume_types_args.dart';
import 'get_volume_types_result.dart';
import 'get_volumes_args.dart';
import 'get_volumes_result.dart';
import 'get_vpc_args.dart';
import 'get_vpc_ips_args.dart';
import 'get_vpc_ips_result.dart';
import 'get_vpc_result.dart';
import 'get_vpc_subnet_args.dart';
import 'get_vpc_subnet_result.dart';
import 'get_vpc_subnets_args.dart';
import 'get_vpc_subnets_result.dart';
import 'get_vpcs_args.dart';
import 'get_vpcs_result.dart';

/// Provides information about a Linode account.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-account).
///
/// Due to the sensitive nature of the data exposed by this data source, it should not be used in conjunction with the `LINODE_DEBUG` option.  See the [debugging notes](https://www.terraform.io/providers/linode/linode/latest/docs#debugging) for more details.
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access account details.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const account = linode.getAccount({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// account = linode.get_account()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = Linode.GetAccount.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetAccount(ctx, map[string]interface{}{}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
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
///         final var account = LinodeFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   account:
///     fn::invoke:
///       function: linode:getAccount
///       arguments: {}
/// ```
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getAccount:getAccount',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

/// Provides information about services availabilities for the current Linode account.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-availability).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to discover regions without specific service availability.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// export = async () => {
///     const filtered_availabilities = await linode.getAccountAvailabilities({
///         filters: [{
///             name: "unavailable",
///             values: ["Linodes"],
///         }],
///     });
///     return {
///         "regions-without-linodes": filtered_availabilities.availabilities.map(__item => __item.region),
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// filtered_availabilities = linode.get_account_availabilities(filters=[{
///     "name": "unavailable",
///     "values": ["Linodes"],
/// }])
/// pulumi.export("regions-without-linodes", [__item.region for __item in filtered_availabilities.availabilities])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filtered_availabilities = Linode.GetAccountAvailabilities.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetAccountAvailabilitiesFilterInputArgs
///             {
///                 Name = "unavailable",
///                 Values = new[]
///                 {
///                     "Linodes",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["regions-without-linodes"] = filtered_availabilities.Apply(filtered_availabilities => filtered_availabilities.Apply(getAccountAvailabilitiesResult => getAccountAvailabilitiesResult.Availabilities).Select(__item => __item.Region).ToList()),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// filtered_availabilities, err := linode.GetAccountAvailabilities(ctx, &linode.GetAccountAvailabilitiesArgs{
/// Filters: []linode.GetAccountAvailabilitiesFilter{
/// {
/// Name: "unavailable",
/// Values: []string{
/// "Linodes",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("regions-without-linodes", pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:8,11-59)))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetAccountAvailabilitiesArgs;
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
///         final var filtered-availabilities = LinodeFunctions.getAccountAvailabilities(GetAccountAvailabilitiesArgs.builder()
///             .filters(GetAccountAvailabilitiesFilterArgs.builder()
///                 .name("unavailable")
///                 .values("Linodes")
///                 .build())
///             .build());
///
///         ctx.export("regions-without-linodes", filtered_availabilities.availabilities().stream().map(element -> element.region()).collect(toList()));
///     }
/// }
/// ```
///
///
/// ## Filterable Fields
///
/// * `region`
///
/// * `unavailable`
///
/// * `available`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_account_availabilities_get_account_availabilities_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountAvailabilitiesResult> getAccountAvailabilities(
  GetAccountAvailabilitiesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getAccountAvailabilities:getAccountAvailabilities',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountAvailabilitiesResult.fromMap(result);
}

/// Provides details about service availability in a region to an account specifically.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-account-availability).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode account availability.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const myAccountAvailability = linode.getAccountAvailability({
///     region: "us-east",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_account_availability = linode.get_account_availability(region="us-east")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myAccountAvailability = Linode.GetAccountAvailability.Invoke(new()
///     {
///         Region = "us-east",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetAccountAvailability(ctx, &linode.GetAccountAvailabilityArgs{
/// 			Region: "us-east",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetAccountAvailabilityArgs;
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
///         final var myAccountAvailability = LinodeFunctions.getAccountAvailability(GetAccountAvailabilityArgs.builder()
///             .region("us-east")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myAccountAvailability:
///     fn::invoke:
///       function: linode:getAccountAvailability
///       arguments:
///         region: us-east
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_account_availability_get_account_availability_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountAvailabilityResult> getAccountAvailability(
  GetAccountAvailabilityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getAccountAvailability:getAccountAvailability',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountAvailabilityResult.fromMap(result);
}

/// Provides details about a specific Linode account login.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-account-login).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode account login.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const myAccountLogin = linode.getAccountLogin({
///     id: 123456,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_account_login = linode.get_account_login(id=123456)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myAccountLogin = Linode.GetAccountLogin.Invoke(new()
///     {
///         Id = 123456,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetAccountLogin(ctx, &linode.GetAccountLoginArgs{
/// 			Id: 123456,
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetAccountLoginArgs;
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
///         final var myAccountLogin = LinodeFunctions.getAccountLogin(GetAccountLoginArgs.builder()
///             .id(123456)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myAccountLogin:
///     fn::invoke:
///       function: linode:getAccountLogin
///       arguments:
///         id: 123456
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_account_login_get_account_login_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountLoginResult> getAccountLogin(
  GetAccountLoginArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getAccountLogin:getAccountLogin',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountLoginResult.fromMap(result);
}

/// Provides information about Linode account logins that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-account-logins).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode account login.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const filtered_account_logins = linode.getAccountLogins({
///     filters: [
///         {
///             name: "restricted",
///             values: ["true"],
///         },
///         {
///             name: "username",
///             values: ["myUsername"],
///         },
///     ],
/// });
/// export const loginIds = filtered_account_logins.then(filtered_account_logins => filtered_account_logins.logins.map(__item => __item.id));
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// filtered_account_logins = linode.get_account_logins(filters=[
///     {
///         "name": "restricted",
///         "values": ["true"],
///     },
///     {
///         "name": "username",
///         "values": ["myUsername"],
///     },
/// ])
/// pulumi.export("loginIds", [__item.id for __item in filtered_account_logins.logins])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filtered_account_logins = Linode.GetAccountLogins.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetAccountLoginsFilterInputArgs
///             {
///                 Name = "restricted",
///                 Values = new[]
///                 {
///                     "true",
///                 },
///             },
///             new Linode.Inputs.GetAccountLoginsFilterInputArgs
///             {
///                 Name = "username",
///                 Values = new[]
///                 {
///                     "myUsername",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["loginIds"] = filtered_account_logins.Apply(filtered_account_logins => filtered_account_logins.Apply(getAccountLoginsResult => getAccountLoginsResult.Logins).Select(__item => __item.Id).ToList()),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// filtered_account_logins, err := linode.GetAccountLogins(ctx, &linode.GetAccountLoginsArgs{
/// Filters: []linode.GetAccountLoginsFilter{
/// {
/// Name: "restricted",
/// Values: []string{
/// "true",
/// },
/// },
/// {
/// Name: "username",
/// Values: []string{
/// "myUsername",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("loginIds", pulumi.IntArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:11,11-47)))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetAccountLoginsArgs;
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
///         final var filtered-account-logins = LinodeFunctions.getAccountLogins(GetAccountLoginsArgs.builder()
///             .filters(
///                 GetAccountLoginsFilterArgs.builder()
///                     .name("restricted")
///                     .values("true")
///                     .build(),
///                 GetAccountLoginsFilterArgs.builder()
///                     .name("username")
///                     .values("myUsername")
///                     .build())
///             .build());
///
///         ctx.export("loginIds", filtered_account_logins.logins().stream().map(element -> element.id()).collect(toList()));
///     }
/// }
/// ```
///
///
/// ## Filterable Fields
///
/// * `ip`
///
/// * `restricted`
///
/// * `username`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_account_logins_get_account_logins_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountLoginsResult> getAccountLogins(
  GetAccountLoginsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getAccountLogins:getAccountLogins',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountLoginsResult.fromMap(result);
}

/// Provides information about Linode account settings.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-account-settings).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about Linode account settings.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const example = linode.getAccountSettings({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// example = linode.get_account_settings()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Linode.GetAccountSettings.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupAccountSettings(ctx, map[string]interface{}{}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
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
///         final var example = LinodeFunctions.getAccountSettings(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: linode:getAccountSettings
///       arguments: {}
/// ```
/// [options] Invoke options controlling this call.
Future<GetAccountSettingsResult> getAccountSettings(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getAccountSettings:getAccountSettings',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountSettingsResult.fromMap(result);
}

/// Provides information about a Linode Child Account.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-child-account).
///
/// Due to the sensitive nature of the data exposed by this data source, it should not be used in conjunction with the `LINODE_DEBUG` option.  See the [debugging notes](https://www.terraform.io/providers/linode/linode/latest/docs#debugging) for more details.
///
/// **NOTE: Parent/Child related features may not be generally available.**
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access child account details.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const account = linode.getChildAccount({
///     euuid: "FFFFFFFF-FFFF-FFFF-FFFFFFFFFFFFFFFF",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// account = linode.get_child_account(euuid="FFFFFFFF-FFFF-FFFF-FFFFFFFFFFFFFFFF")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = Linode.GetChildAccount.Invoke(new()
///     {
///         Euuid = "FFFFFFFF-FFFF-FFFF-FFFFFFFFFFFFFFFF",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetChildAccount(ctx, &linode.GetChildAccountArgs{
/// 			Euuid: "FFFFFFFF-FFFF-FFFF-FFFFFFFFFFFFFFFF",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetChildAccountArgs;
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
///         final var account = LinodeFunctions.getChildAccount(GetChildAccountArgs.builder()
///             .euuid("FFFFFFFF-FFFF-FFFF-FFFFFFFFFFFFFFFF")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   account:
///     fn::invoke:
///       function: linode:getChildAccount
///       arguments:
///         euuid: FFFFFFFF-FFFF-FFFF-FFFFFFFFFFFFFFFF
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_child_account_get_child_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChildAccountResult> getChildAccount(
  GetChildAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getChildAccount:getChildAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChildAccountResult.fromMap(result);
}

/// Provides information about Linode Child Accounts that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-child-accounts).
///
/// **NOTE: Parent/Child related features may not be generally available.**
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access Child Accounts under the current Account.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const all = linode.getChildAccounts({});
/// const filtered = linode.getChildAccounts({
///     filters: [
///         {
///             name: "email",
///             values: ["example@linode.com"],
///         },
///         {
///             name: "first_name",
///             values: ["John"],
///         },
///         {
///             name: "last_name",
///             values: ["Smith"],
///         },
///     ],
/// });
/// export const allAccounts = all.then(all => all.childAccounts.map(__item => __item.euuid));
/// export const filteredAccounts = filtered.then(filtered => filtered.childAccounts.map(__item => __item.euuid));
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all = linode.get_child_accounts()
/// filtered = linode.get_child_accounts(filters=[
///     {
///         "name": "email",
///         "values": ["example@linode.com"],
///     },
///     {
///         "name": "first_name",
///         "values": ["John"],
///     },
///     {
///         "name": "last_name",
///         "values": ["Smith"],
///     },
/// ])
/// pulumi.export("allAccounts", [__item.euuid for __item in all.child_accounts])
/// pulumi.export("filteredAccounts", [__item.euuid for __item in filtered.child_accounts])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Linode.GetChildAccounts.Invoke();
///
///     var filtered = Linode.GetChildAccounts.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetChildAccountsFilterInputArgs
///             {
///                 Name = "email",
///                 Values = new[]
///                 {
///                     "example@linode.com",
///                 },
///             },
///             new Linode.Inputs.GetChildAccountsFilterInputArgs
///             {
///                 Name = "first_name",
///                 Values = new[]
///                 {
///                     "John",
///                 },
///             },
///             new Linode.Inputs.GetChildAccountsFilterInputArgs
///             {
///                 Name = "last_name",
///                 Values = new[]
///                 {
///                     "Smith",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["allAccounts"] = all.Apply(getChildAccountsResult => getChildAccountsResult.ChildAccounts).Select(__item => __item.Euuid).ToList(),
///         ["filteredAccounts"] = filtered.Apply(getChildAccountsResult => getChildAccountsResult.ChildAccounts).Select(__item => __item.Euuid).ToList(),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// all, err := linode.GetChildAccounts(ctx, &linode.GetChildAccountsArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// filtered, err := linode.GetChildAccounts(ctx, &linode.GetChildAccountsArgs{
/// Filters: []linode.GetChildAccountsFilter{
/// {
/// Name: "email",
/// Values: []string{
/// "example@linode.com",
/// },
/// },
/// {
/// Name: "first_name",
/// Values: []string{
/// "John",
/// },
/// },
/// {
/// Name: "last_name",
/// Values: []string{
/// "Smith",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("allAccounts", pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:16,11-37)))
/// ctx.Export("filteredAccounts", pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:20,11-42)))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetChildAccountsArgs;
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
///         final var all = LinodeFunctions.getChildAccounts(GetChildAccountsArgs.builder()
///             .build());
///
///         final var filtered = LinodeFunctions.getChildAccounts(GetChildAccountsArgs.builder()
///             .filters(
///                 GetChildAccountsFilterArgs.builder()
///                     .name("email")
///                     .values("example@linode.com")
///                     .build(),
///                 GetChildAccountsFilterArgs.builder()
///                     .name("first_name")
///                     .values("John")
///                     .build(),
///                 GetChildAccountsFilterArgs.builder()
///                     .name("last_name")
///                     .values("Smith")
///                     .build())
///             .build());
///
///         ctx.export("allAccounts", all.childAccounts().stream().map(element -> element.euuid()).collect(toList()));
///         ctx.export("filteredAccounts", filtered.childAccounts().stream().map(element -> element.euuid()).collect(toList()));
///     }
/// }
/// ```
///
///
/// ## Filterable Fields
///
/// * `euuid`
///
/// * `email`
///
/// * `first_name`
///
/// * `last_name`
///
/// * `company`
///
/// * `address_1`
///
/// * `address_2`
///
/// * `phone`
///
/// * `city`
///
/// * `state`
///
/// * `country`
///
/// * `zip`
///
/// * `capabilities`
///
/// * `active_since`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_child_accounts_get_child_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChildAccountsResult> getChildAccounts(
  GetChildAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getChildAccounts:getChildAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChildAccountsResult.fromMap(result);
}

/// `linode.getConsumerImageShareGroup` provides details about an Image Share Group that the user's token has been accepted into.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-sharegroup-by-token). May not be currently available to all users even under v4beta.
///
/// ## Example Usage
///
/// The following example shows how the datasource might be used to obtain additional information about an Image Share Group.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const sg = linode.getConsumerImageShareGroup({
///     tokenUuid: "7548d17e-8db4-4a91-b47c-a8e1203063d9",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// sg = linode.get_consumer_image_share_group(token_uuid="7548d17e-8db4-4a91-b47c-a8e1203063d9")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sg = Linode.GetConsumerImageShareGroup.Invoke(new()
///     {
///         TokenUuid = "7548d17e-8db4-4a91-b47c-a8e1203063d9",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetConsumerImageShareGroup(ctx, &linode.GetConsumerImageShareGroupArgs{
/// 			TokenUuid: "7548d17e-8db4-4a91-b47c-a8e1203063d9",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetConsumerImageShareGroupArgs;
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
///         final var sg = LinodeFunctions.getConsumerImageShareGroup(GetConsumerImageShareGroupArgs.builder()
///             .tokenUuid("7548d17e-8db4-4a91-b47c-a8e1203063d9")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sg:
///     fn::invoke:
///       function: linode:getConsumerImageShareGroup
///       arguments:
///         tokenUuid: 7548d17e-8db4-4a91-b47c-a8e1203063d9
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_consumer_image_share_group_get_consumer_image_share_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsumerImageShareGroupResult> getConsumerImageShareGroup(
  GetConsumerImageShareGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getConsumerImageShareGroup:getConsumerImageShareGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsumerImageShareGroupResult.fromMap(result);
}

/// Provides information about a list of Images that match a set of filters that have been
/// shared in the Image Share Group that the provided Token has been accepted into.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-sharegroup-images-by-token). May not be currently available to all users even under v4beta.
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to list Images shared in an Image Share Group.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// export = async () => {
///     const all = await linode.getConsumerImageShareGroupImageShares({});
///     const filtered = await linode.getConsumerImageShareGroupImageShares({
///         tokenUuid: "54e1adf3-e499-4685-82be-10d29d4e8fae",
///         filters: [{
///             name: "label",
///             values: ["my-label"],
///         }],
///     });
///     return {
///         "all-shared-images": all.imageShares,
///         "filtered-shared-images": filtered.imageShares,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all = linode.get_consumer_image_share_group_image_shares()
/// filtered = linode.get_consumer_image_share_group_image_shares(token_uuid="54e1adf3-e499-4685-82be-10d29d4e8fae",
///     filters=[{
///         "name": "label",
///         "values": ["my-label"],
///     }])
/// pulumi.export("all-shared-images", all.image_shares)
/// pulumi.export("filtered-shared-images", filtered.image_shares)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Linode.GetConsumerImageShareGroupImageShares.Invoke();
///
///     var filtered = Linode.GetConsumerImageShareGroupImageShares.Invoke(new()
///     {
///         TokenUuid = "54e1adf3-e499-4685-82be-10d29d4e8fae",
///         Filters = new[]
///         {
///             new Linode.Inputs.GetConsumerImageShareGroupImageSharesFilterInputArgs
///             {
///                 Name = "label",
///                 Values = new[]
///                 {
///                     "my-label",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["all-shared-images"] = all.Apply(getConsumerImageShareGroupImageSharesResult => getConsumerImageShareGroupImageSharesResult.ImageShares),
///         ["filtered-shared-images"] = filtered.Apply(getConsumerImageShareGroupImageSharesResult => getConsumerImageShareGroupImageSharesResult.ImageShares),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		all, err := linode.GetConsumerImageShareGroupImageShares(ctx, &linode.GetConsumerImageShareGroupImageSharesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		filtered, err := linode.GetConsumerImageShareGroupImageShares(ctx, &linode.GetConsumerImageShareGroupImageSharesArgs{
/// 			TokenUuid: "54e1adf3-e499-4685-82be-10d29d4e8fae",
/// 			Filters: []linode.GetConsumerImageShareGroupImageSharesFilter{
/// 				{
/// 					Name: "label",
/// 					Values: []string{
/// 						"my-label",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("all-shared-images", all.ImageShares)
/// 		ctx.Export("filtered-shared-images", filtered.ImageShares)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetConsumerImageShareGroupImageSharesArgs;
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
///         final var all = LinodeFunctions.getConsumerImageShareGroupImageShares(GetConsumerImageShareGroupImageSharesArgs.builder()
///             .build());
///
///         final var filtered = LinodeFunctions.getConsumerImageShareGroupImageShares(GetConsumerImageShareGroupImageSharesArgs.builder()
///             .tokenUuid("54e1adf3-e499-4685-82be-10d29d4e8fae")
///             .filters(GetConsumerImageShareGroupImageSharesFilterArgs.builder()
///                 .name("label")
///                 .values("my-label")
///                 .build())
///             .build());
///
///         ctx.export("all-shared-images", all.imageShares());
///         ctx.export("filtered-shared-images", filtered.imageShares());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: linode:getConsumerImageShareGroupImageShares
///       arguments: {}
///   filtered:
///     fn::invoke:
///       function: linode:getConsumerImageShareGroupImageShares
///       arguments:
///         tokenUuid: 54e1adf3-e499-4685-82be-10d29d4e8fae
///         filters:
///           - name: label
///             values:
///               - my-label
/// outputs:
///   all-shared-images: ${all.imageShares}
///   filtered-shared-images: ${filtered.imageShares}
/// ```
///
///
/// ## Filterable Fields
///
/// * `id`
///
/// * `label`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_consumer_image_share_group_image_shares_get_consumer_image_share_group_image_shares_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsumerImageShareGroupImageSharesResult> getConsumerImageShareGroupImageShares(
  GetConsumerImageShareGroupImageSharesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getConsumerImageShareGroupImageShares:getConsumerImageShareGroupImageShares',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsumerImageShareGroupImageSharesResult.fromMap(result);
}

/// `linode.ConsumerImageShareGroupToken` provides details about a Token for an Image Share Group.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-sharegroup-token). May not be currently available to all users even under v4beta.
///
/// ## Example Usage
///
/// The following example shows how the datasource might be used to obtain additional information about a Token for an Image Share Group.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const token = linode.getConsumerImageShareGroupToken({
///     tokenUuid: "db58ab2e-3021-4b08-9426-8e456f6dd268",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// token = linode.get_consumer_image_share_group_token(token_uuid="db58ab2e-3021-4b08-9426-8e456f6dd268")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var token = Linode.GetConsumerImageShareGroupToken.Invoke(new()
///     {
///         TokenUuid = "db58ab2e-3021-4b08-9426-8e456f6dd268",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupConsumerImageShareGroupToken(ctx, &linode.LookupConsumerImageShareGroupTokenArgs{
/// 			TokenUuid: "db58ab2e-3021-4b08-9426-8e456f6dd268",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetConsumerImageShareGroupTokenArgs;
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
///         final var token = LinodeFunctions.getConsumerImageShareGroupToken(GetConsumerImageShareGroupTokenArgs.builder()
///             .tokenUuid("db58ab2e-3021-4b08-9426-8e456f6dd268")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   token:
///     fn::invoke:
///       function: linode:getConsumerImageShareGroupToken
///       arguments:
///         tokenUuid: db58ab2e-3021-4b08-9426-8e456f6dd268
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_consumer_image_share_group_token_get_consumer_image_share_group_token_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsumerImageShareGroupTokenResult> getConsumerImageShareGroupToken(
  GetConsumerImageShareGroupTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getConsumerImageShareGroupToken:getConsumerImageShareGroupToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsumerImageShareGroupTokenResult.fromMap(result);
}

/// Provides information about a list of Image Share Group Tokens that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-user-tokens). May not be currently available to all users even under v4beta.
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to list Image Share Groups.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// export = async () => {
///     const all = await linode.getConsumerImageShareGroupTokens({});
///     const filtered = await linode.getConsumerImageShareGroupTokens({
///         filters: [{
///             name: "label",
///             values: ["my-label"],
///         }],
///     });
///     return {
///         "all-share-group-tokens": all.tokens,
///         "filtered-share-group-tokens": filtered.tokens,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all = linode.get_consumer_image_share_group_tokens()
/// filtered = linode.get_consumer_image_share_group_tokens(filters=[{
///     "name": "label",
///     "values": ["my-label"],
/// }])
/// pulumi.export("all-share-group-tokens", all.tokens)
/// pulumi.export("filtered-share-group-tokens", filtered.tokens)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Linode.GetConsumerImageShareGroupTokens.Invoke();
///
///     var filtered = Linode.GetConsumerImageShareGroupTokens.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetConsumerImageShareGroupTokensFilterInputArgs
///             {
///                 Name = "label",
///                 Values = new[]
///                 {
///                     "my-label",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["all-share-group-tokens"] = all.Apply(getConsumerImageShareGroupTokensResult => getConsumerImageShareGroupTokensResult.Tokens),
///         ["filtered-share-group-tokens"] = filtered.Apply(getConsumerImageShareGroupTokensResult => getConsumerImageShareGroupTokensResult.Tokens),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		all, err := linode.GetConsumerImageShareGroupTokens(ctx, &linode.GetConsumerImageShareGroupTokensArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		filtered, err := linode.GetConsumerImageShareGroupTokens(ctx, &linode.GetConsumerImageShareGroupTokensArgs{
/// 			Filters: []linode.GetConsumerImageShareGroupTokensFilter{
/// 				{
/// 					Name: "label",
/// 					Values: []string{
/// 						"my-label",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("all-share-group-tokens", all.Tokens)
/// 		ctx.Export("filtered-share-group-tokens", filtered.Tokens)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetConsumerImageShareGroupTokensArgs;
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
///         final var all = LinodeFunctions.getConsumerImageShareGroupTokens(GetConsumerImageShareGroupTokensArgs.builder()
///             .build());
///
///         final var filtered = LinodeFunctions.getConsumerImageShareGroupTokens(GetConsumerImageShareGroupTokensArgs.builder()
///             .filters(GetConsumerImageShareGroupTokensFilterArgs.builder()
///                 .name("label")
///                 .values("my-label")
///                 .build())
///             .build());
///
///         ctx.export("all-share-group-tokens", all.tokens());
///         ctx.export("filtered-share-group-tokens", filtered.tokens());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: linode:getConsumerImageShareGroupTokens
///       arguments: {}
///   filtered:
///     fn::invoke:
///       function: linode:getConsumerImageShareGroupTokens
///       arguments:
///         filters:
///           - name: label
///             values:
///               - my-label
/// outputs:
///   all-share-group-tokens: ${all.tokens}
///   filtered-share-group-tokens: ${filtered.tokens}
/// ```
///
///
/// ## Filterable Fields
///
/// * `token_uuid`
///
/// * `label`
///
/// * `status`
///
/// * `valid_for_sharegroup_uuid`
///
/// * `sharegroup_uuid`
///
/// * `sharegroup_label`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_consumer_image_share_group_tokens_get_consumer_image_share_group_tokens_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsumerImageShareGroupTokensResult> getConsumerImageShareGroupTokens(
  GetConsumerImageShareGroupTokensArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getConsumerImageShareGroupTokens:getConsumerImageShareGroupTokens',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsumerImageShareGroupTokensResult.fromMap(result);
}

/// &gt; **DEPRECATION NOTICE:** This data source has been deprecated.
///
/// Provides information about Linode Database Backups that match a set of filters.
/// For more information, see the Linode APIv4 docs for [MySQL](https://techdocs.akamai.com/linode-api/reference/get-databases-mysql-instance-backups) and [PostgreSQL](https://techdocs.akamai.com/linode-api/reference/get-databases-postgre-sql-instance-backups).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const all_backups = linode.getDatabaseBackups({
///     databaseId: 12345,
///     databaseType: "mysql",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all_backups = linode.get_database_backups(database_id=12345,
///     database_type="mysql")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all_backups = Linode.GetDatabaseBackups.Invoke(new()
///     {
///         DatabaseId = 12345,
///         DatabaseType = "mysql",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetDatabaseBackups(ctx, &linode.GetDatabaseBackupsArgs{
/// 			DatabaseId:   12345,
/// 			DatabaseType: "mysql",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetDatabaseBackupsArgs;
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
///         final var all-backups = LinodeFunctions.getDatabaseBackups(GetDatabaseBackupsArgs.builder()
///             .databaseId(12345)
///             .databaseType("mysql")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all-backups:
///     fn::invoke:
///       function: linode:getDatabaseBackups
///       arguments:
///         databaseId: 12345
///         databaseType: mysql
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const auto_backups = linode.getDatabaseBackups({
///     databaseId: 12345,
///     databaseType: "postgresql",
///     filters: [{
///         name: "type",
///         values: ["auto"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// auto_backups = linode.get_database_backups(database_id=12345,
///     database_type="postgresql",
///     filters=[{
///         "name": "type",
///         "values": ["auto"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var auto_backups = Linode.GetDatabaseBackups.Invoke(new()
///     {
///         DatabaseId = 12345,
///         DatabaseType = "postgresql",
///         Filters = new[]
///         {
///             new Linode.Inputs.GetDatabaseBackupsFilterInputArgs
///             {
///                 Name = "type",
///                 Values = new[]
///                 {
///                     "auto",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetDatabaseBackups(ctx, &linode.GetDatabaseBackupsArgs{
/// 			DatabaseId:   12345,
/// 			DatabaseType: "postgresql",
/// 			Filters: []linode.GetDatabaseBackupsFilter{
/// 				{
/// 					Name: "type",
/// 					Values: []string{
/// 						"auto",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetDatabaseBackupsArgs;
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
///         final var auto-backups = LinodeFunctions.getDatabaseBackups(GetDatabaseBackupsArgs.builder()
///             .databaseId(12345)
///             .databaseType("postgresql")
///             .filters(GetDatabaseBackupsFilterArgs.builder()
///                 .name("type")
///                 .values("auto")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   auto-backups:
///     fn::invoke:
///       function: linode:getDatabaseBackups
///       arguments:
///         databaseId: 12345
///         databaseType: postgresql
///         filters:
///           - name: type
///             values:
///               - auto
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_database_backups_get_database_backups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseBackupsResult> getDatabaseBackups(
  GetDatabaseBackupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getDatabaseBackups:getDatabaseBackups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseBackupsResult.fromMap(result);
}

/// Provides information about Linode Managed Database engines that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-databases-engines).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const all = linode.getDatabaseEngines({});
/// export const engineIds = all.then(all => all.engines.map(__item => __item.id));
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all = linode.get_database_engines()
/// pulumi.export("engineIds", [__item.id for __item in all.engines])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Linode.GetDatabaseEngines.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["engineIds"] = all.Apply(getDatabaseEnginesResult => getDatabaseEnginesResult.Engines).Select(__item => __item.Id).ToList(),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// all, err := linode.GetDatabaseEngines(ctx, &linode.GetDatabaseEnginesArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("engineIds", pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:3,11-28)))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetDatabaseEnginesArgs;
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
///         final var all = LinodeFunctions.getDatabaseEngines(GetDatabaseEnginesArgs.builder()
///             .build());
///
///         ctx.export("engineIds", all.engines().stream().map(element -> element.id()).collect(toList()));
///     }
/// }
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const mysql = linode.getDatabaseEngines({
///     filters: [{
///         name: "engine",
///         values: ["mysql"],
///     }],
/// });
/// export const engineIds = mysql.then(mysql => mysql.engines.map(__item => __item.id));
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// mysql = linode.get_database_engines(filters=[{
///     "name": "engine",
///     "values": ["mysql"],
/// }])
/// pulumi.export("engineIds", [__item.id for __item in mysql.engines])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mysql = Linode.GetDatabaseEngines.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetDatabaseEnginesFilterInputArgs
///             {
///                 Name = "engine",
///                 Values = new[]
///                 {
///                     "mysql",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["engineIds"] = mysql.Apply(getDatabaseEnginesResult => getDatabaseEnginesResult.Engines).Select(__item => __item.Id).ToList(),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// mysql, err := linode.GetDatabaseEngines(ctx, &linode.GetDatabaseEnginesArgs{
/// Filters: []linode.GetDatabaseEnginesFilter{
/// {
/// Name: "engine",
/// Values: []string{
/// "mysql",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("engineIds", pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:8,11-30)))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetDatabaseEnginesArgs;
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
///         final var mysql = LinodeFunctions.getDatabaseEngines(GetDatabaseEnginesArgs.builder()
///             .filters(GetDatabaseEnginesFilterArgs.builder()
///                 .name("engine")
///                 .values("mysql")
///                 .build())
///             .build());
///
///         ctx.export("engineIds", mysql.engines().stream().map(element -> element.id()).collect(toList()));
///     }
/// }
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const mysql = linode.getDatabaseEngines({
///     latest: true,
///     filters: [{
///         name: "engine",
///         values: ["mysql"],
///     }],
/// });
/// const myDb = new linode.DatabaseMysql("my_db", {
///     label: "mydb",
///     engineId: mysql.then(mysql => mysql.engines?.[0]?.id),
///     region: "us-southeast",
///     type: "g6-nanode-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// mysql = linode.get_database_engines(latest=True,
///     filters=[{
///         "name": "engine",
///         "values": ["mysql"],
///     }])
/// my_db = linode.DatabaseMysql("my_db",
///     label="mydb",
///     engine_id=mysql.engines[0].id,
///     region="us-southeast",
///     type="g6-nanode-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mysql = Linode.GetDatabaseEngines.Invoke(new()
///     {
///         Latest = true,
///         Filters = new[]
///         {
///             new Linode.Inputs.GetDatabaseEnginesFilterInputArgs
///             {
///                 Name = "engine",
///                 Values = new[]
///                 {
///                     "mysql",
///                 },
///             },
///         },
///     });
///
///     var myDb = new Linode.DatabaseMysql("my_db", new()
///     {
///         Label = "mydb",
///         EngineId = mysql.Apply(getDatabaseEnginesResult => getDatabaseEnginesResult.Engines[0]?.Id),
///         Region = "us-southeast",
///         Type = "g6-nanode-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		mysql, err := linode.GetDatabaseEngines(ctx, &linode.GetDatabaseEnginesArgs{
/// 			Latest: pulumi.BoolRef(true),
/// 			Filters: []linode.GetDatabaseEnginesFilter{
/// 				{
/// 					Name: "engine",
/// 					Values: []string{
/// 						"mysql",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewDatabaseMysql(ctx, "my_db", &linode.DatabaseMysqlArgs{
/// 			Label:    pulumi.String("mydb"),
/// 			EngineId: pulumi.String(mysql.Engines[0].Id),
/// 			Region:   pulumi.String("us-southeast"),
/// 			Type:     pulumi.String("g6-nanode-1"),
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetDatabaseEnginesArgs;
/// import com.pulumi.linode.DatabaseMysql;
/// import com.pulumi.linode.DatabaseMysqlArgs;
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
///         final var mysql = LinodeFunctions.getDatabaseEngines(GetDatabaseEnginesArgs.builder()
///             .latest(true)
///             .filters(GetDatabaseEnginesFilterArgs.builder()
///                 .name("engine")
///                 .values("mysql")
///                 .build())
///             .build());
///
///         var myDb = new DatabaseMysql("myDb", DatabaseMysqlArgs.builder()
///             .label("mydb")
///             .engineId(mysql.engines()[0].id())
///             .region("us-southeast")
///             .type("g6-nanode-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myDb:
///     type: linode:DatabaseMysql
///     name: my_db
///     properties:
///       label: mydb
///       engineId: ${mysql.engines[0].id}
///       region: us-southeast
///       type: g6-nanode-1
/// variables:
///   mysql:
///     fn::invoke:
///       function: linode:getDatabaseEngines
///       arguments:
///         latest: true
///         filters:
///           - name: engine
///             values:
///               - mysql
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_database_engines_get_database_engines_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseEnginesResult> getDatabaseEngines(
  GetDatabaseEnginesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getDatabaseEngines:getDatabaseEngines',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseEnginesResult.fromMap(result);
}

/// &gt; **DEPRECATION NOTICE:** This data source has been deprecated. Please use linode.DatabaseMysqlV2 for all future implementations.
///
/// Provides information about a Linode MySQL Database.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-databases-instances).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_db = linode.getDatabaseMysql({
///     id: 12345,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_db = linode.get_database_mysql(id=12345)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_db = Linode.GetDatabaseMysql.Invoke(new()
///     {
///         Id = 12345,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupDatabaseMysql(ctx, &linode.LookupDatabaseMysqlArgs{
/// 			Id: pulumi.IntRef(12345),
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetDatabaseMysqlArgs;
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
///         final var my-db = LinodeFunctions.getDatabaseMysql(GetDatabaseMysqlArgs.builder()
///             .id(12345)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-db:
///     fn::invoke:
///       function: linode:getDatabaseMysql
///       arguments:
///         id: 12345
/// ```
///
///
/// ## updates
///
/// The following arguments are exported by the `updates` specification block:
///
/// * `day_of_week` - The day to perform maintenance. (`monday`, `tuesday`, ...)
///
/// * `duration` - The maximum maintenance window time in hours. (`1`..`3`)
///
/// * `frequency` - Whether maintenance occurs on a weekly or monthly basis. (`weekly`, `monthly`)
///
/// * `hour_of_day` - The hour to begin maintenance based in UTC time. (`0`..`23`)
///
/// * `week_of_month` - The week of the month to perform monthly frequency updates. Required for `monthly` frequency updates. (`1`..`4`)
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_database_mysql_get_database_mysql_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseMysqlResult> getDatabaseMysql(
  GetDatabaseMysqlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getDatabaseMysql:getDatabaseMysql',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseMysqlResult.fromMap(result);
}

/// &gt; **DEPRECATION NOTICE:** This data source has been deprecated.
///
/// Provides information about Linode MySQL Database Backups that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-databases-mysql-instance-backups).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const all_backups = linode.getDatabaseMysqlBackups({
///     databaseId: 12345,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all_backups = linode.get_database_mysql_backups(database_id=12345)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all_backups = Linode.GetDatabaseMysqlBackups.Invoke(new()
///     {
///         DatabaseId = 12345,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetDatabaseMysqlBackups(ctx, &linode.GetDatabaseMysqlBackupsArgs{
/// 			DatabaseId: 12345,
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetDatabaseMysqlBackupsArgs;
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
///         final var all-backups = LinodeFunctions.getDatabaseMysqlBackups(GetDatabaseMysqlBackupsArgs.builder()
///             .databaseId(12345)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all-backups:
///     fn::invoke:
///       function: linode:getDatabaseMysqlBackups
///       arguments:
///         databaseId: 12345
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const auto_backups = linode.getDatabaseMysqlBackups({
///     databaseId: 12345,
///     filters: [{
///         name: "type",
///         values: ["auto"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// auto_backups = linode.get_database_mysql_backups(database_id=12345,
///     filters=[{
///         "name": "type",
///         "values": ["auto"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var auto_backups = Linode.GetDatabaseMysqlBackups.Invoke(new()
///     {
///         DatabaseId = 12345,
///         Filters = new[]
///         {
///             new Linode.Inputs.GetDatabaseMysqlBackupsFilterInputArgs
///             {
///                 Name = "type",
///                 Values = new[]
///                 {
///                     "auto",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetDatabaseMysqlBackups(ctx, &linode.GetDatabaseMysqlBackupsArgs{
/// 			DatabaseId: 12345,
/// 			Filters: []linode.GetDatabaseMysqlBackupsFilter{
/// 				{
/// 					Name: "type",
/// 					Values: []string{
/// 						"auto",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetDatabaseMysqlBackupsArgs;
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
///         final var auto-backups = LinodeFunctions.getDatabaseMysqlBackups(GetDatabaseMysqlBackupsArgs.builder()
///             .databaseId(12345)
///             .filters(GetDatabaseMysqlBackupsFilterArgs.builder()
///                 .name("type")
///                 .values("auto")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   auto-backups:
///     fn::invoke:
///       function: linode:getDatabaseMysqlBackups
///       arguments:
///         databaseId: 12345
///         filters:
///           - name: type
///             values:
///               - auto
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_database_mysql_backups_get_database_mysql_backups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseMysqlBackupsResult> getDatabaseMysqlBackups(
  GetDatabaseMysqlBackupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getDatabaseMysqlBackups:getDatabaseMysqlBackups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseMysqlBackupsResult.fromMap(result);
}

/// Provides information about a Linode MySQL Database's Configuration Options.
/// For more information, see the Linode APIv4 docs.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_db_config = linode.getDatabaseMysqlConfig({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_db_config = linode.get_database_mysql_config()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_db_config = Linode.GetDatabaseMysqlConfig.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetDatabaseMysqlConfig(ctx, map[string]interface{}{}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
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
///         final var my-db-config = LinodeFunctions.getDatabaseMysqlConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-db-config:
///     fn::invoke:
///       function: linode:getDatabaseMysqlConfig
///       arguments: {}
/// ```
///
///
/// ## binlog_retention_period
///
/// The following arguments are supported in the `binlog_retention_period` specification block:
///
/// * `description` - The description of `binlog_retention_period`.
///
/// * `example` - An example of a valid value for `binlog_retention_period`.
///
/// * `maximum` - The maximum valid value of `binlog_retention_period`.
///
/// * `minimum` - The minimum valid value of `binlog_retention_period`.
///
/// * `requires_restart` - Whether changing the value `binlog_retention_period` requires the DB to restart.
///
/// * `type` - The type of the value of `binlog_retention_period`.
///
/// ## mysql
///
/// The following arguments are supported in the `mysql` specification block:
///
/// * `connect_timeout` - The number of seconds that the mysqld server waits for a connect packet before responding with "Bad handshake".
///
/// * `default_time_zone` - Default server time zone as an offset from UTC (from -12:00 to +12:00), a time zone name, or `SYSTEM` to use the MySQL server default.
///
/// * `group_concat_max_len` - The maximum permitted result length in bytes for the `GROUP_CONCAT()` function.
///
/// * `information_schema_stats_expiry` - The time, in seconds, before cached statistics expire.
///
/// * `innodb_change_buffer_max_size` - Maximum size for the InnoDB change buffer, as a percentage of the total size of the buffer pool. Default is 25.
///
/// * `innodb_flush_neighbors` - Specifies whether flushing a page from the InnoDB buffer pool also flushes other dirty pages in the same extent (default is 1): 0 - dirty pages in the same extent are not flushed, 1 - flush contiguous dirty pages in the same extent, 2 - flush dirty pages in the same extent.
///
/// * `innodb_ft_min_token_size` - Minimum length of words that are stored in an InnoDB FULLTEXT index. Changing this parameter will lead to a restart of the MySQL service.
///
/// * `innodb_ft_server_stopword_table` - This option is used to specify your own InnoDB FULLTEXT index stopword list for all InnoDB tables.
///
/// * `innodb_lock_wait_timeout` - The length of time in seconds an InnoDB transaction waits for a row lock before giving up. Default is 120.
///
/// * `innodb_log_buffer_size` - The size in bytes of the buffer that InnoDB uses to write to the log files on disk.
///
/// * `innodb_online_alter_log_max_size` - The upper limit in bytes on the size of the temporary log files used during online DDL operations for InnoDB tables.
///
/// * `innodb_read_io_threads` - The number of I/O threads for read operations in InnoDB. Default is 4. Changing this parameter will lead to a restart of the MySQL service.
///
/// * `innodb_rollback_on_timeout` - When enabled, a transaction timeout causes InnoDB to abort and roll back the entire transaction. Changing this parameter will lead to a restart of the MySQL service.
///
/// * `innodb_thread_concurrency` - Defines the maximum number of threads permitted inside of InnoDB. Default is 0 (infinite concurrency - no limit).
///
/// * `innodb_write_io_threads` - The number of I/O threads for write operations in InnoDB. Default is 4. Changing this parameter will lead to a restart of the MySQL service.
///
/// * `interactive_timeout` - The number of seconds the server waits for activity on an interactive connection before closing it.
///
/// * `internal_tmp_mem_storage_engine` - The storage engine for in-memory internal temporary tables.
///
/// * `max_allowed_packet` - Size of the largest message in bytes that can be received by the server. Default is 67108864 (64M).
///
/// * `max_heap_table_size` - Limits the size of internal in-memory tables. Also set tmp_table_size. Default is 16777216 (16M).
///
/// * `net_buffer_length` - Start sizes of connection buffer and result buffer. Default is 16384 (16K). Changing this parameter will lead to a restart of the MySQL service.
///
/// * `net_read_timeout` - The number of seconds to wait for more data from a connection before aborting the read.
///
/// * `net_write_timeout` - The number of seconds to wait for a block to be written to a connection before aborting the write.
///
/// * `sort_buffer_size` - Sort buffer size in bytes for ORDER BY optimization. Default is 262144 (256K).
///
/// * `sql_mode` - Global SQL mode. Set to empty to use MySQL server defaults. When creating a new service and not setting this field Aiven default SQL mode (strict, SQL standard compliant) will be assigned.
///
/// * `sql_require_primary_key` - Require primary key to be defined for new tables or old tables modified with ALTER TABLE and fail if missing. It is recommended to always have primary keys because various functionality may break if any large table is missing them.
///
/// * `tmp_table_size` - Limits the size of internal in-memory tables. Also set max_heap_table_size. Default is 16777216 (16M).
///
/// * `wait_timeout` - The number of seconds the server waits for activity on a noninteractive connection before closing it.
///
/// ## connect_timeout
///
/// The following arguments are supported in the `connect_timeout` specification block:
///
/// * `description` - The description of `connect_timeout`.
///
/// * `example` - An example of a valid value for `connect_timeout`.
///
/// * `maximum` - The maximum valid value of  `connect_timeout`.
///
/// * `minimum` - The minimum valid value of  `connect_timeout`.
///
/// * `requires_restart` - Whether changing the value `connect_timeout` requires the DB to restart.
///
/// * `type` - The type of the value of `connect_timeout`.
///
/// ## default_time_zone
///
/// The following arguments are supported in the `default_time_zone` specification block:
///
/// * `description` - The description of `default_time_zone`.
///
/// * `example` - An example of a valid value for `default_time_zone`.
///
/// * `maxLength` - The maximum length of the `default_time_zone` value.
///
/// * `minLength` - The minimum length of the `default_time_zone` value.
///
/// * `pattern` - A regular expression that the `default_time_zone` value must match.
///
/// * `requires_restart` - Whether changing the value `default_time_zone` requires the DB to restart.
///
/// * `type` - The type of the value of `default_time_zone`.
///
/// ## group_concat_max_len
///
/// The following arguments are supported in the `group_concat_max_len` specification block:
///
/// * `description` - The description of `group_concat_max_len`.
///
/// * `example` - An example of a valid value for `group_concat_max_len`.
///
/// * `maximum` - The maximum valid value of `group_concat_max_len`.
///
/// * `minimum` - The minimum valid value of `group_concat_max_len`.
///
/// * `requires_restart` - Whether changing the value `group_concat_max_len` requires the DB to restart.
///
/// * `type` - The type of the value of `group_concat_max_len`.
///
/// ## information_schema_stats_expiry
///
/// The following arguments are supported in the `information_schema_stats_expiry` specification block:
///
/// * `description` - The description of `information_schema_stats_expiry`.
///
/// * `example` - An example of a valid value for `information_schema_stats_expiry`.
///
/// * `maximum` - The maximum valid value of `information_schema_stats_expiry`.
///
/// * `minimum` - The minimum valid value of `information_schema_stats_expiry`.
///
/// * `requires_restart` - Whether changing the value `information_schema_stats_expiry` requires the DB to restart.
///
/// * `type` - The type of the value of `information_schema_stats_expiry`.
///
/// ## innodb_change_buffer_max_size
///
/// The following arguments are supported in the `innodb_change_buffer_max_size` specification block:
///
/// * `description` - The description of `innodb_change_buffer_max_size`.
///
/// * `example` - An example of a valid value for `innodb_change_buffer_max_size`.
///
/// * `maximum` - The maximum valid value of `innodb_change_buffer_max_size`.
///
/// * `minimum` - The minimum valid value of `innodb_change_buffer_max_size`.
///
/// * `requires_restart` - Whether changing the value `innodb_change_buffer_max_size` requires the DB to restart.
///
/// * `type` - The type of the value of `innodb_change_buffer_max_size`.
///
/// ## innodb_flush_neighbors
///
/// The following arguments are supported in the `innodb_flush_neighbors` specification block:
///
/// * `description` - The description of `innodb_flush_neighbors`.
///
/// * `example` - An example of a valid value for `innodb_flush_neighbors`.
///
/// * `maximum` - The maximum valid value of `innodb_flush_neighbors`.
///
/// * `minimum` - The minimum valid value of `innodb_flush_neighbors`.
///
/// * `requires_restart` - Whether changing the value `innodb_flush_neighbors` requires the DB to restart.
///
/// * `type` - The type of the value of `innodb_flush_neighbors`.
///
/// ## innodb_ft_min_token_size
///
/// The following arguments are supported in the `innodb_ft_min_token_size` specification block:
///
/// * `description` - The description of `innodb_ft_min_token_size`.
///
/// * `example` - An example of a valid value for `innodb_ft_min_token_size`.
///
/// * `maximum` - The maximum valid value of `innodb_ft_min_token_size`.
///
/// * `minimum` - The minimum valid value of `innodb_ft_min_token_size`.
///
/// * `requires_restart` - Whether changing the value `innodb_ft_min_token_size` requires the DB to restart.
///
/// * `type` - The type of the value of `innodb_ft_min_token_size`.
///
/// ## innodb_ft_server_stopword_table
///
/// The following arguments are supported in the `innodb_ft_server_stopword_table` specification block:
///
/// * `description` - The description of `innodb_ft_server_stopword_table`.
///
/// * `example` - An example of a valid value for `innodb_ft_server_stopword_table`.
///
/// * `maxLength` - The maximum length of the value for `innodb_ft_server_stopword_table`.
///
/// * `pattern` - A regex pattern that a value of `innodb_ft_server_stopword_table` must match.
///
/// * `requires_restart` - Whether changing the value `innodb_ft_server_stopword_table` requires the DB to restart.
///
/// * `type` - The type of the value of `innodb_ft_server_stopword_table`.
///
/// ## innodb_lock_wait_timeout
///
/// The following arguments are supported in the `innodb_lock_wait_timeout` specification block:
///
/// * `description` - The description of `innodb_lock_wait_timeout`.
///
/// * `example` - An example of a valid value for `innodb_lock_wait_timeout`.
///
/// * `maximum` - The maximum valid value of `innodb_lock_wait_timeout`.
///
/// * `minimum` - The minimum valid value of `innodb_lock_wait_timeout`.
///
/// * `requires_restart` - Whether changing the value `innodb_lock_wait_timeout` requires the DB to restart.
///
/// * `type` - The type of the value of `innodb_lock_wait_timeout`.
///
/// ## innodb_log_buffer_size
///
/// The following arguments are supported in the `innodb_log_buffer_size` specification block:
///
/// * `description` - The description of `innodb_log_buffer_size`.
///
/// * `example` - An example of a valid value for `innodb_log_buffer_size`.
///
/// * `maximum` - The maximum valid value of `innodb_log_buffer_size`.
///
/// * `minimum` - The minimum valid value of `innodb_log_buffer_size`.
///
/// * `requires_restart` - Whether changing the value `innodb_log_buffer_size` requires the DB to restart.
///
/// * `type` - The type of the value of `innodb_log_buffer_size`.
///
/// ## innodb_online_alter_log_max_size
///
/// The following arguments are supported in the `innodb_online_alter_log_max_size` specification block:
///
/// * `description` - The description of `innodb_online_alter_log_max_size`.
///
/// * `example` - An example of a valid value for `innodb_online_alter_log_max_size`.
///
/// * `maximum` - The maximum valid value of `innodb_online_alter_log_max_size`.
///
/// * `minimum` - The minimum valid value of `innodb_online_alter_log_max_size`.
///
/// * `requires_restart` - Whether changing the value `innodb_online_alter_log_max_size` requires the DB to restart.
///
/// * `type` - The type of the value of `innodb_online_alter_log_max_size`.
///
/// ## innodb_read_io_threads
///
/// The following arguments are supported in the `innodb_read_io_threads` specification block:
///
/// * `description` - The description of `innodb_read_io_threads`.
///
/// * `example` - An example of a valid value for `innodb_read_io_threads`.
///
/// * `maximum` - The maximum valid value of `innodb_read_io_threads`.
///
/// * `minimum` - The minimum valid value of `innodb_read_io_threads`.
///
/// * `requires_restart` - Whether changing the value `innodb_read_io_threads` requires the DB to restart.
///
/// * `type` - The type of the value of `innodb_read_io_threads`.
///
/// ## innodb_rollback_on_timeout
///
/// The following arguments are supported in the `innodb_rollback_on_timeout` specification block:
///
/// * `description` - The description of `innodb_rollback_on_timeout`.
///
/// * `example` - An example of a valid value for `innodb_rollback_on_timeout`.
///
/// * `requires_restart` - Whether changing the value `innodb_rollback_on_timeout` requires the DB to restart.
///
/// * `type` - The type of the value of `innodb_rollback_on_timeout`.
///
/// ## innodb_thread_concurrency
///
/// The following arguments are supported in the `innodb_thread_concurrency` specification block:
///
/// * `description` - The description of `innodb_thread_concurrency`.
///
/// * `example` - An example of a valid value for `innodb_thread_concurrency`.
///
/// * `maximum` - The maximum valid value of `innodb_thread_concurrency`.
///
/// * `minimum` - The minimum valid value of `innodb_thread_concurrency`.
///
/// * `requires_restart` - Whether changing the value `innodb_thread_concurrency` requires the DB to restart.
///
/// * `type` - The type of the value of `innodb_thread_concurrency`.
///
/// ## innodb_write_io_threads
///
/// The following arguments are supported in the `innodb_write_io_threads` specification block:
///
/// * `description` - The description of `innodb_write_io_threads`.
///
/// * `example` - An example of a valid value for `innodb_write_io_threads`.
///
/// * `maximum` - The maximum valid value of `innodb_write_io_threads`.
///
/// * `minimum` - The minimum valid value of `innodb_write_io_threads`.
///
/// * `requires_restart` - Whether changing the value `innodb_write_io_threads` requires the DB to restart.
///
/// * `type` - The type of the value of `innodb_write_io_threads`.
///
/// ## interactive_timeout
///
/// The following arguments are supported in the `interactive_timeout` specification block:
///
/// * `description` - The description of `interactive_timeout`.
///
/// * `example` - An example of a valid value for `interactive_timeout`.
///
/// * `maximum` - The maximum valid value of `interactive_timeout`.
///
/// * `minimum` - The minimum valid value of `interactive_timeout`.
///
/// * `requires_restart` - Whether changing the value `interactive_timeout` requires the DB to restart.
///
/// * `type` - The type of the value of `interactive_timeout`.
///
/// ## internal_tmp_mem_storage_engine
///
/// The following arguments are supported in the `internal_tmp_mem_storage_engine` specification block:
///
/// * `description` - The description of `internal_tmp_mem_storage_engine`.
///
/// * `enum` - A list of valid enum values for `internal_tmp_mem_storage_engine`.
///
/// * `example` - An example of a valid value for `internal_tmp_mem_storage_engine`.
///
/// * `requires_restart` - Whether changing the value `internal_tmp_mem_storage_engine` requires the DB to restart.
///
/// * `type` - The type of the value of `internal_tmp_mem_storage_engine`.
///
/// ## max_allowed_packet
///
/// The following arguments are supported in the `max_allowed_packet` specification block:
///
/// * `description` - The description of `max_allowed_packet`.
///
/// * `example` - An example of a valid value for `max_allowed_packet`.
///
/// * `maximum` - The maximum valid value of `max_allowed_packet`.
///
/// * `minimum` - The minimum valid value of `max_allowed_packet`.
///
/// * `requires_restart` - Whether changing the value `max_allowed_packet` requires the DB to restart.
///
/// * `type` - The type of the value of `max_allowed_packet`.
///
/// ## max_heap_table_size
///
/// The following arguments are supported in the `max_heap_table_size` specification block:
///
/// * `description` - The description of `max_heap_table_size`.
///
/// * `example` - An example of a valid value for `max_heap_table_size`.
///
/// * `maximum` - The maximum valid value of `max_heap_table_size`.
///
/// * `minimum` - The minimum valid value of `max_heap_table_size`.
///
/// * `requires_restart` - Whether changing the value `max_heap_table_size` requires the DB to restart.
///
/// * `type` - The type of the value of `max_heap_table_size`.
///
/// ## net_buffer_length
///
/// The following arguments are supported in the `net_buffer_length` specification block:
///
/// * `description` - The description of `net_buffer_length`.
///
/// * `example` - An example of a valid value for `net_buffer_length`.
///
/// * `maximum` - The maximum valid value of `net_buffer_length`.
///
/// * `minimum` - The minimum valid value of `net_buffer_length`.
///
/// * `requires_restart` - Whether changing the value `net_buffer_length` requires the DB to restart.
///
/// * `type` - The type of the value of `net_buffer_length`.
///
/// ## net_read_timeout
///
/// The following arguments are supported in the `net_read_timeout` specification block:
///
/// * `description` - The description of `net_read_timeout`.
///
/// * `example` - An example of a valid value for `net_read_timeout`.
///
/// * `maximum` - The maximum valid value of `net_read_timeout`.
///
/// * `minimum` - The minimum valid value of `net_read_timeout`.
///
/// * `requires_restart` - Whether changing the value `net_read_timeout` requires the DB to restart.
///
/// * `type` - The type of the value of `net_read_timeout`.
///
/// ## net_write_timeout
///
/// The following arguments are supported in the `net_write_timeout` specification block:
///
/// * `description` - The description of `net_write_timeout`.
///
/// * `example` - An example of a valid value for `net_write_timeout`.
///
/// * `maximum` - The maximum valid value of `net_write_timeout`.
///
/// * `minimum` - The minimum valid value of `net_write_timeout`.
///
/// * `requires_restart` - Whether changing the value `net_write_timeout` requires the DB to restart.
///
/// * `type` - The type of the value of `net_write_timeout`.
///
/// ## sort_buffer_size
///
/// The following arguments are supported in the `sort_buffer_size` specification block:
///
/// * `description` - The description of `sort_buffer_size`.
///
/// * `example` - An example of a valid value for `sort_buffer_size`.
///
/// * `maximum` - The maximum valid value of `sort_buffer_size`.
///
/// * `minimum` - The minimum valid value of `sort_buffer_size`.
///
/// * `requires_restart` - Whether changing the value `sort_buffer_size` requires the DB to restart.
///
/// * `type` - The type of the value of `sort_buffer_size`.
///
/// ## sql_mode
///
/// The following arguments are supported in the `sql_mode` specification block:
///
/// * `description` - The description of `sql_mode`.
///
/// * `example` - An example of a valid value for `sql_mode`.
///
/// * `maxLength` - The maximum valid length of `sql_mode`.
///
/// * `pattern` - The pattern to match for `sql_mode`.
///
/// * `requires_restart` - Whether changing the value `sql_mode` requires the DB to restart.
///
/// * `type` - The type of the value of `sql_mode`.
///
/// ## sql_require_primary_key
///
/// The following arguments are supported in the `sql_require_primary_key` specification block:
///
/// * `description` - The description of `sql_require_primary_key`.
///
/// * `example` - An example of a valid value for `sql_require_primary_key`.
///
/// * `requires_restart` - Whether changing the value `sql_require_primary_key` requires the DB to restart.
///
/// * `type` - The type of the value of `sql_require_primary_key`.
///
/// ## tmp_table_size
///
/// The following arguments are supported in the `tmp_table_size` specification block:
///
/// * `description` - The description of `tmp_table_size`.
///
/// * `example` - An example of a valid value for `tmp_table_size`.
///
/// * `maximum` - The maximum valid value of `tmp_table_size`.
///
/// * `minimum` - The minimum valid value of `tmp_table_size`.
///
/// * `requires_restart` - Whether changing the value `tmp_table_size` requires the DB to restart.
///
/// * `type` - The type of the value of `tmp_table_size`.
///
/// ## wait_timeout
///
/// The following arguments are supported in the `wait_timeout` specification block:
///
/// * `description` - The description of `wait_timeout`.
///
/// * `example` - An example of a valid value for `wait_timeout`.
///
/// * `maximum` - The maximum valid value of `wait_timeout`.
///
/// * `minimum` - The minimum valid value of `wait_timeout`.
///
/// * `requires_restart` - Whether changing the value `wait_timeout` requires the DB to restart.
///
/// * `type` - The type of the value of `wait_timeout`.
/// [options] Invoke options controlling this call.
Future<GetDatabaseMysqlConfigResult> getDatabaseMysqlConfig(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getDatabaseMysqlConfig:getDatabaseMysqlConfig',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseMysqlConfigResult.fromMap(result);
}

/// Provides information about a Linode MySQL Database.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-databases-mysql-instance).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_db = linode.getDatabaseMysqlV2({
///     id: "12345",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_db = linode.get_database_mysql_v2(id="12345")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_db = Linode.GetDatabaseMysqlV2.Invoke(new()
///     {
///         Id = "12345",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupDatabaseMysqlV2(ctx, &linode.LookupDatabaseMysqlV2Args{
/// 			Id: "12345",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetDatabaseMysqlV2Args;
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
///         final var my-db = LinodeFunctions.getDatabaseMysqlV2(GetDatabaseMysqlV2Args.builder()
///             .id("12345")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-db:
///     fn::invoke:
///       function: linode:getDatabaseMysqlV2
///       arguments:
///         id: 12345
/// ```
///
///
/// ## pending_updates
///
/// The following arguments are exposed by each entry in the `pending_updates` attribute:
///
/// * `deadline` - The time when a mandatory update needs to be applied.
///
/// * `description` - A description of the update.
///
/// * `planned_for` - The date and time a maintenance update will be applied.
///
/// ## updates
///
/// The following arguments are supported in the `updates` specification block:
///
/// * `day_of_week` - The day to perform maintenance. (`monday`, `tuesday`, ...)
///
/// * `duration` - The maximum maintenance window time in hours. (`1`..`3`)
///
/// * `frequency` - The frequency at which maintenance occurs. (`weekly`)
///
/// * `hour_of_day` - The hour to begin maintenance based in UTC time. (`0`..`23`)
///
/// ## private_network
///
/// The following arguments are exposed by the `private_network` attribute:
///
/// * `vpc_id` - The ID of the virtual private cloud (VPC) to restrict access to this database using.
///
/// * `subnet_id` - The ID of the VPC subnet to restrict access to this database using.
///
/// * `public_access` - If true, clients outside the VPC can connect to the database using a public IP address.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_database_mysql_v2_get_database_mysql_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseMysqlV2Result> getDatabaseMysqlV2(
  GetDatabaseMysqlV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getDatabaseMysqlV2:getDatabaseMysqlV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseMysqlV2Result.fromMap(result);
}

/// &gt; **DEPRECATION NOTICE:** This data source has been deprecated. Please use linode.DatabasePostgresqlV2 for all future implementations.
///
/// Provides information about a Linode PostgreSQL Database.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-databases-postgre-sql-instance-backups).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_db = linode.getDatabasePostgresql({
///     id: 12345,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_db = linode.get_database_postgresql(id=12345)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_db = Linode.GetDatabasePostgresql.Invoke(new()
///     {
///         Id = 12345,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupDatabasePostgresql(ctx, &linode.LookupDatabasePostgresqlArgs{
/// 			Id: pulumi.IntRef(12345),
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetDatabasePostgresqlArgs;
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
///         final var my-db = LinodeFunctions.getDatabasePostgresql(GetDatabasePostgresqlArgs.builder()
///             .id(12345)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-db:
///     fn::invoke:
///       function: linode:getDatabasePostgresql
///       arguments:
///         id: 12345
/// ```
///
///
/// ## updates
///
/// The following arguments are exported by the `updates` specification block:
///
/// * `day_of_week` - The day to perform maintenance. (`monday`, `tuesday`, ...)
///
/// * `duration` - The maximum maintenance window time in hours. (`1`..`3`)
///
/// * `frequency` - Whether maintenance occurs on a weekly or monthly basis. (`weekly`, `monthly`)
///
/// * `hour_of_day` - The hour to begin maintenance based in UTC time. (`0`..`23`)
///
/// * `week_of_month` - The week of the month to perform monthly frequency updates. Required for `monthly` frequency updates. (`1`..`4`)
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_database_postgresql_get_database_postgresql_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabasePostgresqlResult> getDatabasePostgresql(
  GetDatabasePostgresqlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getDatabasePostgresql:getDatabasePostgresql',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabasePostgresqlResult.fromMap(result);
}

/// Provides information about a Linode PostgreSQL Database's Configuration Options.
/// For more information, see the Linode APIv4 docs.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_db_config = linode.getDatabasePostgresqlConfig({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_db_config = linode.get_database_postgresql_config()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_db_config = Linode.GetDatabasePostgresqlConfig.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetDatabasePostgresqlConfig(ctx, map[string]interface{}{}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
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
///         final var my-db-config = LinodeFunctions.getDatabasePostgresqlConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-db-config:
///     fn::invoke:
///       function: linode:getDatabasePostgresqlConfig
///       arguments: {}
/// ```
///
///
/// ## pg_stat_monitor_enable
///
/// The following arguments are supported in the `pg_stat_monitor_enable` specification block:
///
/// * `description` - The description of `pg_stat_monitor_enable`.
///
/// * `requires_restart` - Whether changing the value `pg_stat_monitor_enable` requires the DB to restart.
///
/// * `type` - The type of the value of `pg_stat_monitor_enable`.
///
/// ## pglookout
///
/// The following arguments are supported in the `pglookout` specification block:
///
/// * `max_failover_replication_time_lag` - The maximum failover replication time lag for `pglookout`.
///
/// ## max_failover_replication_time_lag
///
/// The following arguments are supported in the `max_failover_replication_time_lag` specification block:
///
/// * `description` - The description of `max_failover_replication_time_lag`.
///
/// * `maximum` - The maximum valid value for `max_failover_replication_time_lag`.
///
/// * `minimum` - The minimum valid value for `max_failover_replication_time_lag`.
///
/// * `requires_restart` - Whether changing the value of `max_failover_replication_time_lag` requires the DB to restart.
///
/// * `type` - The type of the value of `max_failover_replication_time_lag`.
///
/// ## shared_buffers_percentage
///
/// The following arguments are supported in the `shared_buffers_percentage` specification block:
///
/// * `description` - The description of `shared_buffers_percentage`.
///
/// * `example` - An example of a valid value for `shared_buffers_percentage`.
///
/// * `maximum` - The maximum valid value for `shared_buffers_percentage`.
///
/// * `minimum` - The minimum valid value for `shared_buffers_percentage`.
///
/// * `requires_restart` - Whether changing the value of `shared_buffers_percentage` requires the DB to restart.
///
/// * `type` - The type of the value of `shared_buffers_percentage`.
///
/// ## work_mem
///
/// The following arguments are supported in the `work_mem` specification block:
///
/// * `description` - The description of `work_mem`.
///
/// * `example` - An example of a valid value for `work_mem`.
///
/// * `maximum` - The maximum valid value for `work_mem`.
///
/// * `minimum` - The minimum valid value for `work_mem`.
///
/// * `requires_restart` - Whether changing the value of `work_mem` requires the DB to restart.
///
/// * `type` - The type of the value of `work_mem`.
///
/// ## pg
///
/// The following arguments are supported in the `pg` specification block:
///
/// * `autovacuum_analyze_scale_factor` - (Optional) Specifies a fraction of the table size to add to autovacuum_analyze_threshold when deciding whether to trigger an ANALYZE. The default is 0.2 (20% of table size)
///
/// * `autovacuum_analyze_threshold` - (Optional) Specifies the minimum number of inserted, updated or deleted tuples needed to trigger an ANALYZE in any one table. The default is 50 tuples.
///
/// * `autovacuum_max_workers` - (Optional) Specifies the maximum number of autovacuum processes (other than the autovacuum launcher) that may be running at any one time. The default is three. This parameter can only be set at server start.
///
/// * `autovacuum_naptime` - (Optional) Specifies the minimum delay between autovacuum runs on any given database. The delay is measured in seconds, and the default is one minute
///
/// * `autovacuum_vacuum_cost_delay` - (Optional) Specifies the cost delay value that will be used in automatic VACUUM operations. If -1 is specified, the regular vacuum_cost_delay value will be used. The default value is 20 milliseconds
///
/// * `autovacuum_vacuum_cost_limit` - (Optional) Specifies the cost limit value that will be used in automatic VACUUM operations. If -1 is specified (which is the default), the regular vacuum_cost_limit value will be used.
///
/// * `autovacuum_vacuum_scale_factor` - (Optional) Specifies a fraction of the table size to add to autovacuum_vacuum_threshold when deciding whether to trigger a VACUUM. The default is 0.2 (20% of table size)
///
/// * `autovacuum_vacuum_threshold` - (Optional) Specifies the minimum number of updated or deleted tuples needed to trigger a VACUUM in any one table. The default is 50 tuples.
///
/// * `bgwriter_delay` - (Optional) Specifies the delay between activity rounds for the background writer in milliseconds. Default is 200.
///
/// * `bgwriter_flush_after` - (Optional) Whenever more than bgwriter_flush_after bytes have been written by the background writer, attempt to force the OS to issue these writes to the underlying storage. Specified in kilobytes, default is 512. Setting of 0 disables forced writeback.
///
/// * `bgwriter_lru_maxpages` - (Optional) In each round, no more than this many buffers will be written by the background writer. Setting this to zero disables background writing. Default is 100.
///
/// * `bgwriter_lru_multiplier` - (Optional) The average recent need for new buffers is multiplied by bgwriter_lru_multiplier to arrive at an estimate of the number that will be needed during the next round, (up to bgwriter_lru_maxpages). 1.0 represents a “just in time” policy of writing exactly the number of buffers predicted to be needed. Larger values provide some cushion against spikes in demand, while smaller values intentionally leave writes to be done by server processes. The default is 2.0.
///
/// * `deadlock_timeout` - (Optional) This is the amount of time, in milliseconds, to wait on a lock before checking to see if there is a deadlock condition.
///
/// * `default_toast_compression` - (Optional) Specifies the default TOAST compression method for values of compressible columns (the default is lz4).
///
/// * `idle_in_transaction_session_timeout` - (Optional) Time out sessions with open transactions after this number of milliseconds.
///
/// * `jit` - (Optional) Controls system-wide use of Just-in-Time Compilation (JIT).
///
/// * `max_files_per_process` - (Optional) PostgreSQL maximum number of files that can be open per process.
///
/// * `max_locks_per_transaction` - (Optional) PostgreSQL maximum locks per transaction.
///
/// * `max_logical_replication_workers` - (Optional) PostgreSQL maximum logical replication workers (taken from the pool of max_parallel_workers).
///
/// * `max_parallel_workers` - (Optional) Sets the maximum number of workers that the system can support for parallel queries.
///
/// * `max_parallel_workers_per_gather` - (Optional) Sets the maximum number of workers that can be started by a single Gather or Gather Merge node.
///
/// * `max_pred_locks_per_transaction` - (Optional) PostgreSQL maximum predicate locks per transaction.
///
/// * `max_replication_slots` - (Optional) PostgreSQL maximum replication slots.
///
/// * `max_slot_wal_keep_size` - (Optional) PostgreSQL maximum WAL size (MB) reserved for replication slots. Default is -1 (unlimited). wal_keep_size minimum WAL size setting takes precedence over this.
///
/// * `max_stack_depth` - (Optional) Maximum depth of the stack in bytes.
///
/// * `max_standby_archive_delay` - (Optional) Max standby archive delay in milliseconds.
///
/// * `max_standby_streaming_delay` - (Optional) Max standby streaming delay in milliseconds.
///
/// * `max_wal_senders` - (Optional) PostgreSQL maximum WAL senders.
///
/// * `max_worker_processes` - (Optional) Sets the maximum number of background processes that the system can support.
///
/// * `password_encryption` - (Optional) Chooses the algorithm for encrypting passwords.
///
/// * `pg_partman_bgw.interval` - (Optional) Sets the time interval to run pg_partman's scheduled tasks.
///
/// * `pg_partman_bgw.role` - (Optional) Controls which role to use for pg_partman's scheduled background tasks.
///
/// * `pg_stat_monitor.pgsm_enable_query_plan` - (Optional) Enables or disables query plan monitoring.
///
/// * `pg_stat_monitor.pgsm_max_buckets` - (Optional) Sets the maximum number of buckets.
///
/// * `pg_stat_statements.track` - (Optional) Controls which statements are counted. Specify top to track top-level statements (those issued directly by clients), all to also track nested statements (such as statements invoked within functions), or none to disable statement statistics collection. The default value is top.
///
/// * `temp_file_limit` - (Optional) PostgreSQL temporary file limit in KiB, -1 for unlimited.
///
/// * `timezone` - (Optional) PostgreSQL service timezone.
///
/// * `track_activity_query_size` - (Optional) Specifies the number of bytes reserved to track the currently executing command for each active session.
///
/// * `track_commit_timestamp` - (Optional) Record commit time of transactions.
///
/// * `track_functions` - (Optional) Enables tracking of function call counts and time used.
///
/// * `track_io_timing` - (Optional) Enables timing of database I/O calls. This parameter is off by default, because it will repeatedly query the operating system for the current time, which may cause significant overhead on some platforms.
///
/// * `wal_sender_timeout` - (Optional) Terminate replication connections that are inactive for longer than this amount of time, in milliseconds. Setting this value to zero disables the timeout.
///
/// * `wal_writer_delay` - (Optional) WAL flush interval in milliseconds. Note that setting this value to lower than the default 200ms may negatively impact performance.
///
/// ## autovacuum_analyze_scale_factor
///
/// The following arguments are supported in the `autovacuum_analyze_scale_factor` specification block:
///
/// * `description` - The description of `autovacuum_analyze_scale_factor`.
///
/// * `maximum` - The maximum valid value for `autovacuum_analyze_scale_factor`.
///
/// * `minimum` - The minimum valid value for `autovacuum_analyze_scale_factor`.
///
/// * `requires_restart` - Whether changing the value of `autovacuum_analyze_scale_factor` requires the DB to restart.
///
/// * `type` - The type of the value of `autovacuum_analyze_scale_factor`.
///
/// ## autovacuum_analyze_threshold
///
/// The following arguments are supported in the `autovacuum_analyze_threshold` specification block:
///
/// * `description` - The description of `autovacuum_analyze_threshold`.
///
/// * `maximum` - The maximum valid value for `autovacuum_analyze_threshold`.
///
/// * `minimum` - The minimum valid value for `autovacuum_analyze_threshold`.
///
/// * `requires_restart` - Whether changing the value of `autovacuum_analyze_threshold` requires the DB to restart.
///
/// * `type` - The type of the value of `autovacuum_analyze_threshold`.
///
/// ## autovacuum_max_workers
///
/// The following arguments are supported in the `autovacuum_max_workers` specification block:
///
/// * `description` - The description of `autovacuum_max_workers`.
///
/// * `maximum` - The maximum valid value for `autovacuum_max_workers`.
///
/// * `minimum` - The minimum valid value for `autovacuum_max_workers`.
///
/// * `requires_restart` - Whether changing the value of `autovacuum_max_workers` requires the DB to restart.
///
/// * `type` - The type of the value of `autovacuum_max_workers`.
///
/// ## autovacuum_naptime
///
/// The following arguments are supported in the `autovacuum_naptime` specification block:
///
/// * `description` - The description of `autovacuum_naptime`.
///
/// * `maximum` - The maximum valid value for `autovacuum_naptime`.
///
/// * `minimum` - The minimum valid value for `autovacuum_naptime`.
///
/// * `requires_restart` - Whether changing the value of `autovacuum_naptime` requires the DB to restart.
///
/// * `type` - The type of the value of `autovacuum_naptime`.
///
/// ## autovacuum_vacuum_cost_delay
///
/// The following arguments are supported in the `autovacuum_vacuum_cost_delay` specification block:
///
/// * `description` - The description of `autovacuum_vacuum_cost_delay`.
///
/// * `maximum` - The maximum valid value for `autovacuum_vacuum_cost_delay`.
///
/// * `minimum` - The minimum valid value for `autovacuum_vacuum_cost_delay`.
///
/// * `requires_restart` - Whether changing the value of `autovacuum_vacuum_cost_delay` requires the DB to restart.
///
/// * `type` - The type of the value of `autovacuum_vacuum_cost_delay`.
///
/// ## autovacuum_vacuum_cost_limit
///
/// The following arguments are supported in the `autovacuum_vacuum_cost_limit` specification block:
///
/// * `description` - The description of `autovacuum_vacuum_cost_limit`.
///
/// * `maximum` - The maximum valid value for `autovacuum_vacuum_cost_limit`.
///
/// * `minimum` - The minimum valid value for `autovacuum_vacuum_cost_limit`.
///
/// * `requires_restart` - Whether changing the value of `autovacuum_vacuum_cost_limit` requires the DB to restart.
///
/// * `type` - The type of the value of `autovacuum_vacuum_cost_limit`.
///
/// ## autovacuum_vacuum_scale_factor
///
/// The following arguments are supported in the `autovacuum_vacuum_scale_factor` specification block:
///
/// * `description` - The description of `autovacuum_vacuum_scale_factor`.
///
/// * `maximum` - The maximum valid value for `autovacuum_vacuum_scale_factor`.
///
/// * `minimum` - The minimum valid value for `autovacuum_vacuum_scale_factor`.
///
/// * `requires_restart` - Whether changing the value of `autovacuum_vacuum_scale_factor` requires the DB to restart.
///
/// * `type` - The type of the value of `autovacuum_vacuum_scale_factor`.
///
/// ## autovacuum_vacuum_threshold
///
/// The following arguments are supported in the `autovacuum_vacuum_threshold` specification block:
///
/// * `description` - The description of `autovacuum_vacuum_threshold`.
///
/// * `maximum` - The maximum valid value for `autovacuum_vacuum_threshold`.
///
/// * `minimum` - The minimum valid value for `autovacuum_vacuum_threshold`.
///
/// * `requires_restart` - Whether changing the value of `autovacuum_vacuum_threshold` requires the DB to restart.
///
/// * `type` - The type of the value of `autovacuum_vacuum_threshold`.
///
/// ## bgwriter_delay
///
/// The following arguments are supported in the `bgwriter_delay` specification block:
///
/// * `description` - The description of `bgwriter_delay`.
///
/// * `example` - An example of a valid value for `bgwriter_delay`.
///
/// * `maximum` - The maximum valid value for `bgwriter_delay`.
///
/// * `minimum` - The minimum valid value for `bgwriter_delay`.
///
/// * `requires_restart` - Whether changing the value of `bgwriter_delay` requires the DB to restart.
///
/// * `type` - The type of the value of `bgwriter_delay`.
///
/// ## bgwriter_flush_after
///
/// The following arguments are supported in the `bgwriter_flush_after` specification block:
///
/// * `description` - The description of `bgwriter_flush_after`.
///
/// * `example` - An example of a valid value for `bgwriter_flush_after`.
///
/// * `maximum` - The maximum valid value for `bgwriter_flush_after`.
///
/// * `minimum` - The minimum valid value for `bgwriter_flush_after`.
///
/// * `requires_restart` - Whether changing the value of `bgwriter_flush_after` requires the DB to restart.
///
/// * `type` - The type of the value of `bgwriter_flush_after`.
///
/// ## bgwriter_lru_maxpages
///
/// The following arguments are supported in the `bgwriter_lru_maxpages` specification block:
///
/// * `description` - The description of `bgwriter_lru_maxpages`.
///
/// * `example` - An example of a valid value for `bgwriter_lru_maxpages`.
///
/// * `maximum` - The maximum valid value for `bgwriter_lru_maxpages`.
///
/// * `minimum` - The minimum valid value for `bgwriter_lru_maxpages`.
///
/// * `requires_restart` - Whether changing the value of `bgwriter_lru_maxpages` requires the DB to restart.
///
/// * `type` - The type of the value of `bgwriter_lru_maxpages`.
///
/// ## bgwriter_lru_multiplier
///
/// The following arguments are supported in the `bgwriter_lru_multiplier` specification block:
///
/// * `description` - The description of `bgwriter_lru_multiplier`.
///
/// * `example` - An example of a valid value for `bgwriter_lru_multiplier`.
///
/// * `maximum` - The maximum valid value for `bgwriter_lru_multiplier`.
///
/// * `minimum` - The minimum valid value for `bgwriter_lru_multiplier`.
///
/// * `requires_restart` - Whether changing the value of `bgwriter_lru_multiplier` requires the DB to restart.
///
/// * `type` - The type of the value of `bgwriter_lru_multiplier`.
///
/// ## deadlock_timeout
///
/// The following arguments are supported in the `deadlock_timeout` specification block:
///
/// * `description` - The description of `deadlock_timeout`.
///
/// * `example` - An example of a valid value for `deadlock_timeout`.
///
/// * `maximum` - The maximum valid value for `deadlock_timeout`.
///
/// * `minimum` - The minimum valid value for `deadlock_timeout`.
///
/// * `requires_restart` - Whether changing the value of `deadlock_timeout` requires the DB to restart.
///
/// * `type` - The type of the value of `deadlock_timeout`.
///
/// ## default_toast_compression
///
/// The following arguments are supported in the `default_toast_compression` specification block:
///
/// * `description` - The description of `default_toast_compression`.
///
/// * `enum` - A list of valid compression methods for `default_toast_compression`.
///
/// * `example` - An example of a valid value for `default_toast_compression`.
///
/// * `requires_restart` - Whether changing the value of `default_toast_compression` requires the DB to restart.
///
/// * `type` - The type of the value of `default_toast_compression`.
///
/// ## idle_in_transaction_session_timeout
///
/// The following arguments are supported in the `idle_in_transaction_session_timeout` specification block:
///
/// * `description` - The description of `idle_in_transaction_session_timeout`.
///
/// * `maximum` - The maximum valid value for `idle_in_transaction_session_timeout`.
///
/// * `minimum` - The minimum valid value for `idle_in_transaction_session_timeout`.
///
/// * `requires_restart` - Whether changing the value of `idle_in_transaction_session_timeout` requires the DB to restart.
///
/// * `type` - The type of the value of `idle_in_transaction_session_timeout`.
///
/// ## jit
///
/// The following arguments are supported in the `jit` specification block:
///
/// * `description` - The description of `jit`.
///
/// * `example` - An example of a valid value for `jit`.
///
/// * `requires_restart` - Whether changing the value of `jit` requires the DB to restart.
///
/// * `type` - The type of the value of `jit`.
///
/// ## max_files_per_process
///
/// The following arguments are supported in the `max_files_per_process` specification block:
///
/// * `description` - The description of `max_files_per_process`.
///
/// * `maximum` - The maximum valid value for `max_files_per_process`.
///
/// * `minimum` - The minimum valid value for `max_files_per_process`.
///
/// * `requires_restart` - Whether changing the value of `max_files_per_process` requires the DB to restart.
///
/// * `type` - The type of the value of `max_files_per_process`.
///
/// ## max_locks_per_transaction
///
/// The following arguments are supported in the `max_locks_per_transaction` specification block:
///
/// * `description` - The description of `max_locks_per_transaction`.
///
/// * `maximum` - The maximum valid value for `max_locks_per_transaction`.
///
/// * `minimum` - The minimum valid value for `max_locks_per_transaction`.
///
/// * `requires_restart` - Whether changing the value of `max_locks_per_transaction` requires the DB to restart.
///
/// * `type` - The type of the value of `max_locks_per_transaction`.
///
/// ## max_logical_replication_workers
///
/// The following arguments are supported in the `max_logical_replication_workers` specification block:
///
/// * `description` - The description of `max_logical_replication_workers`.
///
/// * `maximum` - The maximum valid value for `max_logical_replication_workers`.
///
/// * `minimum` - The minimum valid value for `max_logical_replication_workers`.
///
/// * `requires_restart` - Whether changing the value of `max_logical_replication_workers` requires the DB to restart.
///
/// * `type` - The type of the value of `max_logical_replication_workers`.
///
/// ## max_parallel_workers
///
/// The following arguments are supported in the `max_parallel_workers` specification block:
///
/// * `description` - The description of `max_parallel_workers`.
///
/// * `maximum` - The maximum valid value for `max_parallel_workers`.
///
/// * `minimum` - The minimum valid value for `max_parallel_workers`.
///
/// * `requires_restart` - Whether changing the value of `max_parallel_workers` requires the DB to restart.
///
/// * `type` - The type of the value of `max_parallel_workers`.
///
/// ## max_parallel_workers_per_gather
///
/// The following arguments are supported in the `max_parallel_workers_per_gather` specification block:
///
/// * `description` - The description of `max_parallel_workers_per_gather`.
///
/// * `maximum` - The maximum valid value for `max_parallel_workers_per_gather`.
///
/// * `minimum` - The minimum valid value for `max_parallel_workers_per_gather`.
///
/// * `requires_restart` - Whether changing the value of `max_parallel_workers_per_gather` requires the DB to restart.
///
/// * `type` - The type of the value of `max_parallel_workers_per_gather`.
///
/// ## max_pred_locks_per_transaction
///
/// The following arguments are supported in the `max_pred_locks_per_transaction` specification block:
///
/// * `description` - The description of `max_pred_locks_per_transaction`.
///
/// * `maximum` - The maximum valid value for `max_pred_locks_per_transaction`.
///
/// * `minimum` - The minimum valid value for `max_pred_locks_per_transaction`.
///
/// * `requires_restart` - Whether changing the value of `max_pred_locks_per_transaction` requires the DB to restart.
///
/// * `type` - The type of the value of `max_pred_locks_per_transaction`.
///
/// ## max_replication_slots
///
/// The following arguments are supported in the `max_replication_slots` specification block:
///
/// * `description` - The description of `max_replication_slots`.
///
/// * `maximum` - The maximum valid value for `max_replication_slots`.
///
/// * `minimum` - The minimum valid value for `max_replication_slots`.
///
/// * `requires_restart` - Whether changing the value of `max_replication_slots` requires the DB to restart.
///
/// * `type` - The type of the value of `max_replication_slots`.
///
/// ## max_slot_wal_keep_size
///
/// The following arguments are supported in the `max_slot_wal_keep_size` specification block:
///
/// * `description` - The description of `max_slot_wal_keep_size`.
///
/// * `maximum` - The maximum valid value for `max_slot_wal_keep_size`.
///
/// * `minimum` - The minimum valid value for `max_slot_wal_keep_size`.
///
/// * `requires_restart` - Whether changing the value of `max_slot_wal_keep_size` requires the DB to restart.
///
/// * `type` - The type of the value of `max_slot_wal_keep_size`.
///
/// ## max_stack_depth
///
/// The following arguments are supported in the `max_stack_depth` specification block:
///
/// * `description` - The description of `max_stack_depth`.
///
/// * `maximum` - The maximum valid value for `max_stack_depth`.
///
/// * `minimum` - The minimum valid value for `max_stack_depth`.
///
/// * `requires_restart` - Whether changing the value of `max_stack_depth` requires the DB to restart.
///
/// * `type` - The type of the value of `max_stack_depth`.
///
/// ## max_standby_archive_delay
///
/// The following arguments are supported in the `max_standby_archive_delay` specification block:
///
/// * `description` - The description of `max_standby_archive_delay`.
///
/// * `maximum` - The maximum valid value for `max_standby_archive_delay`.
///
/// * `minimum` - The minimum valid value for `max_standby_archive_delay`.
///
/// * `requires_restart` - Whether changing the value of `max_standby_archive_delay` requires the DB to restart.
///
/// * `type` - The type of the value of `max_standby_archive_delay`.
///
/// ## max_standby_streaming_delay
///
/// The following arguments are supported in the `max_standby_streaming_delay` specification block:
///
/// * `description` - The description of `max_standby_streaming_delay`.
///
/// * `maximum` - The maximum valid value for `max_standby_streaming_delay`.
///
/// * `minimum` - The minimum valid value for `max_standby_streaming_delay`.
///
/// * `requires_restart` - Whether changing the value of `max_standby_streaming_delay` requires the DB to restart.
///
/// * `type` - The type of the value of `max_standby_streaming_delay`.
///
/// ## max_wal_senders
///
/// The following arguments are supported in the `max_wal_senders` specification block:
///
/// * `description` - The description of `max_wal_senders`.
///
/// * `maximum` - The maximum valid value for `max_wal_senders`.
///
/// * `minimum` - The minimum valid value for `max_wal_senders`.
///
/// * `requires_restart` - Whether changing the value of `max_wal_senders` requires the DB to restart.
///
/// * `type` - The type of the value of `max_wal_senders`.
///
/// ## max_worker_processes
///
/// The following arguments are supported in the `max_worker_processes` specification block:
///
/// * `description` - The description of `max_worker_processes`.
///
/// * `maximum` - The maximum valid value for `max_worker_processes`.
///
/// * `minimum` - The minimum valid value for `max_worker_processes`.
///
/// * `requires_restart` - Whether changing the value of `max_worker_processes` requires the DB to restart.
///
/// * `type` - The type of the value of `max_worker_processes`.
///
/// ## password_encryption
///
/// The following arguments are supported in the `password_encryption` specification block:
///
/// * `description` - The description of the `password_encryption` setting.
///
/// * `enum` - A list of valid values for the `password_encryption` setting.
///
/// * `example` - An example value for the `password_encryption` setting.
///
/// * `requires_restart` - Whether changing the value of `password_encryption` requires the DB to restart.
///
/// * `type` - A list of types for the `password_encryption` setting.
///
/// ## pg_partman_bgw_interval
///
/// The following arguments are supported in the `pg_partman_bgw_interval` specification block:
///
/// * `description` - The description of the `pg_partman_bgw_interval` setting.
///
/// * `example` - An example value for the `pg_partman_bgw_interval` setting.
///
/// * `maximum` - The maximum allowed value for the `pg_partman_bgw_interval` setting.
///
/// * `minimum` - The minimum allowed value for the `pg_partman_bgw_interval` setting.
///
/// * `requires_restart` - Whether changing the value of `pg_partman_bgw_interval` requires the DB to restart.
///
/// * `type` - The type of the `pg_partman_bgw_interval` setting.
///
/// ## pg_partman_bgw_role
///
/// The following arguments are supported in the `pg_partman_bgw_role` specification block:
///
/// * `description` - The description of the `pg_partman_bgw_role` setting.
///
/// * `example` - An example value for the `pg_partman_bgw_role` setting.
///
/// * `maxLength` - The maximum length for the `pg_partman_bgw_role` setting.
///
/// * `pattern` - The regular expression pattern for validating the `pg_partman_bgw_role` setting.
///
/// * `requires_restart` - Whether changing the value of `pg_partman_bgw_role` requires the DB to restart.
///
/// * `type` - The type of the `pg_partman_bgw_role` setting.
///
/// ## pg_stat_monitor_pgsm_enable_query_plan
///
/// The following arguments are supported in the `pg_stat_monitor_pgsm_enable_query_plan` specification block:
///
/// * `description` - The description of the `pg_stat_monitor_pgsm_enable_query_plan` setting.
///
/// * `example` - An example value for the `pg_stat_monitor_pgsm_enable_query_plan` setting.
///
/// * `requires_restart` - Whether changing the value of `pg_stat_monitor_pgsm_enable_query_plan` requires the DB to restart.
///
/// * `type` - The type of the `pg_stat_monitor_pgsm_enable_query_plan` setting.
///
/// ## pg_stat_monitor_pgsm_max_buckets
///
/// The following arguments are supported in the `pg_stat_monitor_pgsm_max_buckets` specification block:
///
/// * `description` - The description of the `pg_stat_monitor_pgsm_max_buckets` setting.
///
/// * `example` - An example value for the `pg_stat_monitor_pgsm_max_buckets` setting.
///
/// * `maximum` - The maximum allowed value for the `pg_stat_monitor_pgsm_max_buckets` setting.
///
/// * `minimum` - The minimum allowed value for the `pg_stat_monitor_pgsm_max_buckets` setting.
///
/// * `requires_restart` - Whether changing the value of `pg_stat_monitor_pgsm_max_buckets` requires the DB to restart.
///
/// * `type` - The type of the `pg_stat_monitor_pgsm_max_buckets` setting.
///
/// ## pg_stat_statements_track
///
/// The following arguments are supported in the `pg_stat_statements_track` specification block:
///
/// * `description` - The description of the `pg_stat_statements_track` setting.
///
/// * `enum` - A list of valid values for the `pg_stat_statements_track` setting.
///
/// * `requires_restart` - Whether changing the value of `pg_stat_statements_track` requires the DB to restart.
///
/// * `type` - The type of the `pg_stat_statements_track` setting.
///
/// ## temp_file_limit
///
/// The following arguments are supported in the `temp_file_limit` specification block:
///
/// * `description` - The description of the `temp_file_limit` setting.
///
/// * `example` - An example value for the `temp_file_limit` setting.
///
/// * `maximum` - The maximum allowed value for the `temp_file_limit` setting.
///
/// * `minimum` - The minimum allowed value for the `temp_file_limit` setting.
///
/// * `requires_restart` - Whether changing the value of `temp_file_limit` requires the DB to restart.
///
/// * `type` - The type of the `temp_file_limit` setting.
///
/// ## timezone
///
/// The following arguments are supported in the `timezone` specification block:
///
/// * `description` - The description of the `timezone` setting.
///
/// * `example` - An example value for the `timezone` setting.
///
/// * `maxLength` - The maximum length for the `timezone` setting.
///
/// * `pattern` - The regular expression pattern for validating the `timezone` setting.
///
/// * `requires_restart` - Whether changing the value of `timezone` requires the DB to restart.
///
/// * `type` - The type of the `timezone` setting.
///
/// ## track_activity_query_size
///
/// The following arguments are supported in the `track_activity_query_size` specification block:
///
/// * `description` - The description of the `track_activity_query_size` setting.
///
/// * `example` - An example value for the `track_activity_query_size` setting.
///
/// * `maximum` - The maximum allowed value for the `track_activity_query_size` setting.
///
/// * `minimum` - The minimum allowed value for the `track_activity_query_size` setting.
///
/// * `requires_restart` - Whether changing the value of `track_activity_query_size` requires the DB to restart.
///
/// * `type` - The type of the `track_activity_query_size` setting.
///
/// ## track_commit_timestamp
///
/// The following arguments are supported in the `track_commit_timestamp` specification block:
///
/// * `description` - The description of the `track_commit_timestamp` setting.
///
/// * `enum` - A list of valid values for the `track_commit_timestamp` setting.
///
/// * `example` - An example value for the `track_commit_timestamp` setting.
///
/// * `requires_restart` - Whether changing the value of `track_commit_timestamp` requires the DB to restart.
///
/// * `type` - The type of the `track_commit_timestamp` setting.
///
/// ## track_functions
///
/// The following arguments are supported in the `track_functions` specification block:
///
/// * `description` - The description of the `track_functions` setting.
///
/// * `enum` - A list of valid values for the `track_functions` setting.
///
/// * `requires_restart` - Whether changing the value of `track_functions` requires the DB to restart.
///
/// * `type` - The type of the `track_functions` setting.
///
/// ## track_io_timing
///
/// The following arguments are supported in the `track_io_timing` specification block:
///
/// * `description` - The description of the `track_io_timing` setting.
///
/// * `enum` - A list of valid values for the `track_io_timing` setting.
///
/// * `example` - An example value for the `track_io_timing` setting.
///
/// * `requires_restart` - Whether changing the value of `track_io_timing` requires the DB to restart.
///
/// * `type` - The type of the `track_io_timing` setting.
///
/// ## wal_sender_timeout
///
/// The following arguments are supported in the `wal_sender_timeout` specification block:
///
/// * `description` - The description of the `wal_sender_timeout` setting.
///
/// * `example` - An example value for the `wal_sender_timeout` setting.
///
/// * `requires_restart` - Whether changing the value of `wal_sender_timeout` requires the DB to restart.
///
/// * `type` - The type of the `wal_sender_timeout` setting.
///
/// ## wal_writer_delay
///
/// The following arguments are supported in the `wal_writer_delay` specification block:
///
/// * `description` - The description of the `wal_writer_delay` setting.
///
/// * `example` - An example value for the `wal_writer_delay` setting.
///
/// * `maximum` - The maximum allowed value for the `wal_writer_delay` setting.
///
/// * `minimum` - The minimum allowed value for the `wal_writer_delay` setting.
///
/// * `requires_restart` - Whether changing the value of `wal_writer_delay` requires the DB to restart.
///
/// * `type` - The type of the `wal_writer_delay` setting.
/// [options] Invoke options controlling this call.
Future<GetDatabasePostgresqlConfigResult> getDatabasePostgresqlConfig(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getDatabasePostgresqlConfig:getDatabasePostgresqlConfig',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabasePostgresqlConfigResult.fromMap(result);
}

/// Provides information about a Linode PostgreSQL Database.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-databases-postgre-sql-instance-backups).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_db = linode.getDatabasePostgresqlV2({
///     id: "12345",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_db = linode.get_database_postgresql_v2(id="12345")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_db = Linode.GetDatabasePostgresqlV2.Invoke(new()
///     {
///         Id = "12345",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupDatabasePostgresqlV2(ctx, &linode.LookupDatabasePostgresqlV2Args{
/// 			Id: "12345",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetDatabasePostgresqlV2Args;
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
///         final var my-db = LinodeFunctions.getDatabasePostgresqlV2(GetDatabasePostgresqlV2Args.builder()
///             .id("12345")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-db:
///     fn::invoke:
///       function: linode:getDatabasePostgresqlV2
///       arguments:
///         id: 12345
/// ```
///
///
/// ## pending_updates
///
/// The following arguments are exposed by each entry in the `pending_updates` attribute:
///
/// * `deadline` - The time when a mandatory update needs to be applied.
///
/// * `description` - A description of the update.
///
/// * `planned_for` - The date and time a maintenance update will be applied.
///
/// ## updates
///
/// The following arguments are supported in the `updates` specification block:
///
/// * `day_of_week` - The day to perform maintenance. (`monday`, `tuesday`, ...)
///
/// * `duration` - The maximum maintenance window time in hours. (`1`..`3`)
///
/// * `frequency` - The frequency at which maintenance occurs. (`weekly`)
///
/// * `hour_of_day` - The hour to begin maintenance based in UTC time. (`0`..`23`)
///
/// ## private_network
///
/// The following arguments are exposed by the `private_network` attribute:
///
/// * `vpc_id` - The ID of the virtual private cloud (VPC) to restrict access to this database using.
///
/// * `subnet_id` - The ID of the VPC subnet to restrict access to this database using.
///
/// * `public_access` - If true, clients outside the VPC can connect to the database using a public IP address.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_database_postgresql_v2_get_database_postgresql_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabasePostgresqlV2Result> getDatabasePostgresqlV2(
  GetDatabasePostgresqlV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getDatabasePostgresqlV2:getDatabasePostgresqlV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabasePostgresqlV2Result.fromMap(result);
}

/// Provides information about Linode Managed Databases that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-databases-instances).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const all = linode.getDatabases({});
/// export const databaseIds = all.then(all => all.databases.map(__item => __item.id));
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all = linode.get_databases()
/// pulumi.export("databaseIds", [__item.id for __item in all.databases])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Linode.GetDatabases.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["databaseIds"] = all.Apply(getDatabasesResult => getDatabasesResult.Databases).Select(__item => __item.Id).ToList(),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// all, err := linode.GetDatabases(ctx, &linode.GetDatabasesArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("databaseIds", pulumi.IntArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:3,11-30)))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetDatabasesArgs;
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
///         final var all = LinodeFunctions.getDatabases(GetDatabasesArgs.builder()
///             .build());
///
///         ctx.export("databaseIds", all.databases().stream().map(element -> element.id()).collect(toList()));
///     }
/// }
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const mysql = linode.getDatabases({
///     filters: [{
///         name: "engine",
///         values: ["mysql"],
///     }],
/// });
/// export const databaseIds = mysql.then(mysql => mysql.databases.map(__item => __item.id));
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// mysql = linode.get_databases(filters=[{
///     "name": "engine",
///     "values": ["mysql"],
/// }])
/// pulumi.export("databaseIds", [__item.id for __item in mysql.databases])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mysql = Linode.GetDatabases.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetDatabasesFilterInputArgs
///             {
///                 Name = "engine",
///                 Values = new[]
///                 {
///                     "mysql",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["databaseIds"] = mysql.Apply(getDatabasesResult => getDatabasesResult.Databases).Select(__item => __item.Id).ToList(),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// mysql, err := linode.GetDatabases(ctx, &linode.GetDatabasesArgs{
/// Filters: []linode.GetDatabasesFilter{
/// {
/// Name: "engine",
/// Values: []string{
/// "mysql",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("databaseIds", pulumi.IntArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:8,11-32)))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetDatabasesArgs;
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
///         final var mysql = LinodeFunctions.getDatabases(GetDatabasesArgs.builder()
///             .filters(GetDatabasesFilterArgs.builder()
///                 .name("engine")
///                 .values("mysql")
///                 .build())
///             .build());
///
///         ctx.export("databaseIds", mysql.databases().stream().map(element -> element.id()).collect(toList()));
///     }
/// }
/// ```
///
///
/// ## private_network
///
/// The following arguments are exposed by the `private_network` attribute:
///
/// * `vpc_id` - The ID of the virtual private cloud (VPC) to restrict access to this database using.
///
/// * `subnet_id` - The ID of the VPC subnet to restrict access to this database using.
///
/// * `public_access` - If true, clients outside the VPC can connect to the database using a public IP address.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_databases_get_databases_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabasesResult> getDatabases(
  GetDatabasesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getDatabases:getDatabases',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabasesResult.fromMap(result);
}

/// Provides information about a Linode domain.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-domain).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode domain.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foo = linode.getDomain({
///     id: 1234567,
/// });
/// const bar = linode.getDomain({
///     domain: "bar.example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foo = linode.get_domain(id=1234567)
/// bar = linode.get_domain(domain="bar.example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Linode.GetDomain.Invoke(new()
///     {
///         Id = 1234567,
///     });
///
///     var bar = Linode.GetDomain.Invoke(new()
///     {
///         Domain = "bar.example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupDomain(ctx, &linode.LookupDomainArgs{
/// 			Id: pulumi.IntRef(1234567),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.LookupDomain(ctx, &linode.LookupDomainArgs{
/// 			Domain: pulumi.StringRef("bar.example.com"),
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetDomainArgs;
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
///         final var foo = LinodeFunctions.getDomain(GetDomainArgs.builder()
///             .id(1234567)
///             .build());
///
///         final var bar = LinodeFunctions.getDomain(GetDomainArgs.builder()
///             .domain("bar.example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: linode:getDomain
///       arguments:
///         id: '1234567'
///   bar:
///     fn::invoke:
///       function: linode:getDomain
///       arguments:
///         domain: bar.example.com
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_domain_get_domain_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainResult> getDomain(
  GetDomainArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getDomain:getDomain',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainResult.fromMap(result);
}

/// Provides information about a Linode Domain Record.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-domain-record).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode Domain Record.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const myRecord = linode.getDomainRecord({
///     id: 14950401,
///     domainId: 3150401,
/// });
/// const myWwwRecord = linode.getDomainRecord({
///     name: "www",
///     domainId: 3150401,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_record = linode.get_domain_record(id=14950401,
///     domain_id=3150401)
/// my_www_record = linode.get_domain_record(name="www",
///     domain_id=3150401)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myRecord = Linode.GetDomainRecord.Invoke(new()
///     {
///         Id = 14950401,
///         DomainId = 3150401,
///     });
///
///     var myWwwRecord = Linode.GetDomainRecord.Invoke(new()
///     {
///         Name = "www",
///         DomainId = 3150401,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupDomainRecord(ctx, &linode.LookupDomainRecordArgs{
/// 			Id:       pulumi.IntRef(14950401),
/// 			DomainId: 3150401,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.LookupDomainRecord(ctx, &linode.LookupDomainRecordArgs{
/// 			Name:     pulumi.StringRef("www"),
/// 			DomainId: 3150401,
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetDomainRecordArgs;
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
///         final var myRecord = LinodeFunctions.getDomainRecord(GetDomainRecordArgs.builder()
///             .id(14950401)
///             .domainId(3150401)
///             .build());
///
///         final var myWwwRecord = LinodeFunctions.getDomainRecord(GetDomainRecordArgs.builder()
///             .name("www")
///             .domainId(3150401)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myRecord:
///     fn::invoke:
///       function: linode:getDomainRecord
///       arguments:
///         id: '14950401'
///         domainId: '3150401'
///   myWwwRecord:
///     fn::invoke:
///       function: linode:getDomainRecord
///       arguments:
///         name: www
///         domainId: '3150401'
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_domain_record_get_domain_record_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainRecordResult> getDomainRecord(
  GetDomainRecordArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getDomainRecord:getDomainRecord',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainRecordResult.fromMap(result);
}

/// Provides information about a Linode Domain Zonefile.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-domain-zone).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode Domain Zonefile.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const myZonefile = linode.getDomainZonefile({
///     domainId: 3150401,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_zonefile = linode.get_domain_zonefile(domain_id=3150401)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myZonefile = Linode.GetDomainZonefile.Invoke(new()
///     {
///         DomainId = 3150401,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetDomainZonefile(ctx, &linode.GetDomainZonefileArgs{
/// 			DomainId: 3150401,
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetDomainZonefileArgs;
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
///         final var myZonefile = LinodeFunctions.getDomainZonefile(GetDomainZonefileArgs.builder()
///             .domainId(3150401)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myZonefile:
///     fn::invoke:
///       function: linode:getDomainZonefile
///       arguments:
///         domainId: 3.150401e+06
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_domain_zonefile_get_domain_zonefile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainZonefileResult> getDomainZonefile(
  GetDomainZonefileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getDomainZonefile:getDomainZonefile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainZonefileResult.fromMap(result);
}

/// Provides information about Linode Domains that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-domains).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const specific = linode.getDomains({
///     filters: [{
///         name: "tags",
///         values: ["test-tag"],
///     }],
/// });
/// export const domain = specific.then(specific => specific.domains?.[0]?.domain);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// specific = linode.get_domains(filters=[{
///     "name": "tags",
///     "values": ["test-tag"],
/// }])
/// pulumi.export("domain", specific.domains[0].domain)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var specific = Linode.GetDomains.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetDomainsFilterInputArgs
///             {
///                 Name = "tags",
///                 Values = new[]
///                 {
///                     "test-tag",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["domain"] = specific.Apply(getDomainsResult => getDomainsResult.Domains[0]?.Domain),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		specific, err := linode.GetDomains(ctx, &linode.GetDomainsArgs{
/// 			Filters: []linode.GetDomainsFilter{
/// 				{
/// 					Name: "tags",
/// 					Values: []string{
/// 						"test-tag",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("domain", specific.Domains[0].Domain)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetDomainsArgs;
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
///         final var specific = LinodeFunctions.getDomains(GetDomainsArgs.builder()
///             .filters(GetDomainsFilterArgs.builder()
///                 .name("tags")
///                 .values("test-tag")
///                 .build())
///             .build());
///
///         ctx.export("domain", specific.domains()[0].domain());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   specific:
///     fn::invoke:
///       function: linode:getDomains
///       arguments:
///         filters:
///           - name: tags
///             values:
///               - test-tag
/// outputs:
///   domain: ${specific.domains[0].domain}
/// ```
///
///
/// ## Filterable Fields
///
/// * `group`
///
/// * `tags`
///
/// * `domain`
///
/// * `type`
///
/// * `status`
///
/// * `description`
///
/// * `master_ips`
///
/// * `axfr_ips`
///
/// * `ttl_sec`
///
/// * `retry_sec`
///
/// * `expire_sec`
///
/// * `refresh_sec`
///
/// * `soa_email`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_domains_get_domains_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainsResult> getDomains(
  GetDomainsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getDomains:getDomains',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainsResult.fromMap(result);
}

/// Provides details about a Linode Firewall.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-firewall).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_firewall = linode.getFirewall({
///     id: 123,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_firewall = linode.get_firewall(id=123)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_firewall = Linode.GetFirewall.Invoke(new()
///     {
///         Id = 123,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupFirewall(ctx, &linode.LookupFirewallArgs{
/// 			Id: 123,
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetFirewallArgs;
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
///         final var my-firewall = LinodeFunctions.getFirewall(GetFirewallArgs.builder()
///             .id(123)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-firewall:
///     fn::invoke:
///       function: linode:getFirewall
///       arguments:
///         id: 123
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_firewall_get_firewall_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallResult> getFirewall(
  GetFirewallArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getFirewall:getFirewall',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallResult.fromMap(result);
}

/// [options] Invoke options controlling this call.
Future<GetFirewallSettingsResult> getFirewallSettings(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getFirewallSettings:getFirewallSettings',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallSettingsResult.fromMap(result);
}

/// Provides information about a Linode Firewall Template.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const public_template = linode.getFirewallTemplate({
///     slug: "public",
/// });
/// export const firewallTemplateId = public_template.then(public_template => public_template.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// public_template = linode.get_firewall_template(slug="public")
/// pulumi.export("firewallTemplateId", public_template.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var public_template = Linode.GetFirewallTemplate.Invoke(new()
///     {
///         Slug = "public",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firewallTemplateId"] = public_template.Apply(public_template => public_template.Apply(getFirewallTemplateResult => getFirewallTemplateResult.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		public_template, err := linode.GetFirewallTemplate(ctx, &linode.GetFirewallTemplateArgs{
/// 			Slug: "public",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firewallTemplateId", public_template.Id)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetFirewallTemplateArgs;
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
///         final var public-template = LinodeFunctions.getFirewallTemplate(GetFirewallTemplateArgs.builder()
///             .slug("public")
///             .build());
///
///         ctx.export("firewallTemplateId", public_template.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   public-template:
///     fn::invoke:
///       function: linode:getFirewallTemplate
///       arguments:
///         slug: public
/// outputs:
///   firewallTemplateId: ${["public-template"].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_firewall_template_get_firewall_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallTemplateResult> getFirewallTemplate(
  GetFirewallTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getFirewallTemplate:getFirewallTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallTemplateResult.fromMap(result);
}

/// Provides information about all Linode Firewall Templates.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const all = linode.getFirewallTemplates({});
/// export const firewallTemplateSlugs = all.then(all => all.firewallTemplates);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all = linode.get_firewall_templates()
/// pulumi.export("firewallTemplateSlugs", all.firewall_templates)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Linode.GetFirewallTemplates.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["firewallTemplateSlugs"] = all.Apply(getFirewallTemplatesResult => getFirewallTemplatesResult.FirewallTemplates),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		all, err := linode.GetFirewallTemplates(ctx, &linode.GetFirewallTemplatesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firewallTemplateSlugs", all.FirewallTemplates)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetFirewallTemplatesArgs;
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
///         final var all = LinodeFunctions.getFirewallTemplates(GetFirewallTemplatesArgs.builder()
///             .build());
///
///         ctx.export("firewallTemplateSlugs", all.firewallTemplates());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: linode:getFirewallTemplates
///       arguments: {}
/// outputs:
///   firewallTemplateSlugs: ${all.firewallTemplates}
/// ```
///
///
/// Or with some filters to get a subset of the results.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const filtered = linode.getFirewallTemplates({
///     filters: [{
///         name: "slug",
///         values: ["public"],
///         matchBy: "exact",
///     }],
/// });
/// export const firewallTemplateSlugs = filtered.then(filtered => filtered.firewallTemplates);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// filtered = linode.get_firewall_templates(filters=[{
///     "name": "slug",
///     "values": ["public"],
///     "match_by": "exact",
/// }])
/// pulumi.export("firewallTemplateSlugs", filtered.firewall_templates)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filtered = Linode.GetFirewallTemplates.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetFirewallTemplatesFilterInputArgs
///             {
///                 Name = "slug",
///                 Values = new[]
///                 {
///                     "public",
///                 },
///                 MatchBy = "exact",
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firewallTemplateSlugs"] = filtered.Apply(getFirewallTemplatesResult => getFirewallTemplatesResult.FirewallTemplates),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		filtered, err := linode.GetFirewallTemplates(ctx, &linode.GetFirewallTemplatesArgs{
/// 			Filters: []linode.GetFirewallTemplatesFilter{
/// 				{
/// 					Name: "slug",
/// 					Values: []string{
/// 						"public",
/// 					},
/// 					MatchBy: pulumi.StringRef("exact"),
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firewallTemplateSlugs", filtered.FirewallTemplates)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetFirewallTemplatesArgs;
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
///         final var filtered = LinodeFunctions.getFirewallTemplates(GetFirewallTemplatesArgs.builder()
///             .filters(GetFirewallTemplatesFilterArgs.builder()
///                 .name("slug")
///                 .values("public")
///                 .matchBy("exact")
///                 .build())
///             .build());
///
///         ctx.export("firewallTemplateSlugs", filtered.firewallTemplates());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   filtered:
///     fn::invoke:
///       function: linode:getFirewallTemplates
///       arguments:
///         filters:
///           - name: slug
///             values:
///               - public
///             matchBy: exact
/// outputs:
///   firewallTemplateSlugs: ${filtered.firewallTemplates}
/// ```
///
///
/// ## Filterable Fields
///
/// * `slug`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_firewall_templates_get_firewall_templates_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallTemplatesResult> getFirewallTemplates(
  GetFirewallTemplatesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getFirewallTemplates:getFirewallTemplates',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallTemplatesResult.fromMap(result);
}

/// Provides information about Linode Cloud Firewalls that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-firewalls).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const specific = linode.getFirewalls({
///     filters: [
///         {
///             name: "label",
///             values: ["my-firewalls"],
///         },
///         {
///             name: "tags",
///             values: ["my-tag"],
///         },
///     ],
/// });
/// export const firewallId = specific.then(specific => specific.firewalls?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// specific = linode.get_firewalls(filters=[
///     {
///         "name": "label",
///         "values": ["my-firewalls"],
///     },
///     {
///         "name": "tags",
///         "values": ["my-tag"],
///     },
/// ])
/// pulumi.export("firewallId", specific.firewalls[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var specific = Linode.GetFirewalls.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetFirewallsFilterInputArgs
///             {
///                 Name = "label",
///                 Values = new[]
///                 {
///                     "my-firewalls",
///                 },
///             },
///             new Linode.Inputs.GetFirewallsFilterInputArgs
///             {
///                 Name = "tags",
///                 Values = new[]
///                 {
///                     "my-tag",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firewallId"] = specific.Apply(getFirewallsResult => getFirewallsResult.Firewalls[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		specific, err := linode.GetFirewalls(ctx, &linode.GetFirewallsArgs{
/// 			Filters: []linode.GetFirewallsFilter{
/// 				{
/// 					Name: "label",
/// 					Values: []string{
/// 						"my-firewalls",
/// 					},
/// 				},
/// 				{
/// 					Name: "tags",
/// 					Values: []string{
/// 						"my-tag",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firewallId", specific.Firewalls[0].Id)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetFirewallsArgs;
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
///         final var specific = LinodeFunctions.getFirewalls(GetFirewallsArgs.builder()
///             .filters(
///                 GetFirewallsFilterArgs.builder()
///                     .name("label")
///                     .values("my-firewalls")
///                     .build(),
///                 GetFirewallsFilterArgs.builder()
///                     .name("tags")
///                     .values("my-tag")
///                     .build())
///             .build());
///
///         ctx.export("firewallId", specific.firewalls()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   specific:
///     fn::invoke:
///       function: linode:getFirewalls
///       arguments:
///         filters:
///           - name: label
///             values:
///               - my-firewalls
///           - name: tags
///             values:
///               - my-tag
/// outputs:
///   firewallId: ${specific.firewalls[0].id}
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const all = linode.getFirewalls({});
/// export const firewallIds = all.then(all => all.firewalls.map(__item => __item.id));
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all = linode.get_firewalls()
/// pulumi.export("firewallIds", [__item.id for __item in all.firewalls])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Linode.GetFirewalls.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["firewallIds"] = all.Apply(getFirewallsResult => getFirewallsResult.Firewalls).Select(__item => __item.Id).ToList(),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// all, err := linode.GetFirewalls(ctx, &linode.GetFirewallsArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("firewallIds", pulumi.IntArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:3,11-30)))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetFirewallsArgs;
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
///         final var all = LinodeFunctions.getFirewalls(GetFirewallsArgs.builder()
///             .build());
///
///         ctx.export("firewallIds", all.firewalls().stream().map(element -> element.id()).collect(toList()));
///     }
/// }
/// ```
///
///
/// ## Firewall Rule
///
/// * `label` - The label of this rule for display purposes only.
///
/// * `action` - Controls whether traffic is accepted or dropped by this rule (ACCEPT, DROP).
///
/// * `protocol` - The network protocol this rule controls. (TCP, UDP, ICMP)
///
/// * `ports` - A string representation of ports and/or port ranges (i.e. "443" or "80-90, 91").
///
/// * `ipv4` - A list of IPv4 addresses or networks in IP/mask format.
///
/// * `ipv6` - A list of IPv6 addresses or networks in IP/mask format.
///
/// ## Firewall Device
///
/// * `id` - The unique ID of this Firewall Device assignment.
///
/// * `entity_id` - The ID of the underlying entity this device references.
///
/// * `type` - The type of the assigned entity.
///
/// * `label` - The label of the assigned entity.
///
/// * `url` - The URL of the assigned entity.
///
/// ## Filterable Fields
///
/// * `id`
///
/// * `label`
///
/// * `status`
///
/// * `tags`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_firewalls_get_firewalls_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallsResult> getFirewalls(
  GetFirewallsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getFirewalls:getFirewalls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallsResult.fromMap(result);
}

/// Provides information about a Linode image
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-image).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode image.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const k8Master = linode.getImage({
///     id: "linode/debian12",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// k8_master = linode.get_image(id="linode/debian12")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var k8Master = Linode.GetImage.Invoke(new()
///     {
///         Id = "linode/debian12",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupImage(ctx, &linode.LookupImageArgs{
/// 			Id: "linode/debian12",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetImageArgs;
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
///         final var k8Master = LinodeFunctions.getImage(GetImageArgs.builder()
///             .id("linode/debian12")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   k8Master:
///     fn::invoke:
///       function: linode:getImage
///       arguments:
///         id: linode/debian12
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_image_get_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageResult> getImage(
  GetImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getImage:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageResult.fromMap(result);
}

/// Provides information about Linode images that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-images).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const specific_images = linode.getImages({
///     filters: [
///         {
///             name: "label",
///             values: ["Debian 12"],
///         },
///         {
///             name: "is_public",
///             values: ["true"],
///         },
///     ],
/// });
/// export const imageId = specific_images.then(specific_images => specific_images.images?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// specific_images = linode.get_images(filters=[
///     {
///         "name": "label",
///         "values": ["Debian 12"],
///     },
///     {
///         "name": "is_public",
///         "values": ["true"],
///     },
/// ])
/// pulumi.export("imageId", specific_images.images[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var specific_images = Linode.GetImages.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetImagesFilterInputArgs
///             {
///                 Name = "label",
///                 Values = new[]
///                 {
///                     "Debian 12",
///                 },
///             },
///             new Linode.Inputs.GetImagesFilterInputArgs
///             {
///                 Name = "is_public",
///                 Values = new[]
///                 {
///                     "true",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["imageId"] = specific_images.Apply(specific_images => specific_images.Apply(getImagesResult => getImagesResult.Images[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		specific_images, err := linode.GetImages(ctx, &linode.GetImagesArgs{
/// 			Filters: []linode.GetImagesFilter{
/// 				{
/// 					Name: "label",
/// 					Values: []string{
/// 						"Debian 12",
/// 					},
/// 				},
/// 				{
/// 					Name: "is_public",
/// 					Values: []string{
/// 						"true",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("imageId", specific_images.Images[0].Id)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetImagesArgs;
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
///         final var specific-images = LinodeFunctions.getImages(GetImagesArgs.builder()
///             .filters(
///                 GetImagesFilterArgs.builder()
///                     .name("label")
///                     .values("Debian 12")
///                     .build(),
///                 GetImagesFilterArgs.builder()
///                     .name("is_public")
///                     .values("true")
///                     .build())
///             .build());
///
///         ctx.export("imageId", specific_images.images()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   specific-images:
///     fn::invoke:
///       function: linode:getImages
///       arguments:
///         filters:
///           - name: label
///             values:
///               - Debian 12
///           - name: is_public
///             values:
///               - 'true'
/// outputs:
///   imageId: ${["specific-images"].images[0].id}
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const all_images = linode.getImages({});
/// export const imageIds = all_images.then(all_images => all_images.images.map(__item => __item.id));
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all_images = linode.get_images()
/// pulumi.export("imageIds", [__item.id for __item in all_images.images])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all_images = Linode.GetImages.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["imageIds"] = all_images.Apply(all_images => all_images.Apply(getImagesResult => getImagesResult.Images).Select(__item => __item.Id).ToList()),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// all_images, err := linode.GetImages(ctx, &linode.GetImagesArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("imageIds", pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:3,11-34)))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetImagesArgs;
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
///         final var all-images = LinodeFunctions.getImages(GetImagesArgs.builder()
///             .build());
///
///         ctx.export("imageIds", all_images.images().stream().map(element -> element.id()).collect(toList()));
///     }
/// }
/// ```
///
///
/// ## Filterable Fields
///
/// * `created_by`
///
/// * `deprecated`
///
/// * `description`
///
/// * `id`
///
/// * `is_public`
///
/// * `label`
///
/// * `size`
///
/// * `status`
///
/// * `vendor`
///
/// * `tags`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_images_get_images_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImagesResult> getImages(
  GetImagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getImages:getImages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImagesResult.fromMap(result);
}

/// Provides details about the backups of an Instance.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-backups).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_backups = linode.getInstanceBackups({
///     linodeId: 123,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_backups = linode.get_instance_backups(linode_id=123)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_backups = Linode.GetInstanceBackups.Invoke(new()
///     {
///         LinodeId = 123,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetInstanceBackups(ctx, &linode.GetInstanceBackupsArgs{
/// 			LinodeId: 123,
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetInstanceBackupsArgs;
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
///         final var my-backups = LinodeFunctions.getInstanceBackups(GetInstanceBackupsArgs.builder()
///             .linodeId(123)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-backups:
///     fn::invoke:
///       function: linode:getInstanceBackups
///       arguments:
///         linodeId: 123
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_instance_backups_get_instance_backups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceBackupsResult> getInstanceBackups(
  GetInstanceBackupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getInstanceBackups:getInstanceBackups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceBackupsResult.fromMap(result);
}

/// Provides details about the networking configuration of an Instance.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-linode-config-interfaces).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const example = linode.getInstanceNetworking({
///     linodeId: 123,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// example = linode.get_instance_networking(linode_id=123)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Linode.GetInstanceNetworking.Invoke(new()
///     {
///         LinodeId = 123,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetInstanceNetworking(ctx, &linode.GetInstanceNetworkingArgs{
/// 			LinodeId: 123,
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetInstanceNetworkingArgs;
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
///         final var example = LinodeFunctions.getInstanceNetworking(GetInstanceNetworkingArgs.builder()
///             .linodeId(123)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: linode:getInstanceNetworking
///       arguments:
///         linodeId: 123
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_instance_networking_get_instance_networking_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceNetworkingResult> getInstanceNetworking(
  GetInstanceNetworkingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getInstanceNetworking:getInstanceNetworking',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceNetworkingResult.fromMap(result);
}

/// Provides information about a Linode instance type
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-linode-type).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode Instance type.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const _default = linode.getInstanceType({
///     id: "g6-standard-2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// default = linode.get_instance_type(id="g6-standard-2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Linode.GetInstanceType.Invoke(new()
///     {
///         Id = "g6-standard-2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetInstanceType(ctx, &linode.GetInstanceTypeArgs{
/// 			Id: "g6-standard-2",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetInstanceTypeArgs;
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
///         final var default = LinodeFunctions.getInstanceType(GetInstanceTypeArgs.builder()
///             .id("g6-standard-2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: linode:getInstanceType
///       arguments:
///         id: g6-standard-2
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_instance_type_get_instance_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTypeResult> getInstanceType(
  GetInstanceTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getInstanceType:getInstanceType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypeResult.fromMap(result);
}

/// Provides information about Linode Instance types that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-linode-types).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const specific_types = linode.getInstanceTypes({
///     filters: [{
///         name: "vcpus",
///         values: ["2"],
///     }],
/// });
/// export const typeIds = specific_types.then(specific_types => specific_types.types.map(__item => __item.id));
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// specific_types = linode.get_instance_types(filters=[{
///     "name": "vcpus",
///     "values": ["2"],
/// }])
/// pulumi.export("typeIds", [__item.id for __item in specific_types.types])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var specific_types = Linode.GetInstanceTypes.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetInstanceTypesFilterInputArgs
///             {
///                 Name = "vcpus",
///                 Values = new[]
///                 {
///                     "2",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["typeIds"] = specific_types.Apply(specific_types => specific_types.Apply(getInstanceTypesResult => getInstanceTypesResult.Types).Select(__item => __item.Id).ToList()),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// specific_types, err := linode.GetInstanceTypes(ctx, &linode.GetInstanceTypesArgs{
/// Filters: []linode.GetInstanceTypesFilter{
/// {
/// Name: "vcpus",
/// Values: []string{
/// "2",
/// },
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("typeIds", pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:8,11-37)))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetInstanceTypesArgs;
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
///         final var specific-types = LinodeFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .filters(GetInstanceTypesFilterArgs.builder()
///                 .name("vcpus")
///                 .values("2")
///                 .build())
///             .build());
///
///         ctx.export("typeIds", specific_types.types().stream().map(element -> element.id()).collect(toList()));
///     }
/// }
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const all_types = linode.getInstanceTypes({});
/// export const typeIds = all_types.then(all_types => all_types.types.map(__item => __item.id));
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all_types = linode.get_instance_types()
/// pulumi.export("typeIds", [__item.id for __item in all_types.types])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all_types = Linode.GetInstanceTypes.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["typeIds"] = all_types.Apply(all_types => all_types.Apply(getInstanceTypesResult => getInstanceTypesResult.Types).Select(__item => __item.Id).ToList()),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// all_types, err := linode.GetInstanceTypes(ctx, &linode.GetInstanceTypesArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("typeIds", pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:3,11-32)))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetInstanceTypesArgs;
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
///         final var all-types = LinodeFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .build());
///
///         ctx.export("typeIds", all_types.types().stream().map(element -> element.id()).collect(toList()));
///     }
/// }
/// ```
///
///
/// ## Filterable Fields
///
/// * `class`
///
/// * `disk`
///
/// * `gpus`
///
/// * `label`
///
/// * `memory`
///
/// * `network_out`
///
/// * `transfer`
///
/// * `vcpus`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_instance_types_get_instance_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTypesResult> getInstanceTypes(
  GetInstanceTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getInstanceTypes:getInstanceTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypesResult.fromMap(result);
}

/// Provides information about Linode instances that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-linode-instances).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_instances = linode.getInstances({
///     filters: [
///         {
///             name: "label",
///             values: [
///                 "my-label",
///                 "my-other-label",
///             ],
///         },
///         {
///             name: "tags",
///             values: ["my-tag"],
///         },
///     ],
/// });
/// export const instanceId = my_instances.then(my_instances => my_instances.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_instances = linode.get_instances(filters=[
///     {
///         "name": "label",
///         "values": [
///             "my-label",
///             "my-other-label",
///         ],
///     },
///     {
///         "name": "tags",
///         "values": ["my-tag"],
///     },
/// ])
/// pulumi.export("instanceId", my_instances.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_instances = Linode.GetInstances.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetInstancesFilterInputArgs
///             {
///                 Name = "label",
///                 Values = new[]
///                 {
///                     "my-label",
///                     "my-other-label",
///                 },
///             },
///             new Linode.Inputs.GetInstancesFilterInputArgs
///             {
///                 Name = "tags",
///                 Values = new[]
///                 {
///                     "my-tag",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["instanceId"] = my_instances.Apply(my_instances => my_instances.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		my_instances, err := linode.GetInstances(ctx, &linode.GetInstancesArgs{
/// 			Filters: []linode.GetInstancesFilter{
/// 				{
/// 					Name: "label",
/// 					Values: []string{
/// 						"my-label",
/// 						"my-other-label",
/// 					},
/// 				},
/// 				{
/// 					Name: "tags",
/// 					Values: []string{
/// 						"my-tag",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("instanceId", my_instances.Instances[0].Id)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetInstancesArgs;
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
///         final var my-instances = LinodeFunctions.getInstances(GetInstancesArgs.builder()
///             .filters(
///                 GetInstancesFilterArgs.builder()
///                     .name("label")
///                     .values(
///                         "my-label",
///                         "my-other-label")
///                     .build(),
///                 GetInstancesFilterArgs.builder()
///                     .name("tags")
///                     .values("my-tag")
///                     .build())
///             .build());
///
///         ctx.export("instanceId", my_instances.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-instances:
///     fn::invoke:
///       function: linode:getInstances
///       arguments:
///         filters:
///           - name: label
///             values:
///               - my-label
///               - my-other-label
///           - name: tags
///             values:
///               - my-tag
/// outputs:
///   instanceId: ${["my-instances"].instances[0].id}
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const all_instances = linode.getInstances({});
/// export const instanceIds = all_instances.then(all_instances => all_instances.instances.map(__item => __item.id));
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all_instances = linode.get_instances()
/// pulumi.export("instanceIds", [__item.id for __item in all_instances.instances])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all_instances = Linode.GetInstances.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["instanceIds"] = all_instances.Apply(all_instances => all_instances.Apply(getInstancesResult => getInstancesResult.Instances).Select(__item => __item.Id).ToList()),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// all_instances, err := linode.GetInstances(ctx, &linode.GetInstancesArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("instanceIds", pulumi.IntArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:3,11-40)))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetInstancesArgs;
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
///         final var all-instances = LinodeFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         ctx.export("instanceIds", all_instances.instances().stream().map(element -> element.id()).collect(toList()));
///     }
/// }
/// ```
///
///
/// ## Filterable Fields
///
/// * `group`
///
/// * `id`
///
/// * `image`
///
/// * `label`
///
/// * `region`
///
/// * `status`
///
/// * `tags`
///
/// * `type`
///
/// * `watchdog_enabled`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_interface_get_interface_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInterfaceResult> getInterface(
  GetInterfaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getInterface:getInterface',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterfaceResult.fromMap(result);
}

/// Provides information about a Linode IPv6 Range.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-ipv6-range).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const range_info = linode.getIpv6Range({
///     range: "2001:0db8::",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// range_info = linode.get_ipv6_range(range="2001:0db8::")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var range_info = Linode.GetIpv6Range.Invoke(new()
///     {
///         Range = "2001:0db8::",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupIpv6Range(ctx, &linode.LookupIpv6RangeArgs{
/// 			Range: "2001:0db8::",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetIpv6RangeArgs;
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
///         final var range-info = LinodeFunctions.getIpv6Range(GetIpv6RangeArgs.builder()
///             .range("2001:0db8::")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   range-info:
///     fn::invoke:
///       function: linode:getIpv6Range
///       arguments:
///         range: '2001:0db8::'
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_ipv6_range_get_ipv6_range_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpv6RangeResult> getIpv6Range(
  GetIpv6RangeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getIpv6Range:getIpv6Range',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpv6RangeResult.fromMap(result);
}

/// Provides information about Linode IPv6 ranges that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-ipv6-ranges).
///
/// &gt; Some fields may not be accessible directly the results of this data source.
/// For additional information about a specific IPv6 range consider using the linode.Ipv6Range
/// data source.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const filtered_ranges = linode.getIpv6Ranges({
///     filters: [{
///         name: "region",
///         values: ["us-mia"],
///     }],
/// });
/// export const ranges = filtered_ranges;
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// filtered_ranges = linode.get_ipv6_ranges(filters=[{
///     "name": "region",
///     "values": ["us-mia"],
/// }])
/// pulumi.export("ranges", filtered_ranges)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filtered_ranges = Linode.GetIpv6Ranges.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetIpv6RangesFilterInputArgs
///             {
///                 Name = "region",
///                 Values = new[]
///                 {
///                     "us-mia",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ranges"] = filtered_ranges,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		filtered_ranges, err := linode.GetIpv6Ranges(ctx, &linode.GetIpv6RangesArgs{
/// 			Filters: []linode.GetIpv6RangesFilter{
/// 				{
/// 					Name: "region",
/// 					Values: []string{
/// 						"us-mia",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ranges", filtered_ranges)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetIpv6RangesArgs;
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
///         final var filtered-ranges = LinodeFunctions.getIpv6Ranges(GetIpv6RangesArgs.builder()
///             .filters(GetIpv6RangesFilterArgs.builder()
///                 .name("region")
///                 .values("us-mia")
///                 .build())
///             .build());
///
///         ctx.export("ranges", filtered_ranges);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   filtered-ranges:
///     fn::invoke:
///       function: linode:getIpv6Ranges
///       arguments:
///         filters:
///           - name: region
///             values:
///               - us-mia
/// outputs:
///   ranges: ${["filtered-ranges"]}
/// ```
///
///
/// ## Filterable Fields
///
/// * `range`
///
/// * `route_target`
///
/// * `prefix`
///
/// * `region`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_ipv6_ranges_get_ipv6_ranges_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpv6RangesResult> getIpv6Ranges(
  GetIpv6RangesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getIpv6Ranges:getIpv6Ranges',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpv6RangesResult.fromMap(result);
}

/// Provides information about a Linode kernel
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-kernel).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode kernel.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const latest = linode.getKernel({
///     id: "linode/latest-64bit",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// latest = linode.get_kernel(id="linode/latest-64bit")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var latest = Linode.GetKernel.Invoke(new()
///     {
///         Id = "linode/latest-64bit",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetKernel(ctx, &linode.GetKernelArgs{
/// 			Id: "linode/latest-64bit",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetKernelArgs;
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
///         final var latest = LinodeFunctions.getKernel(GetKernelArgs.builder()
///             .id("linode/latest-64bit")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   latest:
///     fn::invoke:
///       function: linode:getKernel
///       arguments:
///         id: linode/latest-64bit
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_kernel_get_kernel_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKernelResult> getKernel(
  GetKernelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getKernel:getKernel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKernelResult.fromMap(result);
}

/// Provides information about Linode Kernels that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-kernels).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode Kernel.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const filteredKernels = linode.getKernels({
///     filters: [
///         {
///             name: "label",
///             values: ["my-kernel"],
///         },
///         {
///             name: "architecture",
///             values: ["x86_64"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// filtered_kernels = linode.get_kernels(filters=[
///     {
///         "name": "label",
///         "values": ["my-kernel"],
///     },
///     {
///         "name": "architecture",
///         "values": ["x86_64"],
///     },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filteredKernels = Linode.GetKernels.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetKernelsFilterInputArgs
///             {
///                 Name = "label",
///                 Values = new[]
///                 {
///                     "my-kernel",
///                 },
///             },
///             new Linode.Inputs.GetKernelsFilterInputArgs
///             {
///                 Name = "architecture",
///                 Values = new[]
///                 {
///                     "x86_64",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetKernels(ctx, &linode.GetKernelsArgs{
/// 			Filters: []linode.GetKernelsFilter{
/// 				{
/// 					Name: "label",
/// 					Values: []string{
/// 						"my-kernel",
/// 					},
/// 				},
/// 				{
/// 					Name: "architecture",
/// 					Values: []string{
/// 						"x86_64",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetKernelsArgs;
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
///         final var filteredKernels = LinodeFunctions.getKernels(GetKernelsArgs.builder()
///             .filters(
///                 GetKernelsFilterArgs.builder()
///                     .name("label")
///                     .values("my-kernel")
///                     .build(),
///                 GetKernelsFilterArgs.builder()
///                     .name("architecture")
///                     .values("x86_64")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   filteredKernels:
///     fn::invoke:
///       function: linode:getKernels
///       arguments:
///         filters:
///           - name: label
///             values:
///               - my-kernel
///           - name: architecture
///             values:
///               - x86_64
/// ```
///
///
/// ## Filterable Fields
///
/// * `id`
///
/// * `architecture`
///
/// * `deprecated`
///
/// * `kvm`
///
/// * `label`
///
/// * `pvops`
///
/// * `version`
///
/// * `xen`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_kernels_get_kernels_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKernelsResult> getKernels(
  GetKernelsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getKernels:getKernels',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKernelsResult.fromMap(result);
}

/// Provides information about a Linode Object Storage Bucket
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-object-storage-bucket).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode Object Storage Bucket.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_bucket = linode.getLinodeObjectStorageBucket({
///     label: "my-bucket",
///     region: "us-mia",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_bucket = linode.get_linode_object_storage_bucket(label="my-bucket",
///     region="us-mia")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_bucket = Linode.GetLinodeObjectStorageBucket.Invoke(new()
///     {
///         Label = "my-bucket",
///         Region = "us-mia",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetLinodeObjectStorageBucket(ctx, &linode.GetLinodeObjectStorageBucketArgs{
/// 			Label:  "my-bucket",
/// 			Region: pulumi.StringRef("us-mia"),
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetLinodeObjectStorageBucketArgs;
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
///         final var my-bucket = LinodeFunctions.getLinodeObjectStorageBucket(GetLinodeObjectStorageBucketArgs.builder()
///             .label("my-bucket")
///             .region("us-mia")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-bucket:
///     fn::invoke:
///       function: linode:getLinodeObjectStorageBucket
///       arguments:
///         label: my-bucket
///         region: us-mia
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_linode_object_storage_bucket_get_linode_object_storage_bucket_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLinodeObjectStorageBucketResult> getLinodeObjectStorageBucket(
  GetLinodeObjectStorageBucketArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getLinodeObjectStorageBucket:getLinodeObjectStorageBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLinodeObjectStorageBucketResult.fromMap(result);
}

/// Provides details about an LKE Cluster.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-lke-cluster).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_cluster = linode.getLkeCluster({
///     id: 123,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_cluster = linode.get_lke_cluster(id=123)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_cluster = Linode.GetLkeCluster.Invoke(new()
///     {
///         Id = 123,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupLkeCluster(ctx, &linode.LookupLkeClusterArgs{
/// 			Id: 123,
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetLkeClusterArgs;
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
///         final var my-cluster = LinodeFunctions.getLkeCluster(GetLkeClusterArgs.builder()
///             .id(123)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-cluster:
///     fn::invoke:
///       function: linode:getLkeCluster
///       arguments:
///         id: 123
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_lke_cluster_get_lke_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLkeClusterResult> getLkeCluster(
  GetLkeClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getLkeCluster:getLkeCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLkeClusterResult.fromMap(result);
}

/// Provides information about a list of current Linode Kubernetes (LKE) clusters on your account that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-lke-clusters).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const specific = linode.getLkeClusters({
///     filters: [{
///         name: "tags",
///         values: ["test-tag"],
///     }],
/// });
/// export const lkeCluster = specific.then(specific => specific.lkeClusters?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// specific = linode.get_lke_clusters(filters=[{
///     "name": "tags",
///     "values": ["test-tag"],
/// }])
/// pulumi.export("lkeCluster", specific.lke_clusters[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var specific = Linode.GetLkeClusters.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetLkeClustersFilterInputArgs
///             {
///                 Name = "tags",
///                 Values = new[]
///                 {
///                     "test-tag",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["lkeCluster"] = specific.Apply(getLkeClustersResult => getLkeClustersResult.LkeClusters[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		specific, err := linode.GetLkeClusters(ctx, &linode.GetLkeClustersArgs{
/// 			Filters: []linode.GetLkeClustersFilter{
/// 				{
/// 					Name: "tags",
/// 					Values: []string{
/// 						"test-tag",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("lkeCluster", specific.LkeClusters[0].Id)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetLkeClustersArgs;
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
///         final var specific = LinodeFunctions.getLkeClusters(GetLkeClustersArgs.builder()
///             .filters(GetLkeClustersFilterArgs.builder()
///                 .name("tags")
///                 .values("test-tag")
///                 .build())
///             .build());
///
///         ctx.export("lkeCluster", specific.lkeClusters()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   specific:
///     fn::invoke:
///       function: linode:getLkeClusters
///       arguments:
///         filters:
///           - name: tags
///             values:
///               - test-tag
/// outputs:
///   lkeCluster: ${specific.lkeClusters[0].id}
/// ```
///
///
/// ## Filterable Fields
///
/// * `k8s_version`
///
/// * `label`
///
/// * `region`
///
/// * `tags`
///
/// * `status`
///
/// * `created`
///
/// * `updated`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_lke_clusters_get_lke_clusters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLkeClustersResult> getLkeClusters(
  GetLkeClustersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getLkeClusters:getLkeClusters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLkeClustersResult.fromMap(result);
}

/// Provides information about Linode LKE types that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-lke-types).
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_lke_types_get_lke_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLkeTypesResult> getLkeTypes(
  GetLkeTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getLkeTypes:getLkeTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLkeTypesResult.fromMap(result);
}

/// Provides details about a specific Kubernetes versions available for deployment to a Kubernetes cluster.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-lke-version).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode LKE Version.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const example = linode.getLkeVersion({
///     id: "1.31",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// example = linode.get_lke_version(id="1.31")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Linode.GetLkeVersion.Invoke(new()
///     {
///         Id = "1.31",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetLkeVersion(ctx, &linode.GetLkeVersionArgs{
/// 			Id: "1.31",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetLkeVersionArgs;
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
///         final var example = LinodeFunctions.getLkeVersion(GetLkeVersionArgs.builder()
///             .id("1.31")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: linode:getLkeVersion
///       arguments:
///         id: '1.31'
/// ```
///
///
/// The following example shows how one might use this data source to access information about a Linode LKE Version
/// with additional information about the Linode LKE Version's tier (`enterprise` or `standard`).
///
/// &gt; **_NOTE:_**  This functionality may not be currently available to all users and can only be used with v4beta.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const example = linode.getLkeVersion({
///     id: "1.31",
///     tier: "standard",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// example = linode.get_lke_version(id="1.31",
///     tier="standard")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Linode.GetLkeVersion.Invoke(new()
///     {
///         Id = "1.31",
///         Tier = "standard",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetLkeVersion(ctx, &linode.GetLkeVersionArgs{
/// 			Id:   "1.31",
/// 			Tier: pulumi.StringRef("standard"),
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetLkeVersionArgs;
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
///         final var example = LinodeFunctions.getLkeVersion(GetLkeVersionArgs.builder()
///             .id("1.31")
///             .tier("standard")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: linode:getLkeVersion
///       arguments:
///         id: '1.31'
///         tier: standard
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_lke_version_get_lke_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLkeVersionResult> getLkeVersion(
  GetLkeVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getLkeVersion:getLkeVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLkeVersionResult.fromMap(result);
}

/// Provides details about the Kubernetes versions available for deployment to a Kubernetes cluster.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-lke-versions).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode LKE Version.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const example = linode.getLkeVersions({});
/// export const exampleOutput = example;
/// export const exampleOutputFirstVersion = example.then(example => example.versions?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// example = linode.get_lke_versions()
/// pulumi.export("exampleOutput", example)
/// pulumi.export("exampleOutputFirstVersion", example.versions[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Linode.GetLkeVersions.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["exampleOutput"] = example,
///         ["exampleOutputFirstVersion"] = example.Apply(getLkeVersionsResult => getLkeVersionsResult.Versions[0]),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := linode.GetLkeVersions(ctx, &linode.GetLkeVersionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("exampleOutput", example)
/// 		ctx.Export("exampleOutputFirstVersion", example.Versions[0])
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetLkeVersionsArgs;
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
///         final var example = LinodeFunctions.getLkeVersions(GetLkeVersionsArgs.builder()
///             .build());
///
///         ctx.export("exampleOutput", example);
///         ctx.export("exampleOutputFirstVersion", example.versions()[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: linode:getLkeVersions
///       arguments: {}
/// outputs:
///   exampleOutput: ${example}
///   exampleOutputFirstVersion: ${example.versions[0]}
/// ```
///
///
/// The following example shows how one might use this data source to access information about a Linode LKE Version
/// with additional information about the Linode LKE Version's tier (`enterprise` or `standard`).
///
/// &gt; **_NOTE:_**  This functionality may not be currently available to all users and can only be used with v4beta.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const exampleEnterprise = linode.getLkeVersions({
///     tier: "enterprise",
/// });
/// export const exampleEnterpriseOutput = exampleEnterprise;
/// export const exampleEnterpriseOutputFirstVersion = exampleEnterprise.then(exampleEnterprise => exampleEnterprise.versions?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// example_enterprise = linode.get_lke_versions(tier="enterprise")
/// pulumi.export("exampleEnterpriseOutput", example_enterprise)
/// pulumi.export("exampleEnterpriseOutputFirstVersion", example_enterprise.versions[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleEnterprise = Linode.GetLkeVersions.Invoke(new()
///     {
///         Tier = "enterprise",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["exampleEnterpriseOutput"] = exampleEnterprise,
///         ["exampleEnterpriseOutputFirstVersion"] = exampleEnterprise.Apply(getLkeVersionsResult => getLkeVersionsResult.Versions[0]),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleEnterprise, err := linode.GetLkeVersions(ctx, &linode.GetLkeVersionsArgs{
/// 			Tier: pulumi.StringRef("enterprise"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("exampleEnterpriseOutput", exampleEnterprise)
/// 		ctx.Export("exampleEnterpriseOutputFirstVersion", exampleEnterprise.Versions[0])
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetLkeVersionsArgs;
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
///         final var exampleEnterprise = LinodeFunctions.getLkeVersions(GetLkeVersionsArgs.builder()
///             .tier("enterprise")
///             .build());
///
///         ctx.export("exampleEnterpriseOutput", exampleEnterprise);
///         ctx.export("exampleEnterpriseOutputFirstVersion", exampleEnterprise.versions()[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   exampleEnterprise:
///     fn::invoke:
///       function: linode:getLkeVersions
///       arguments:
///         tier: enterprise
/// outputs:
///   exampleEnterpriseOutput: ${exampleEnterprise}
///   exampleEnterpriseOutputFirstVersion: ${exampleEnterprise.versions[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_lke_versions_get_lke_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLkeVersionsResult> getLkeVersions(
  GetLkeVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getLkeVersions:getLkeVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLkeVersionsResult.fromMap(result);
}

/// &gt; **Early Access:** Lock functionality is in early access and may not be available to all users.
///
/// &gt; **Important** Only unrestricted users can view locks. Restricted users cannot access lock information even if they have permissions for the resource.
///
/// Provides information about a Linode Lock. Locks prevent accidental deletion, rebuild operations, and service transfers of resources.
///
/// For more information, see the Linode APIv4 docs (TBD).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const myLock = linode.getLock({
///     id: 123456,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_lock = linode.get_lock(id=123456)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myLock = Linode.GetLock.Invoke(new()
///     {
///         Id = 123456,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupLock(ctx, &linode.LookupLockArgs{
/// 			Id: 123456,
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetLockArgs;
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
///         final var myLock = LinodeFunctions.getLock(GetLockArgs.builder()
///             .id(123456)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myLock:
///     fn::invoke:
///       function: linode:getLock
///       arguments:
///         id: 123456
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_lock_get_lock_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLockResult> getLock(
  GetLockArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getLock:getLock',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLockResult.fromMap(result);
}

/// &gt; **Early Access:** Lock functionality is in early access and may not be available to all users.
///
/// &gt; **Important** Only unrestricted users can view locks. Restricted users cannot access lock information even if they have permissions for the resources.
///
/// Provides information about Linode Locks that match a set of filters. Locks prevent accidental deletion, rebuild operations, and service transfers of resources.
///
/// For more information, see the Linode APIv4 docs (TBD).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const myInstanceLocks = linode.getLocks({
///     filters: [{
///         name: "lock_type",
///         values: ["cannot_delete"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_instance_locks = linode.get_locks(filters=[{
///     "name": "lock_type",
///     "values": ["cannot_delete"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myInstanceLocks = Linode.GetLocks.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetLocksFilterInputArgs
///             {
///                 Name = "lock_type",
///                 Values = new[]
///                 {
///                     "cannot_delete",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetLocks(ctx, &linode.GetLocksArgs{
/// 			Filters: []linode.GetLocksFilter{
/// 				{
/// 					Name: "lock_type",
/// 					Values: []string{
/// 						"cannot_delete",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetLocksArgs;
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
///         final var myInstanceLocks = LinodeFunctions.getLocks(GetLocksArgs.builder()
///             .filters(GetLocksFilterArgs.builder()
///                 .name("lock_type")
///                 .values("cannot_delete")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myInstanceLocks:
///     fn::invoke:
///       function: linode:getLocks
///       arguments:
///         filters:
///           - name: lock_type
///             values:
///               - cannot_delete
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const all = linode.getLocks({});
/// export const allLockIds = all.then(all => all.locks.map(__item => __item.id));
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all = linode.get_locks()
/// pulumi.export("allLockIds", [__item.id for __item in all.locks])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Linode.GetLocks.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["allLockIds"] = all.Apply(getLocksResult => getLocksResult.Locks).Select(__item => __item.Id).ToList(),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// all, err := linode.GetLocks(ctx, &linode.GetLocksArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("allLockIds", pulumi.IntArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:3,11-26)))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetLocksArgs;
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
///         final var all = LinodeFunctions.getLocks(GetLocksArgs.builder()
///             .build());
///
///         ctx.export("allLockIds", all.locks().stream().map(element -> element.id()).collect(toList()));
///     }
/// }
/// ```
///
///
/// ## Filterable Fields
///
/// * `id`
///
/// * `lock_type`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_locks_get_locks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocksResult> getLocks(
  GetLocksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getLocks:getLocks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocksResult.fromMap(result);
}

/// Provides details about the Maintenance Policies available to apply to Accounts and Instances.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-maintenance-policies). (**Note: v4beta only.**)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const example = linode.getMaintenancePolicies({});
/// export const exampleOutput = example;
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// example = linode.get_maintenance_policies()
/// pulumi.export("exampleOutput", example)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Linode.GetMaintenancePolicies.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["exampleOutput"] = example,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := linode.GetMaintenancePolicies(ctx, &linode.GetMaintenancePoliciesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("exampleOutput", example)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetMaintenancePoliciesArgs;
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
///         final var example = LinodeFunctions.getMaintenancePolicies(GetMaintenancePoliciesArgs.builder()
///             .build());
///
///         ctx.export("exampleOutput", example);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: linode:getMaintenancePolicies
///       arguments: {}
/// outputs:
///   exampleOutput: ${example}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_maintenance_policies_get_maintenance_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMaintenancePoliciesResult> getMaintenancePolicies(
  GetMaintenancePoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getMaintenancePolicies:getMaintenancePolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMaintenancePoliciesResult.fromMap(result);
}

/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_nb_types_get_nb_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNbTypesResult> getNbTypes(
  GetNbTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getNbTypes:getNbTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNbTypesResult.fromMap(result);
}

/// Provides information about Linode Network Transfer Prices that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-network-transfer-prices).
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_network_transfer_prices_get_network_transfer_prices_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkTransferPricesResult> getNetworkTransferPrices(
  GetNetworkTransferPricesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getNetworkTransferPrices:getNetworkTransferPrices',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkTransferPricesResult.fromMap(result);
}

/// Provides information about a Linode Networking IP Address
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-ip).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode Networking IP Address.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const ns1LinodeCom = linode.getNetworkingIp({
///     address: "162.159.27.72",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// ns1_linode_com = linode.get_networking_ip(address="162.159.27.72")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ns1LinodeCom = Linode.GetNetworkingIp.Invoke(new()
///     {
///         Address = "162.159.27.72",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupNetworkingIp(ctx, &linode.LookupNetworkingIpArgs{
/// 			Address: "162.159.27.72",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetNetworkingIpArgs;
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
///         final var ns1LinodeCom = LinodeFunctions.getNetworkingIp(GetNetworkingIpArgs.builder()
///             .address("162.159.27.72")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ns1LinodeCom:
///     fn::invoke:
///       function: linode:getNetworkingIp
///       arguments:
///         address: 162.159.27.72
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_networking_ip_get_networking_ip_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkingIpResult> getNetworkingIp(
  GetNetworkingIpArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getNetworkingIp:getNetworkingIp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkingIpResult.fromMap(result);
}

/// Provides information about all IP addresses associated with the current Linode account, including both assigned and unassigned reserved IP addresses.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const all = linode.getNetworkingIps({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all = linode.get_networking_ips()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Linode.GetNetworkingIps.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetNetworkingIps(ctx, &linode.GetNetworkingIpsArgs{}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetNetworkingIpsArgs;
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
///         final var all = LinodeFunctions.getNetworkingIps(GetNetworkingIpsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: linode:getNetworkingIps
///       arguments: {}
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const filtered = linode.getNetworkingIps({
///     filters: [{
///         name: "region",
///         values: ["us-mia"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// filtered = linode.get_networking_ips(filters=[{
///     "name": "region",
///     "values": ["us-mia"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filtered = Linode.GetNetworkingIps.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetNetworkingIpsFilterInputArgs
///             {
///                 Name = "region",
///                 Values = new[]
///                 {
///                     "us-mia",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetNetworkingIps(ctx, &linode.GetNetworkingIpsArgs{
/// 			Filters: []linode.GetNetworkingIpsFilter{
/// 				{
/// 					Name: "region",
/// 					Values: []string{
/// 						"us-mia",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetNetworkingIpsArgs;
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
///         final var filtered = LinodeFunctions.getNetworkingIps(GetNetworkingIpsArgs.builder()
///             .filters(GetNetworkingIpsFilterArgs.builder()
///                 .name("region")
///                 .values("us-mia")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   filtered:
///     fn::invoke:
///       function: linode:getNetworkingIps
///       arguments:
///         filters:
///           - name: region
///             values:
///               - us-mia
/// ```
///
///
/// ## Filterable Fields
///
/// * `address`
///
/// * `gateway`
///
/// * `subnet_mask`
///
/// * `prefix`
///
/// * `type`
///
/// * `public`
///
/// * `rdns`
///
/// * `linode_id`
///
/// * `region`
///
/// * `reserved`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_networking_ips_get_networking_ips_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkingIpsResult> getNetworkingIps(
  GetNetworkingIpsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getNetworkingIps:getNetworkingIps',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkingIpsResult.fromMap(result);
}

/// Provides details about a Linode NodeBalancer.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-node-balancer).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_nodebalancer = linode.getNodeBalancer({
///     id: 123,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_nodebalancer = linode.get_node_balancer(id=123)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_nodebalancer = Linode.GetNodeBalancer.Invoke(new()
///     {
///         Id = 123,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupNodeBalancer(ctx, &linode.LookupNodeBalancerArgs{
/// 			Id: 123,
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetNodeBalancerArgs;
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
///         final var my-nodebalancer = LinodeFunctions.getNodeBalancer(GetNodeBalancerArgs.builder()
///             .id(123)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-nodebalancer:
///     fn::invoke:
///       function: linode:getNodeBalancer
///       arguments:
///         id: 123
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_node_balancer_get_node_balancer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeBalancerResult> getNodeBalancer(
  GetNodeBalancerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getNodeBalancer:getNodeBalancer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeBalancerResult.fromMap(result);
}

/// Provides details about a Linode NodeBalancer Config.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-node-balancer-config).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_config = linode.getNodeBalancerConfig({
///     id: 123,
///     nodebalancerId: 456,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_config = linode.get_node_balancer_config(id=123,
///     nodebalancer_id=456)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_config = Linode.GetNodeBalancerConfig.Invoke(new()
///     {
///         Id = 123,
///         NodebalancerId = 456,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupNodeBalancerConfig(ctx, &linode.LookupNodeBalancerConfigArgs{
/// 			Id:             123,
/// 			NodebalancerId: 456,
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetNodeBalancerConfigArgs;
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
///         final var my-config = LinodeFunctions.getNodeBalancerConfig(GetNodeBalancerConfigArgs.builder()
///             .id(123)
///             .nodebalancerId(456)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-config:
///     fn::invoke:
///       function: linode:getNodeBalancerConfig
///       arguments:
///         id: 123
///         nodebalancerId: 456
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_node_balancer_config_get_node_balancer_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeBalancerConfigResult> getNodeBalancerConfig(
  GetNodeBalancerConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getNodeBalancerConfig:getNodeBalancerConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeBalancerConfigResult.fromMap(result);
}

/// Provides details about a Linode NodeBalancer node.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-node-balancer-node).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_node = linode.getNodeBalancerNode({
///     id: 123,
///     nodebalancerId: 456,
///     configId: 789,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_node = linode.get_node_balancer_node(id=123,
///     nodebalancer_id=456,
///     config_id=789)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_node = Linode.GetNodeBalancerNode.Invoke(new()
///     {
///         Id = 123,
///         NodebalancerId = 456,
///         ConfigId = 789,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupNodeBalancerNode(ctx, &linode.LookupNodeBalancerNodeArgs{
/// 			Id:             123,
/// 			NodebalancerId: 456,
/// 			ConfigId:       789,
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetNodeBalancerNodeArgs;
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
///         final var my-node = LinodeFunctions.getNodeBalancerNode(GetNodeBalancerNodeArgs.builder()
///             .id(123)
///             .nodebalancerId(456)
///             .configId(789)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-node:
///     fn::invoke:
///       function: linode:getNodeBalancerNode
///       arguments:
///         id: 123
///         nodebalancerId: 456
///         configId: 789
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_node_balancer_node_get_node_balancer_node_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeBalancerNodeResult> getNodeBalancerNode(
  GetNodeBalancerNodeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getNodeBalancerNode:getNodeBalancerNode',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeBalancerNodeResult.fromMap(result);
}

/// Provides information about Linode NodeBalancer Configs that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-node-balancer-configs).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a list of NodeBalancer Configs.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const filterNbConfigs = linode.getNodebalancerConfigs({
///     nodebalancerId: 12345,
///     filters: [{
///         name: "port",
///         values: ["80"],
///     }],
/// });
/// export const nodebalancerConfigId = filterNbConfigs.then(filterNbConfigs => filterNbConfigs.nodebalancerConfigs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// filter_nb_configs = linode.get_nodebalancer_configs(nodebalancer_id=12345,
///     filters=[{
///         "name": "port",
///         "values": ["80"],
///     }])
/// pulumi.export("nodebalancerConfigId", filter_nb_configs.nodebalancer_configs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filterNbConfigs = Linode.GetNodebalancerConfigs.Invoke(new()
///     {
///         NodebalancerId = 12345,
///         Filters = new[]
///         {
///             new Linode.Inputs.GetNodebalancerConfigsFilterInputArgs
///             {
///                 Name = "port",
///                 Values = new[]
///                 {
///                     "80",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["nodebalancerConfigId"] = filterNbConfigs.Apply(getNodebalancerConfigsResult => getNodebalancerConfigsResult.NodebalancerConfigs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		filterNbConfigs, err := linode.GetNodebalancerConfigs(ctx, &linode.GetNodebalancerConfigsArgs{
/// 			NodebalancerId: 12345,
/// 			Filters: []linode.GetNodebalancerConfigsFilter{
/// 				{
/// 					Name: "port",
/// 					Values: []string{
/// 						"80",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nodebalancerConfigId", filterNbConfigs.NodebalancerConfigs[0].Id)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetNodebalancerConfigsArgs;
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
///         final var filterNbConfigs = LinodeFunctions.getNodebalancerConfigs(GetNodebalancerConfigsArgs.builder()
///             .nodebalancerId(12345)
///             .filters(GetNodebalancerConfigsFilterArgs.builder()
///                 .name("port")
///                 .values("80")
///                 .build())
///             .build());
///
///         ctx.export("nodebalancerConfigId", filterNbConfigs.nodebalancerConfigs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   filterNbConfigs:
///     fn::invoke:
///       function: linode:getNodebalancerConfigs
///       arguments:
///         nodebalancerId: 12345
///         filters:
///           - name: port
///             values:
///               - '80'
/// outputs:
///   nodebalancerConfigId: ${filterNbConfigs.nodebalancerConfigs[0].id}
/// ```
///
///
/// ## Filterable Fields
///
/// * `algorithm`
///
/// * `check`
///
/// * `nodebalancer_id`
///
/// * `port`
///
/// * `protocol`
///
/// * `proxy_protocol`
///
/// * `stickiness`
///
/// * `check_path`
///
/// * `check_body`
///
/// * `check_passive`
///
/// * `cipher_suite`
///
/// * `ssl_commonname`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_nodebalancer_configs_get_nodebalancer_configs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodebalancerConfigsResult> getNodebalancerConfigs(
  GetNodebalancerConfigsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getNodebalancerConfigs:getNodebalancerConfigs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodebalancerConfigsResult.fromMap(result);
}

/// &gt; **Limited Availability** VPC-attached NodeBalancers may not currently be available to all users and may require the `api_version` provider argument must be set to `v4beta`.
///
/// Provides information about a NodeBalancer VPC configuration.
/// For more information, see the corresponding [Linode APIv4 documentation](https://techdocs.akamai.com/linode-api/reference/get-node-balancer-vpc-config).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const vpc_config = linode.getNodebalancerVpc({
///     nodebalancerId: 123,
///     id: 456,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// vpc_config = linode.get_nodebalancer_vpc(nodebalancer_id=123,
///     id=456)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpc_config = Linode.GetNodebalancerVpc.Invoke(new()
///     {
///         NodebalancerId = 123,
///         Id = 456,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetNodebalancerVpc(ctx, &linode.GetNodebalancerVpcArgs{
/// 			NodebalancerId: 123,
/// 			Id:             456,
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetNodebalancerVpcArgs;
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
///         final var vpc-config = LinodeFunctions.getNodebalancerVpc(GetNodebalancerVpcArgs.builder()
///             .nodebalancerId(123)
///             .id(456)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   vpc-config:
///     fn::invoke:
///       function: linode:getNodebalancerVpc
///       arguments:
///         nodebalancerId: 123
///         id: 456
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_nodebalancer_vpc_get_nodebalancer_vpc_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodebalancerVpcResult> getNodebalancerVpc(
  GetNodebalancerVpcArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getNodebalancerVpc:getNodebalancerVpc',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodebalancerVpcResult.fromMap(result);
}

/// &gt; **Limited Availability** VPC-attached NodeBalancers may not currently be available to all users and may require the `api_version` provider argument must be set to `v4beta`.
///
/// Provides information about Linode NodeBalancers VPC configurations that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-node-balancers).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const vpc_configs = linode.getNodebalancerVpcs({
///     nodebalancerId: 12345,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// vpc_configs = linode.get_nodebalancer_vpcs(nodebalancer_id=12345)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpc_configs = Linode.GetNodebalancerVpcs.Invoke(new()
///     {
///         NodebalancerId = 12345,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetNodebalancerVpcs(ctx, &linode.GetNodebalancerVpcsArgs{
/// 			NodebalancerId: 12345,
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetNodebalancerVpcsArgs;
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
///         final var vpc-configs = LinodeFunctions.getNodebalancerVpcs(GetNodebalancerVpcsArgs.builder()
///             .nodebalancerId(12345)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   vpc-configs:
///     fn::invoke:
///       function: linode:getNodebalancerVpcs
///       arguments:
///         nodebalancerId: 12345
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const vpc_configs = linode.getNodebalancerVpcs({
///     nodebalancerId: 12345,
///     filters: [{
///         name: "ipv4_range",
///         values: ["10.0.0.4/30"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// vpc_configs = linode.get_nodebalancer_vpcs(nodebalancer_id=12345,
///     filters=[{
///         "name": "ipv4_range",
///         "values": ["10.0.0.4/30"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpc_configs = Linode.GetNodebalancerVpcs.Invoke(new()
///     {
///         NodebalancerId = 12345,
///         Filters = new[]
///         {
///             new Linode.Inputs.GetNodebalancerVpcsFilterInputArgs
///             {
///                 Name = "ipv4_range",
///                 Values = new[]
///                 {
///                     "10.0.0.4/30",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetNodebalancerVpcs(ctx, &linode.GetNodebalancerVpcsArgs{
/// 			NodebalancerId: 12345,
/// 			Filters: []linode.GetNodebalancerVpcsFilter{
/// 				{
/// 					Name: "ipv4_range",
/// 					Values: []string{
/// 						"10.0.0.4/30",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetNodebalancerVpcsArgs;
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
///         final var vpc-configs = LinodeFunctions.getNodebalancerVpcs(GetNodebalancerVpcsArgs.builder()
///             .nodebalancerId(12345)
///             .filters(GetNodebalancerVpcsFilterArgs.builder()
///                 .name("ipv4_range")
///                 .values("10.0.0.4/30")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   vpc-configs:
///     fn::invoke:
///       function: linode:getNodebalancerVpcs
///       arguments:
///         nodebalancerId: 12345
///         filters:
///           - name: ipv4_range
///             values:
///               - 10.0.0.4/30
/// ```
///
///
/// ## Filterable Fields
///
/// * `id`
///
/// * `ipv4_range`
///
/// * `nodebalancer_id`
///
/// * `subnet_id`
///
/// * `vpc_id`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_nodebalancer_vpcs_get_nodebalancer_vpcs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodebalancerVpcsResult> getNodebalancerVpcs(
  GetNodebalancerVpcsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getNodebalancerVpcs:getNodebalancerVpcs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodebalancerVpcsResult.fromMap(result);
}

/// Provides information about Linode NodeBalancers that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-node-balancers).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode NodeBalancer.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const specific_nodebalancers = linode.getNodebalancers({
///     filters: [
///         {
///             name: "label",
///             values: ["my-nodebalancer"],
///         },
///         {
///             name: "region",
///             values: ["us-iad"],
///         },
///     ],
/// });
/// export const nodebalancerId = specific_nodebalancers.then(specific_nodebalancers => specific_nodebalancers.nodebalancers?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// specific_nodebalancers = linode.get_nodebalancers(filters=[
///     {
///         "name": "label",
///         "values": ["my-nodebalancer"],
///     },
///     {
///         "name": "region",
///         "values": ["us-iad"],
///     },
/// ])
/// pulumi.export("nodebalancerId", specific_nodebalancers.nodebalancers[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var specific_nodebalancers = Linode.GetNodebalancers.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetNodebalancersFilterInputArgs
///             {
///                 Name = "label",
///                 Values = new[]
///                 {
///                     "my-nodebalancer",
///                 },
///             },
///             new Linode.Inputs.GetNodebalancersFilterInputArgs
///             {
///                 Name = "region",
///                 Values = new[]
///                 {
///                     "us-iad",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["nodebalancerId"] = specific_nodebalancers.Apply(specific_nodebalancers => specific_nodebalancers.Apply(getNodebalancersResult => getNodebalancersResult.Nodebalancers[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		specific_nodebalancers, err := linode.GetNodebalancers(ctx, &linode.GetNodebalancersArgs{
/// 			Filters: []linode.GetNodebalancersFilter{
/// 				{
/// 					Name: "label",
/// 					Values: []string{
/// 						"my-nodebalancer",
/// 					},
/// 				},
/// 				{
/// 					Name: "region",
/// 					Values: []string{
/// 						"us-iad",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("nodebalancerId", specific_nodebalancers.Nodebalancers[0].Id)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetNodebalancersArgs;
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
///         final var specific-nodebalancers = LinodeFunctions.getNodebalancers(GetNodebalancersArgs.builder()
///             .filters(
///                 GetNodebalancersFilterArgs.builder()
///                     .name("label")
///                     .values("my-nodebalancer")
///                     .build(),
///                 GetNodebalancersFilterArgs.builder()
///                     .name("region")
///                     .values("us-iad")
///                     .build())
///             .build());
///
///         ctx.export("nodebalancerId", specific_nodebalancers.nodebalancers()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   specific-nodebalancers:
///     fn::invoke:
///       function: linode:getNodebalancers
///       arguments:
///         filters:
///           - name: label
///             values:
///               - my-nodebalancer
///           - name: region
///             values:
///               - us-iad
/// outputs:
///   nodebalancerId: ${["specific-nodebalancers"].nodebalancers[0].id}
/// ```
///
///
/// ## Filterable Fields
///
/// * `label`
///
/// * `tags`
///
/// * `ipv4`
///
/// * `ipv6`
///
/// * `hostname`
///
/// * `region`
///
/// * `client_conn_throttle`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_nodebalancers_get_nodebalancers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodebalancersResult> getNodebalancers(
  GetNodebalancersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getNodebalancers:getNodebalancers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodebalancersResult.fromMap(result);
}

/// Provides information about a Linode Object Storage Cluster
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-object-storage-cluster).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode Object Storage Cluster.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const primary = linode.getObjectStorageCluster({
///     id: "us-east-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// primary = linode.get_object_storage_cluster(id="us-east-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = Linode.GetObjectStorageCluster.Invoke(new()
///     {
///         Id = "us-east-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetObjectStorageCluster(ctx, &linode.GetObjectStorageClusterArgs{
/// 			Id: "us-east-1",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetObjectStorageClusterArgs;
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
///         final var primary = LinodeFunctions.getObjectStorageCluster(GetObjectStorageClusterArgs.builder()
///             .id("us-east-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   primary:
///     fn::invoke:
///       function: linode:getObjectStorageCluster
///       arguments:
///         id: us-east-1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_object_storage_cluster_get_object_storage_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetObjectStorageClusterResult> getObjectStorageCluster(
  GetObjectStorageClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getObjectStorageCluster:getObjectStorageCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetObjectStorageClusterResult.fromMap(result);
}

/// Provides information about Linode Object Storage endpoints available to the user.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-object-storage-endpoints).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// export = async () => {
///     const test = await linode.getObjectStorageEndpoints({
///         filters: [{
///             name: "endpoint_type",
///             values: ["E3"],
///         }],
///     });
///     return {
///         "high-performance-obj-endpoint": test.endpoints?.[0]?.s3Endpoint,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// test = linode.get_object_storage_endpoints(filters=[{
///     "name": "endpoint_type",
///     "values": ["E3"],
/// }])
/// pulumi.export("high-performance-obj-endpoint", test.endpoints[0].s3_endpoint)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Linode.GetObjectStorageEndpoints.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetObjectStorageEndpointsFilterInputArgs
///             {
///                 Name = "endpoint_type",
///                 Values = new[]
///                 {
///                     "E3",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["high-performance-obj-endpoint"] = test.Apply(getObjectStorageEndpointsResult => getObjectStorageEndpointsResult.Endpoints[0]?.S3Endpoint),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := linode.GetObjectStorageEndpoints(ctx, &linode.GetObjectStorageEndpointsArgs{
/// 			Filters: []linode.GetObjectStorageEndpointsFilter{
/// 				{
/// 					Name: "endpoint_type",
/// 					Values: []string{
/// 						"E3",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("high-performance-obj-endpoint", test.Endpoints[0].S3Endpoint)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetObjectStorageEndpointsArgs;
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
///         final var test = LinodeFunctions.getObjectStorageEndpoints(GetObjectStorageEndpointsArgs.builder()
///             .filters(GetObjectStorageEndpointsFilterArgs.builder()
///                 .name("endpoint_type")
///                 .values("E3")
///                 .build())
///             .build());
///
///         ctx.export("high-performance-obj-endpoint", test.endpoints()[0].s3Endpoint());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: linode:getObjectStorageEndpoints
///       arguments:
///         filters:
///           - name: endpoint_type
///             values:
///               - E3
/// outputs:
///   high-performance-obj-endpoint: ${test.endpoints[0].s3Endpoint}
/// ```
///
///
/// Get a list of all available endpoints of Linode Object Storage services.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// export = async () => {
///     const test = await linode.getObjectStorageEndpoints({});
///     return {
///         "available-endpoints": test.endpoints,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// test = linode.get_object_storage_endpoints()
/// pulumi.export("available-endpoints", test.endpoints)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Linode.GetObjectStorageEndpoints.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["available-endpoints"] = test.Apply(getObjectStorageEndpointsResult => getObjectStorageEndpointsResult.Endpoints),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := linode.GetObjectStorageEndpoints(ctx, &linode.GetObjectStorageEndpointsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("available-endpoints", test.Endpoints)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetObjectStorageEndpointsArgs;
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
///         final var test = LinodeFunctions.getObjectStorageEndpoints(GetObjectStorageEndpointsArgs.builder()
///             .build());
///
///         ctx.export("available-endpoints", test.endpoints());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: linode:getObjectStorageEndpoints
///       arguments: {}
/// outputs:
///   available-endpoints: ${test.endpoints}
/// ```
///
///
/// ## Filterable Fields
///
/// * `endpoint_type`
///
/// * `region`
///
/// * `s3_endpoint`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_object_storage_endpoints_get_object_storage_endpoints_args_doc}
/// [options] Invoke options controlling this call.
Future<GetObjectStorageEndpointsResult> getObjectStorageEndpoints(
  GetObjectStorageEndpointsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getObjectStorageEndpoints:getObjectStorageEndpoints',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetObjectStorageEndpointsResult.fromMap(result);
}

/// Provides details about Object Storage quota information on your account.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-object-storage-quota).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about an Object Storage quota.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const myQuota = linode.getObjectStorageQuota({
///     quotaId: "obj-buckets-br-gru-1.linodeobjects.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_quota = linode.get_object_storage_quota(quota_id="obj-buckets-br-gru-1.linodeobjects.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myQuota = Linode.GetObjectStorageQuota.Invoke(new()
///     {
///         QuotaId = "obj-buckets-br-gru-1.linodeobjects.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetObjectStorageQuota(ctx, &linode.GetObjectStorageQuotaArgs{
/// 			QuotaId: "obj-buckets-br-gru-1.linodeobjects.com",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetObjectStorageQuotaArgs;
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
///         final var myQuota = LinodeFunctions.getObjectStorageQuota(GetObjectStorageQuotaArgs.builder()
///             .quotaId("obj-buckets-br-gru-1.linodeobjects.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myQuota:
///     fn::invoke:
///       function: linode:getObjectStorageQuota
///       arguments:
///         quotaId: obj-buckets-br-gru-1.linodeobjects.com
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_object_storage_quota_get_object_storage_quota_args_doc}
/// [options] Invoke options controlling this call.
Future<GetObjectStorageQuotaResult> getObjectStorageQuota(
  GetObjectStorageQuotaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getObjectStorageQuota:getObjectStorageQuota',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetObjectStorageQuotaResult.fromMap(result);
}

/// Provides details about a list of Object Storage quotas information on your account.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-object-storage-quotas).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to list and filter information about Object Storage quotas.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const maxBucketsQuotas = linode.getObjectStorageQuotas({
///     filters: [{
///         name: "endpoint_type",
///         values: ["E0"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// max_buckets_quotas = linode.get_object_storage_quotas(filters=[{
///     "name": "endpoint_type",
///     "values": ["E0"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var maxBucketsQuotas = Linode.GetObjectStorageQuotas.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetObjectStorageQuotasFilterInputArgs
///             {
///                 Name = "endpoint_type",
///                 Values = new[]
///                 {
///                     "E0",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetObjectStorageQuotas(ctx, &linode.GetObjectStorageQuotasArgs{
/// 			Filters: []linode.GetObjectStorageQuotasFilter{
/// 				{
/// 					Name: "endpoint_type",
/// 					Values: []string{
/// 						"E0",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetObjectStorageQuotasArgs;
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
///         final var maxBucketsQuotas = LinodeFunctions.getObjectStorageQuotas(GetObjectStorageQuotasArgs.builder()
///             .filters(GetObjectStorageQuotasFilterArgs.builder()
///                 .name("endpoint_type")
///                 .values("E0")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   maxBucketsQuotas:
///     fn::invoke:
///       function: linode:getObjectStorageQuotas
///       arguments:
///         filters:
///           - name: endpoint_type
///             values:
///               - E0
/// ```
///
///
/// ## Filterable Fields
///
/// * `quota_id`
///
/// * `quota_name`
///
/// * `endpoint_type`
///
/// * `s3_endpoint`
///
/// * `description`
///
/// * `quota_limit`
///
/// * `resource_metric`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_object_storage_quotas_get_object_storage_quotas_args_doc}
/// [options] Invoke options controlling this call.
Future<GetObjectStorageQuotasResult> getObjectStorageQuotas(
  GetObjectStorageQuotasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getObjectStorageQuotas:getObjectStorageQuotas',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetObjectStorageQuotasResult.fromMap(result);
}

/// `linode.PlacementGroup` provides details about a Linode placement group.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-placement-group).
///
/// ## Example Usage
///
/// The following example shows how the resource might be used to obtain additional information about a Linode placement group.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const pg = linode.getPlacementGroup({
///     id: 12345,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// pg = linode.get_placement_group(id=12345)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pg = Linode.GetPlacementGroup.Invoke(new()
///     {
///         Id = 12345,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupPlacementGroup(ctx, &linode.LookupPlacementGroupArgs{
/// 			Id: 12345,
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetPlacementGroupArgs;
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
///         final var pg = LinodeFunctions.getPlacementGroup(GetPlacementGroupArgs.builder()
///             .id(12345)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   pg:
///     fn::invoke:
///       function: linode:getPlacementGroup
///       arguments:
///         id: 12345
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_placement_group_get_placement_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPlacementGroupResult> getPlacementGroup(
  GetPlacementGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getPlacementGroup:getPlacementGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPlacementGroupResult.fromMap(result);
}

/// Provides information about a list of Linode Placement Groups that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-placement-groups).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to list Placement Groups.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// export = async () => {
///     const all = await linode.getPlacementGroups({});
///     const filtered = await linode.getPlacementGroups({
///         filters: [{
///             name: "label",
///             values: ["my-label"],
///         }],
///     });
///     return {
///         "all-pgs": all.placementGroups,
///         "filtered-pgs": filtered.placementGroups,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all = linode.get_placement_groups()
/// filtered = linode.get_placement_groups(filters=[{
///     "name": "label",
///     "values": ["my-label"],
/// }])
/// pulumi.export("all-pgs", all.placement_groups)
/// pulumi.export("filtered-pgs", filtered.placement_groups)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Linode.GetPlacementGroups.Invoke();
///
///     var filtered = Linode.GetPlacementGroups.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetPlacementGroupsFilterInputArgs
///             {
///                 Name = "label",
///                 Values = new[]
///                 {
///                     "my-label",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["all-pgs"] = all.Apply(getPlacementGroupsResult => getPlacementGroupsResult.PlacementGroups),
///         ["filtered-pgs"] = filtered.Apply(getPlacementGroupsResult => getPlacementGroupsResult.PlacementGroups),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		all, err := linode.GetPlacementGroups(ctx, &linode.GetPlacementGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		filtered, err := linode.GetPlacementGroups(ctx, &linode.GetPlacementGroupsArgs{
/// 			Filters: []linode.GetPlacementGroupsFilter{
/// 				{
/// 					Name: "label",
/// 					Values: []string{
/// 						"my-label",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("all-pgs", all.PlacementGroups)
/// 		ctx.Export("filtered-pgs", filtered.PlacementGroups)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetPlacementGroupsArgs;
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
///         final var all = LinodeFunctions.getPlacementGroups(GetPlacementGroupsArgs.builder()
///             .build());
///
///         final var filtered = LinodeFunctions.getPlacementGroups(GetPlacementGroupsArgs.builder()
///             .filters(GetPlacementGroupsFilterArgs.builder()
///                 .name("label")
///                 .values("my-label")
///                 .build())
///             .build());
///
///         ctx.export("all-pgs", all.placementGroups());
///         ctx.export("filtered-pgs", filtered.placementGroups());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: linode:getPlacementGroups
///       arguments: {}
///   filtered:
///     fn::invoke:
///       function: linode:getPlacementGroups
///       arguments:
///         filters:
///           - name: label
///             values:
///               - my-label
/// outputs:
///   all-pgs: ${all.placementGroups}
///   filtered-pgs: ${filtered.placementGroups}
/// ```
///
///
/// ## Filterable Fields
///
/// * `id`
///
/// * `label`
///
/// * `region`
///
/// * `placement_group_type`
///
/// * `placement_group_policy`
///
/// * `is_compliant`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_placement_groups_get_placement_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPlacementGroupsResult> getPlacementGroups(
  GetPlacementGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getPlacementGroups:getPlacementGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPlacementGroupsResult.fromMap(result);
}

/// `linode.ProducerImageShareGroup` provides details about an Image Share Group.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-sharegroup). May not be currently available to all users even under v4beta.
///
/// ## Example Usage
///
/// The following example shows how the datasource might be used to obtain additional information about an Image Share Group.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const sg = linode.getProducerImageShareGroup({
///     id: 12345,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// sg = linode.get_producer_image_share_group(id=12345)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sg = Linode.GetProducerImageShareGroup.Invoke(new()
///     {
///         Id = 12345,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupProducerImageShareGroup(ctx, &linode.LookupProducerImageShareGroupArgs{
/// 			Id: 12345,
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetProducerImageShareGroupArgs;
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
///         final var sg = LinodeFunctions.getProducerImageShareGroup(GetProducerImageShareGroupArgs.builder()
///             .id(12345)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   sg:
///     fn::invoke:
///       function: linode:getProducerImageShareGroup
///       arguments:
///         id: 12345
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_producer_image_share_group_get_producer_image_share_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProducerImageShareGroupResult> getProducerImageShareGroup(
  GetProducerImageShareGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getProducerImageShareGroup:getProducerImageShareGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProducerImageShareGroupResult.fromMap(result);
}

/// Provides information about a list of Images shared in the specified Image Share Group that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-sharegroup-images). May not be currently available to all users even under v4beta.
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to list Images shared in an Image Share Group.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// export = async () => {
///     const all = await linode.getProducerImageShareGroupImageShares({
///         sharegroupId: 123,
///     });
///     const filtered = await linode.getProducerImageShareGroupImageShares({
///         sharegroupId: 123,
///         filters: [{
///             name: "label",
///             values: ["my-label"],
///         }],
///     });
///     return {
///         "all-shared-images": all.imageShares,
///         "filtered-shared-images": filtered.imageShares,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all = linode.get_producer_image_share_group_image_shares(sharegroup_id=123)
/// filtered = linode.get_producer_image_share_group_image_shares(sharegroup_id=123,
///     filters=[{
///         "name": "label",
///         "values": ["my-label"],
///     }])
/// pulumi.export("all-shared-images", all.image_shares)
/// pulumi.export("filtered-shared-images", filtered.image_shares)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Linode.GetProducerImageShareGroupImageShares.Invoke(new()
///     {
///         SharegroupId = 123,
///     });
///
///     var filtered = Linode.GetProducerImageShareGroupImageShares.Invoke(new()
///     {
///         SharegroupId = 123,
///         Filters = new[]
///         {
///             new Linode.Inputs.GetProducerImageShareGroupImageSharesFilterInputArgs
///             {
///                 Name = "label",
///                 Values = new[]
///                 {
///                     "my-label",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["all-shared-images"] = all.Apply(getProducerImageShareGroupImageSharesResult => getProducerImageShareGroupImageSharesResult.ImageShares),
///         ["filtered-shared-images"] = filtered.Apply(getProducerImageShareGroupImageSharesResult => getProducerImageShareGroupImageSharesResult.ImageShares),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		all, err := linode.GetProducerImageShareGroupImageShares(ctx, &linode.GetProducerImageShareGroupImageSharesArgs{
/// 			SharegroupId: 123,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		filtered, err := linode.GetProducerImageShareGroupImageShares(ctx, &linode.GetProducerImageShareGroupImageSharesArgs{
/// 			SharegroupId: 123,
/// 			Filters: []linode.GetProducerImageShareGroupImageSharesFilter{
/// 				{
/// 					Name: "label",
/// 					Values: []string{
/// 						"my-label",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("all-shared-images", all.ImageShares)
/// 		ctx.Export("filtered-shared-images", filtered.ImageShares)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetProducerImageShareGroupImageSharesArgs;
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
///         final var all = LinodeFunctions.getProducerImageShareGroupImageShares(GetProducerImageShareGroupImageSharesArgs.builder()
///             .sharegroupId(123)
///             .build());
///
///         final var filtered = LinodeFunctions.getProducerImageShareGroupImageShares(GetProducerImageShareGroupImageSharesArgs.builder()
///             .sharegroupId(123)
///             .filters(GetProducerImageShareGroupImageSharesFilterArgs.builder()
///                 .name("label")
///                 .values("my-label")
///                 .build())
///             .build());
///
///         ctx.export("all-shared-images", all.imageShares());
///         ctx.export("filtered-shared-images", filtered.imageShares());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: linode:getProducerImageShareGroupImageShares
///       arguments:
///         sharegroupId: 123
///   filtered:
///     fn::invoke:
///       function: linode:getProducerImageShareGroupImageShares
///       arguments:
///         sharegroupId: 123
///         filters:
///           - name: label
///             values:
///               - my-label
/// outputs:
///   all-shared-images: ${all.imageShares}
///   filtered-shared-images: ${filtered.imageShares}
/// ```
///
///
/// ## Filterable Fields
///
/// * `id`
///
/// * `label`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_producer_image_share_group_image_shares_get_producer_image_share_group_image_shares_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProducerImageShareGroupImageSharesResult> getProducerImageShareGroupImageShares(
  GetProducerImageShareGroupImageSharesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getProducerImageShareGroupImageShares:getProducerImageShareGroupImageShares',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProducerImageShareGroupImageSharesResult.fromMap(result);
}

/// `linode.ProducerImageShareGroupMember` provides details about a Member of an Image Share Group.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-sharegroup-member-token). May not be currently available to all users even under v4beta.
///
/// ## Example Usage
///
/// The following example shows how the datasource might be used to obtain additional information about a member of an Image Share Group.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const member = linode.getProducerImageShareGroupMember({
///     sharegroupId: 12345,
///     tokenUuid: "db58ab2e-3021-4b08-9426-8e456f6dd268",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// member = linode.get_producer_image_share_group_member(sharegroup_id=12345,
///     token_uuid="db58ab2e-3021-4b08-9426-8e456f6dd268")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var member = Linode.GetProducerImageShareGroupMember.Invoke(new()
///     {
///         SharegroupId = 12345,
///         TokenUuid = "db58ab2e-3021-4b08-9426-8e456f6dd268",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupProducerImageShareGroupMember(ctx, &linode.LookupProducerImageShareGroupMemberArgs{
/// 			SharegroupId: 12345,
/// 			TokenUuid:    "db58ab2e-3021-4b08-9426-8e456f6dd268",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetProducerImageShareGroupMemberArgs;
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
///         final var member = LinodeFunctions.getProducerImageShareGroupMember(GetProducerImageShareGroupMemberArgs.builder()
///             .sharegroupId(12345)
///             .tokenUuid("db58ab2e-3021-4b08-9426-8e456f6dd268")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   member:
///     fn::invoke:
///       function: linode:getProducerImageShareGroupMember
///       arguments:
///         sharegroupId: 12345
///         tokenUuid: db58ab2e-3021-4b08-9426-8e456f6dd268
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_producer_image_share_group_member_get_producer_image_share_group_member_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProducerImageShareGroupMemberResult> getProducerImageShareGroupMember(
  GetProducerImageShareGroupMemberArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getProducerImageShareGroupMember:getProducerImageShareGroupMember',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProducerImageShareGroupMemberResult.fromMap(result);
}

/// Provides information about a list of Members of an Image Share Group that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-sharegroup-members). May not be currently available to all users even under v4beta.
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to list Image Share Group Members.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// export = async () => {
///     const all = await linode.getProducerImageShareGroupMembers({
///         sharegroupId: 12345,
///     });
///     const filtered = await linode.getProducerImageShareGroupMembers({
///         sharegroupId: 12345,
///         filters: [{
///             name: "label",
///             values: ["my-label"],
///         }],
///     });
///     return {
///         "all-share-group-members": all.members,
///         "filtered-share-group-members": filtered.members,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all = linode.get_producer_image_share_group_members(sharegroup_id=12345)
/// filtered = linode.get_producer_image_share_group_members(sharegroup_id=12345,
///     filters=[{
///         "name": "label",
///         "values": ["my-label"],
///     }])
/// pulumi.export("all-share-group-members", all.members)
/// pulumi.export("filtered-share-group-members", filtered.members)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Linode.GetProducerImageShareGroupMembers.Invoke(new()
///     {
///         SharegroupId = 12345,
///     });
///
///     var filtered = Linode.GetProducerImageShareGroupMembers.Invoke(new()
///     {
///         SharegroupId = 12345,
///         Filters = new[]
///         {
///             new Linode.Inputs.GetProducerImageShareGroupMembersFilterInputArgs
///             {
///                 Name = "label",
///                 Values = new[]
///                 {
///                     "my-label",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["all-share-group-members"] = all.Apply(getProducerImageShareGroupMembersResult => getProducerImageShareGroupMembersResult.Members),
///         ["filtered-share-group-members"] = filtered.Apply(getProducerImageShareGroupMembersResult => getProducerImageShareGroupMembersResult.Members),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		all, err := linode.GetProducerImageShareGroupMembers(ctx, &linode.GetProducerImageShareGroupMembersArgs{
/// 			SharegroupId: 12345,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		filtered, err := linode.GetProducerImageShareGroupMembers(ctx, &linode.GetProducerImageShareGroupMembersArgs{
/// 			SharegroupId: 12345,
/// 			Filters: []linode.GetProducerImageShareGroupMembersFilter{
/// 				{
/// 					Name: "label",
/// 					Values: []string{
/// 						"my-label",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("all-share-group-members", all.Members)
/// 		ctx.Export("filtered-share-group-members", filtered.Members)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetProducerImageShareGroupMembersArgs;
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
///         final var all = LinodeFunctions.getProducerImageShareGroupMembers(GetProducerImageShareGroupMembersArgs.builder()
///             .sharegroupId(12345)
///             .build());
///
///         final var filtered = LinodeFunctions.getProducerImageShareGroupMembers(GetProducerImageShareGroupMembersArgs.builder()
///             .sharegroupId(12345)
///             .filters(GetProducerImageShareGroupMembersFilterArgs.builder()
///                 .name("label")
///                 .values("my-label")
///                 .build())
///             .build());
///
///         ctx.export("all-share-group-members", all.members());
///         ctx.export("filtered-share-group-members", filtered.members());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: linode:getProducerImageShareGroupMembers
///       arguments:
///         sharegroupId: 12345
///   filtered:
///     fn::invoke:
///       function: linode:getProducerImageShareGroupMembers
///       arguments:
///         sharegroupId: 12345
///         filters:
///           - name: label
///             values:
///               - my-label
/// outputs:
///   all-share-group-members: ${all.members}
///   filtered-share-group-members: ${filtered.members}
/// ```
///
///
/// ## Filterable Fields
///
/// * `token_uuid`
///
/// * `label`
///
/// * `status`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_producer_image_share_group_members_get_producer_image_share_group_members_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProducerImageShareGroupMembersResult> getProducerImageShareGroupMembers(
  GetProducerImageShareGroupMembersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getProducerImageShareGroupMembers:getProducerImageShareGroupMembers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProducerImageShareGroupMembersResult.fromMap(result);
}

/// Provides information about a list of Image Share Groups that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-sharegroups). May not be currently available to all users even under v4beta.
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to list Image Share Groups.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// export = async () => {
///     const all = await linode.getProducerImageShareGroups({});
///     const filtered = await linode.getProducerImageShareGroups({
///         filters: [{
///             name: "label",
///             values: ["my-label"],
///         }],
///     });
///     return {
///         "all-share-groups": all.imageShareGroups,
///         "filtered-share-groups": filtered.imageShareGroups,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all = linode.get_producer_image_share_groups()
/// filtered = linode.get_producer_image_share_groups(filters=[{
///     "name": "label",
///     "values": ["my-label"],
/// }])
/// pulumi.export("all-share-groups", all.image_share_groups)
/// pulumi.export("filtered-share-groups", filtered.image_share_groups)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Linode.GetProducerImageShareGroups.Invoke();
///
///     var filtered = Linode.GetProducerImageShareGroups.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetProducerImageShareGroupsFilterInputArgs
///             {
///                 Name = "label",
///                 Values = new[]
///                 {
///                     "my-label",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["all-share-groups"] = all.Apply(getProducerImageShareGroupsResult => getProducerImageShareGroupsResult.ImageShareGroups),
///         ["filtered-share-groups"] = filtered.Apply(getProducerImageShareGroupsResult => getProducerImageShareGroupsResult.ImageShareGroups),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		all, err := linode.GetProducerImageShareGroups(ctx, &linode.GetProducerImageShareGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		filtered, err := linode.GetProducerImageShareGroups(ctx, &linode.GetProducerImageShareGroupsArgs{
/// 			Filters: []linode.GetProducerImageShareGroupsFilter{
/// 				{
/// 					Name: "label",
/// 					Values: []string{
/// 						"my-label",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("all-share-groups", all.ImageShareGroups)
/// 		ctx.Export("filtered-share-groups", filtered.ImageShareGroups)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetProducerImageShareGroupsArgs;
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
///         final var all = LinodeFunctions.getProducerImageShareGroups(GetProducerImageShareGroupsArgs.builder()
///             .build());
///
///         final var filtered = LinodeFunctions.getProducerImageShareGroups(GetProducerImageShareGroupsArgs.builder()
///             .filters(GetProducerImageShareGroupsFilterArgs.builder()
///                 .name("label")
///                 .values("my-label")
///                 .build())
///             .build());
///
///         ctx.export("all-share-groups", all.imageShareGroups());
///         ctx.export("filtered-share-groups", filtered.imageShareGroups());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: linode:getProducerImageShareGroups
///       arguments: {}
///   filtered:
///     fn::invoke:
///       function: linode:getProducerImageShareGroups
///       arguments:
///         filters:
///           - name: label
///             values:
///               - my-label
/// outputs:
///   all-share-groups: ${all.imageShareGroups}
///   filtered-share-groups: ${filtered.imageShareGroups}
/// ```
///
///
/// ## Filterable Fields
///
/// * `id`
///
/// * `label`
///
/// * `is_suspended`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_producer_image_share_groups_get_producer_image_share_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProducerImageShareGroupsResult> getProducerImageShareGroups(
  GetProducerImageShareGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getProducerImageShareGroups:getProducerImageShareGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProducerImageShareGroupsResult.fromMap(result);
}

/// Provides information about a Linode profile.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-profile).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access profile details.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const profile = linode.getProfile({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// profile = linode.get_profile()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var profile = Linode.GetProfile.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetProfile(ctx, map[string]interface{}{}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
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
///         final var profile = LinodeFunctions.getProfile(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   profile:
///     fn::invoke:
///       function: linode:getProfile
///       arguments: {}
/// ```
/// [options] Invoke options controlling this call.
Future<GetProfileResult> getProfile(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getProfile:getProfile',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProfileResult.fromMap(result);
}

/// `linode.getRegion` provides details about a specific Linode region. See all regions [here](https://api.linode.com/v4/regions).
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-region).
///
/// ## Example Usage
///
/// The following example shows how the resource might be used to obtain additional information about a Linode region.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const region = linode.getRegion({
///     id: "us-east",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// region = linode.get_region(id="us-east")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var region = Linode.GetRegion.Invoke(new()
///     {
///         Id = "us-east",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetRegion(ctx, &linode.GetRegionArgs{
/// 			Id: "us-east",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetRegionArgs;
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
///         final var region = LinodeFunctions.getRegion(GetRegionArgs.builder()
///             .id("us-east")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   region:
///     fn::invoke:
///       function: linode:getRegion
///       arguments:
///         id: us-east
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_region_get_region_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionResult> getRegion(
  GetRegionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getRegion:getRegion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionResult.fromMap(result);
}

/// Provides information about Linode regions that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-regions).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const filtered_regions = linode.getRegions({
///     filters: [
///         {
///             name: "status",
///             values: ["ok"],
///         },
///         {
///             name: "capabilities",
///             values: ["NodeBalancers"],
///         },
///     ],
/// });
/// export const regions = filtered_regions.then(filtered_regions => filtered_regions.regions);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// filtered_regions = linode.get_regions(filters=[
///     {
///         "name": "status",
///         "values": ["ok"],
///     },
///     {
///         "name": "capabilities",
///         "values": ["NodeBalancers"],
///     },
/// ])
/// pulumi.export("regions", filtered_regions.regions)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filtered_regions = Linode.GetRegions.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetRegionsFilterInputArgs
///             {
///                 Name = "status",
///                 Values = new[]
///                 {
///                     "ok",
///                 },
///             },
///             new Linode.Inputs.GetRegionsFilterInputArgs
///             {
///                 Name = "capabilities",
///                 Values = new[]
///                 {
///                     "NodeBalancers",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["regions"] = filtered_regions.Apply(filtered_regions => filtered_regions.Apply(getRegionsResult => getRegionsResult.Regions)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		filtered_regions, err := linode.GetRegions(ctx, &linode.GetRegionsArgs{
/// 			Filters: []linode.GetRegionsFilter{
/// 				{
/// 					Name: "status",
/// 					Values: []string{
/// 						"ok",
/// 					},
/// 				},
/// 				{
/// 					Name: "capabilities",
/// 					Values: []string{
/// 						"NodeBalancers",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("regions", filtered_regions.Regions)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetRegionsArgs;
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
///         final var filtered-regions = LinodeFunctions.getRegions(GetRegionsArgs.builder()
///             .filters(
///                 GetRegionsFilterArgs.builder()
///                     .name("status")
///                     .values("ok")
///                     .build(),
///                 GetRegionsFilterArgs.builder()
///                     .name("capabilities")
///                     .values("NodeBalancers")
///                     .build())
///             .build());
///
///         ctx.export("regions", filtered_regions.regions());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   filtered-regions:
///     fn::invoke:
///       function: linode:getRegions
///       arguments:
///         filters:
///           - name: status
///             values:
///               - ok
///           - name: capabilities
///             values:
///               - NodeBalancers
/// outputs:
///   regions: ${["filtered-regions"].regions}
/// ```
///
///
/// ## Filterable Fields
///
/// * `status`
///
/// * `country`
///
/// * `capabilities`
///
/// * `site_type`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_regions_get_regions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionsResult> getRegions(
  GetRegionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getRegions:getRegions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionsResult.fromMap(result);
}

/// `linode.SshKey` provides access to a specifically labeled SSH Key in the Profile of the User identified by the access token.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-ssh-key).
///
/// ## Example Usage
///
/// The following example shows how the resource might be used to obtain the name of the SSH Key configured on the Linode user profile.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foo = linode.getSshKey({
///     label: "foo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foo = linode.get_ssh_key(label="foo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Linode.GetSshKey.Invoke(new()
///     {
///         Label = "foo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupSshKey(ctx, &linode.LookupSshKeyArgs{
/// 			Label: "foo",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetSshKeyArgs;
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
///         final var foo = LinodeFunctions.getSshKey(GetSshKeyArgs.builder()
///             .label("foo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: linode:getSshKey
///       arguments:
///         label: foo
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_ssh_key_get_ssh_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSshKeyResult> getSshKey(
  GetSshKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getSshKey:getSshKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSshKeyResult.fromMap(result);
}

/// `linode.SshKey` provides access to a filtered list of SSH Keys in the Profile of the User identified by the access token.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-ssh-keys).
///
/// ## Example Usage
///
/// The following example shows how the resource might be used to obtain the names of the SSH Keys configured on the Linode user profile.
///
/// The following example shows how one might use this data source to access information about a Linode Kernel.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const filteredSsh = linode.getSshkeys({
///     filters: [
///         {
///             name: "label",
///             values: ["my-ssh"],
///         },
///         {
///             name: "ssh_key",
///             values: ["RSA-6522525"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// filtered_ssh = linode.get_sshkeys(filters=[
///     {
///         "name": "label",
///         "values": ["my-ssh"],
///     },
///     {
///         "name": "ssh_key",
///         "values": ["RSA-6522525"],
///     },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filteredSsh = Linode.GetSshkeys.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetSshkeysFilterInputArgs
///             {
///                 Name = "label",
///                 Values = new[]
///                 {
///                     "my-ssh",
///                 },
///             },
///             new Linode.Inputs.GetSshkeysFilterInputArgs
///             {
///                 Name = "ssh_key",
///                 Values = new[]
///                 {
///                     "RSA-6522525",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetSshkeys(ctx, &linode.GetSshkeysArgs{
/// 			Filters: []linode.GetSshkeysFilter{
/// 				{
/// 					Name: "label",
/// 					Values: []string{
/// 						"my-ssh",
/// 					},
/// 				},
/// 				{
/// 					Name: "ssh_key",
/// 					Values: []string{
/// 						"RSA-6522525",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetSshkeysArgs;
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
///         final var filteredSsh = LinodeFunctions.getSshkeys(GetSshkeysArgs.builder()
///             .filters(
///                 GetSshkeysFilterArgs.builder()
///                     .name("label")
///                     .values("my-ssh")
///                     .build(),
///                 GetSshkeysFilterArgs.builder()
///                     .name("ssh_key")
///                     .values("RSA-6522525")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   filteredSsh:
///     fn::invoke:
///       function: linode:getSshkeys
///       arguments:
///         filters:
///           - name: label
///             values:
///               - my-ssh
///           - name: ssh_key
///             values:
///               - RSA-6522525
/// ```
///
///
/// ## Filterable Fields
///
/// * `id`
///
/// * `label`
///
/// * `ssh_key`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_sshkeys_get_sshkeys_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSshkeysResult> getSshkeys(
  GetSshkeysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getSshkeys:getSshkeys',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSshkeysResult.fromMap(result);
}

/// Provides details about a specific Linode StackScript.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-stack-script).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode StackScript.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const myStackscript = linode.getStackScript({
///     id: "355872",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_stackscript = linode.get_stack_script(id="355872")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myStackscript = Linode.GetStackScript.Invoke(new()
///     {
///         Id = "355872",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupStackScript(ctx, &linode.LookupStackScriptArgs{
/// 			Id: "355872",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetStackScriptArgs;
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
///         final var myStackscript = LinodeFunctions.getStackScript(GetStackScriptArgs.builder()
///             .id("355872")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   myStackscript:
///     fn::invoke:
///       function: linode:getStackScript
///       arguments:
///         id: 355872
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_stack_script_get_stack_script_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStackScriptResult> getStackScript(
  GetStackScriptArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getStackScript:getStackScript',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStackScriptResult.fromMap(result);
}

/// Provides information about Linode StackScripts that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-stack-scripts).
///
/// **NOTICE:** Due to the large number of public StackScripts, this data source may time out if `is_public` is not filtered on.
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode StackScript.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const specific_stackscripts = linode.getStackScripts({
///     filters: [
///         {
///             name: "label",
///             values: ["my-cool-stackscript"],
///         },
///         {
///             name: "is_public",
///             values: ["false"],
///         },
///     ],
/// });
/// export const stackscriptId = specific_stackscripts.then(specific_stackscripts => specific_stackscripts.stackscripts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// specific_stackscripts = linode.get_stack_scripts(filters=[
///     {
///         "name": "label",
///         "values": ["my-cool-stackscript"],
///     },
///     {
///         "name": "is_public",
///         "values": ["false"],
///     },
/// ])
/// pulumi.export("stackscriptId", specific_stackscripts.stackscripts[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var specific_stackscripts = Linode.GetStackScripts.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetStackScriptsFilterInputArgs
///             {
///                 Name = "label",
///                 Values = new[]
///                 {
///                     "my-cool-stackscript",
///                 },
///             },
///             new Linode.Inputs.GetStackScriptsFilterInputArgs
///             {
///                 Name = "is_public",
///                 Values = new[]
///                 {
///                     "false",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["stackscriptId"] = specific_stackscripts.Apply(specific_stackscripts => specific_stackscripts.Apply(getStackScriptsResult => getStackScriptsResult.Stackscripts[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		specific_stackscripts, err := linode.GetStackScripts(ctx, &linode.GetStackScriptsArgs{
/// 			Filters: []linode.GetStackScriptsFilter{
/// 				{
/// 					Name: "label",
/// 					Values: []string{
/// 						"my-cool-stackscript",
/// 					},
/// 				},
/// 				{
/// 					Name: "is_public",
/// 					Values: []string{
/// 						"false",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("stackscriptId", specific_stackscripts.Stackscripts[0].Id)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetStackScriptsArgs;
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
///         final var specific-stackscripts = LinodeFunctions.getStackScripts(GetStackScriptsArgs.builder()
///             .filters(
///                 GetStackScriptsFilterArgs.builder()
///                     .name("label")
///                     .values("my-cool-stackscript")
///                     .build(),
///                 GetStackScriptsFilterArgs.builder()
///                     .name("is_public")
///                     .values("false")
///                     .build())
///             .build());
///
///         ctx.export("stackscriptId", specific_stackscripts.stackscripts()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   specific-stackscripts:
///     fn::invoke:
///       function: linode:getStackScripts
///       arguments:
///         filters:
///           - name: label
///             values:
///               - my-cool-stackscript
///           - name: is_public
///             values:
///               - false
/// outputs:
///   stackscriptId: ${["specific-stackscripts"].stackscripts[0].id}
/// ```
///
///
/// ## Filterable Fields
///
/// * `deployments_active`
///
/// * `deployments_total`
///
/// * `description`
///
/// * `images`
///
/// * `is_public`
///
/// * `label`
///
/// * `mine`
///
/// * `rev_note`
///
/// * `username`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_stack_scripts_get_stack_scripts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStackScriptsResult> getStackScripts(
  GetStackScriptsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getStackScripts:getStackScripts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStackScriptsResult.fromMap(result);
}

/// Provides information about a Linode user
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-user).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode user.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foo = linode.getUser({
///     username: "foo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foo = linode.get_user(username="foo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Linode.GetUser.Invoke(new()
///     {
///         Username = "foo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupUser(ctx, &linode.LookupUserArgs{
/// 			Username: "foo",
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetUserArgs;
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
///         final var foo = LinodeFunctions.getUser(GetUserArgs.builder()
///             .username("foo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: linode:getUser
///       arguments:
///         username: foo
/// ```
///
///
/// The following example shows a sample grant.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_user_get_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserResult> getUser(
  GetUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getUser:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}

/// Provides information about Linode users that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-users).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const filtered_users = linode.getUsers({
///     filters: [{
///         name: "username",
///         values: ["test-user"],
///     }],
/// });
/// export const users = filtered_users.then(filtered_users => filtered_users.users);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// filtered_users = linode.get_users(filters=[{
///     "name": "username",
///     "values": ["test-user"],
/// }])
/// pulumi.export("users", filtered_users.users)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filtered_users = Linode.GetUsers.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetUsersFilterInputArgs
///             {
///                 Name = "username",
///                 Values = new[]
///                 {
///                     "test-user",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["users"] = filtered_users.Apply(filtered_users => filtered_users.Apply(getUsersResult => getUsersResult.Users)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		filtered_users, err := linode.GetUsers(ctx, &linode.GetUsersArgs{
/// 			Filters: []linode.GetUsersFilter{
/// 				{
/// 					Name: "username",
/// 					Values: []string{
/// 						"test-user",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("users", filtered_users.Users)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetUsersArgs;
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
///         final var filtered-users = LinodeFunctions.getUsers(GetUsersArgs.builder()
///             .filters(GetUsersFilterArgs.builder()
///                 .name("username")
///                 .values("test-user")
///                 .build())
///             .build());
///
///         ctx.export("users", filtered_users.users());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   filtered-users:
///     fn::invoke:
///       function: linode:getUsers
///       arguments:
///         filters:
///           - name: username
///             values:
///               - test-user
/// outputs:
///   users: ${["filtered-users"].users}
/// ```
///
///
/// ## Filterable Fields
///
/// * `username`
///
/// * `email`
///
/// * `restricted`
///
/// * `user_type`
///
/// * `password_created`
///
/// * `tfa_enabled`
///
/// * `verfied_phone_number`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_users_get_users_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUsersResult> getUsers(
  GetUsersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getUsers:getUsers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUsersResult.fromMap(result);
}

/// &gt; **Beta Notice** VLANs are currently available through early access.
/// To use early access resources, the `api_version` provider argument must be set to `v4beta`.
/// To learn more, see the early access documentation.
///
/// Provides details about Linode VLANs.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-vlans).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const myInstance = new linode.Instance("my_instance", {
///     label: "my_instance",
///     image: "linode/ubuntu22.04",
///     region: "us-southeast",
///     type: "g6-standard-1",
///     rootPass: "bogusPassword$",
///     interfaces: [{
///         purpose: "vlan",
///         label: "my-vlan",
///     }],
/// });
/// const my_vlans = linode.getVlans({
///     filters: [{
///         name: "label",
///         values: ["my-vlan"],
///     }],
/// });
/// export const vlanLinodes = my_vlans.then(my_vlans => my_vlans.vlans?.[0]?.linodes);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_instance = linode.Instance("my_instance",
///     label="my_instance",
///     image="linode/ubuntu22.04",
///     region="us-southeast",
///     type="g6-standard-1",
///     root_pass="bogusPassword$",
///     interfaces=[{
///         "purpose": "vlan",
///         "label": "my-vlan",
///     }])
/// my_vlans = linode.get_vlans(filters=[{
///     "name": "label",
///     "values": ["my-vlan"],
/// }])
/// pulumi.export("vlanLinodes", my_vlans.vlans[0].linodes)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myInstance = new Linode.Instance("my_instance", new()
///     {
///         Label = "my_instance",
///         Image = "linode/ubuntu22.04",
///         Region = "us-southeast",
///         Type = "g6-standard-1",
///         RootPass = "bogusPassword$",
///         Interfaces = new[]
///         {
///             new Linode.Inputs.InstanceInterfaceArgs
///             {
///                 Purpose = "vlan",
///                 Label = "my-vlan",
///             },
///         },
///     });
///
///     var my_vlans = Linode.GetVlans.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetVlansFilterInputArgs
///             {
///                 Name = "label",
///                 Values = new[]
///                 {
///                     "my-vlan",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vlanLinodes"] = my_vlans.Apply(my_vlans => my_vlans.Apply(getVlansResult => getVlansResult.Vlans[0]?.Linodes)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewInstance(ctx, "my_instance", &linode.InstanceArgs{
/// 			Label:    pulumi.String("my_instance"),
/// 			Image:    pulumi.String("linode/ubuntu22.04"),
/// 			Region:   pulumi.String("us-southeast"),
/// 			Type:     pulumi.String("g6-standard-1"),
/// 			RootPass: pulumi.String("bogusPassword$"),
/// 			Interfaces: linode.InstanceInterfaceArray{
/// 				&linode.InstanceInterfaceArgs{
/// 					Purpose: pulumi.String("vlan"),
/// 					Label:   pulumi.String("my-vlan"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		my_vlans, err := linode.GetVlans(ctx, &linode.GetVlansArgs{
/// 			Filters: []linode.GetVlansFilter{
/// 				{
/// 					Name: "label",
/// 					Values: []string{
/// 						"my-vlan",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vlanLinodes", my_vlans.Vlans[0].Linodes)
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
/// import com.pulumi.linode.Instance;
/// import com.pulumi.linode.InstanceArgs;
/// import com.pulumi.linode.inputs.InstanceInterfaceArgs;
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetVlansArgs;
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
///         var myInstance = new Instance("myInstance", InstanceArgs.builder()
///             .label("my_instance")
///             .image("linode/ubuntu22.04")
///             .region("us-southeast")
///             .type("g6-standard-1")
///             .rootPass("bogusPassword$")
///             .interfaces(InstanceInterfaceArgs.builder()
///                 .purpose("vlan")
///                 .label("my-vlan")
///                 .build())
///             .build());
///
///         final var my-vlans = LinodeFunctions.getVlans(GetVlansArgs.builder()
///             .filters(GetVlansFilterArgs.builder()
///                 .name("label")
///                 .values("my-vlan")
///                 .build())
///             .build());
///
///         ctx.export("vlanLinodes", my_vlans.vlans()[0].linodes());
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myInstance:
///     type: linode:Instance
///     name: my_instance
///     properties:
///       label: my_instance
///       image: linode/ubuntu22.04
///       region: us-southeast
///       type: g6-standard-1
///       rootPass: bogusPassword$
///       interfaces:
///         - purpose: vlan
///           label: my-vlan
/// variables:
///   my-vlans:
///     fn::invoke:
///       function: linode:getVlans
///       arguments:
///         filters:
///           - name: label
///             values:
///               - my-vlan
/// outputs:
///   vlanLinodes: ${["my-vlans"].vlans[0].linodes}
/// ```
///
///
/// ## Filterable Fields
///
/// * `label`
///
/// * `region`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_vlans_get_vlans_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVlansResult> getVlans(
  GetVlansArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getVlans:getVlans',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVlansResult.fromMap(result);
}

/// Provides information about a Linode Volume.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-volume).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode Volume.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foo = linode.getVolume({
///     id: 1234567,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foo = linode.get_volume(id=1234567)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Linode.GetVolume.Invoke(new()
///     {
///         Id = 1234567,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.LookupVolume(ctx, &linode.LookupVolumeArgs{
/// 			Id: 1234567,
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetVolumeArgs;
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
///         final var foo = LinodeFunctions.getVolume(GetVolumeArgs.builder()
///             .id(1234567)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: linode:getVolume
///       arguments:
///         id: '1234567'
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_volume_get_volume_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeResult> getVolume(
  GetVolumeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getVolume:getVolume',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeResult.fromMap(result);
}

/// Provides information about Linode Volume types that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-volume-types).
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_volume_types_get_volume_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeTypesResult> getVolumeTypes(
  GetVolumeTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getVolumeTypes:getVolumeTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeTypesResult.fromMap(result);
}

/// Provides information about Linode volumes that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-volumes).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const filtered_volumes = linode.getVolumes({
///     filters: [{
///         name: "label",
///         values: ["test-volume"],
///     }],
/// });
/// export const volumes = filtered_volumes.then(filtered_volumes => filtered_volumes.volumes);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// filtered_volumes = linode.get_volumes(filters=[{
///     "name": "label",
///     "values": ["test-volume"],
/// }])
/// pulumi.export("volumes", filtered_volumes.volumes)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filtered_volumes = Linode.GetVolumes.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetVolumesFilterInputArgs
///             {
///                 Name = "label",
///                 Values = new[]
///                 {
///                     "test-volume",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["volumes"] = filtered_volumes.Apply(filtered_volumes => filtered_volumes.Apply(getVolumesResult => getVolumesResult.Volumes)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		filtered_volumes, err := linode.GetVolumes(ctx, &linode.GetVolumesArgs{
/// 			Filters: []linode.GetVolumesFilter{
/// 				{
/// 					Name: "label",
/// 					Values: []string{
/// 						"test-volume",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("volumes", filtered_volumes.Volumes)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetVolumesArgs;
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
///         final var filtered-volumes = LinodeFunctions.getVolumes(GetVolumesArgs.builder()
///             .filters(GetVolumesFilterArgs.builder()
///                 .name("label")
///                 .values("test-volume")
///                 .build())
///             .build());
///
///         ctx.export("volumes", filtered_volumes.volumes());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   filtered-volumes:
///     fn::invoke:
///       function: linode:getVolumes
///       arguments:
///         filters:
///           - name: label
///             values:
///               - test-volume
/// outputs:
///   volumes: ${["filtered-volumes"].volumes}
/// ```
///
///
/// ## Filterable Fields
///
/// * `label`
///
/// * `tags`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_volumes_get_volumes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumesResult> getVolumes(
  GetVolumesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getVolumes:getVolumes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumesResult.fromMap(result);
}

/// Provides information about a Linode VPC.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-vpc).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode VPC.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foo = linode.getVpc({
///     id: "123",
/// });
/// export const vpc = foo;
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foo = linode.get_vpc(id="123")
/// pulumi.export("vpc", foo)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Linode.GetVpc.Invoke(new()
///     {
///         Id = "123",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpc"] = foo,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := linode.LookupVpc(ctx, &linode.LookupVpcArgs{
/// 			Id: "123",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpc", foo)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetVpcArgs;
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
///         final var foo = LinodeFunctions.getVpc(GetVpcArgs.builder()
///             .id("123")
///             .build());
///
///         ctx.export("vpc", foo);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: linode:getVpc
///       arguments:
///         id: 123
/// outputs:
///   vpc: ${foo}
/// ```
///
///
/// ## IPv6
///
/// &gt; **Limited Availability** IPv6 VPCs may not currently be available to all users.
///
/// Contains information about a single IPv6 allocation under this VPC.
///
/// * `range` - The allocated range in CIDR format.
///
/// ### Subnets Reference
///
/// To list all subnets under a VPC, please refer to the linode.getVpcSubnets data source.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_vpc_get_vpc_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcResult> getVpc(
  GetVpcArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getVpc:getVpc',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcResult.fromMap(result);
}

/// Provides information about a list of Linode VPC IPs that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-vpcs-ips).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to list VPC IPs.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const filtered_ips = linode.getVpcIps({
///     filters: [{
///         name: "address",
///         values: ["10.0.0.0"],
///     }],
/// });
/// export const vpcIps = filtered_ips.then(filtered_ips => filtered_ips.vpcIps);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// filtered_ips = linode.get_vpc_ips(filters=[{
///     "name": "address",
///     "values": ["10.0.0.0"],
/// }])
/// pulumi.export("vpcIps", filtered_ips.vpc_ips)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filtered_ips = Linode.GetVpcIps.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetVpcIpsFilterInputArgs
///             {
///                 Name = "address",
///                 Values = new[]
///                 {
///                     "10.0.0.0",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcIps"] = filtered_ips.Apply(filtered_ips => filtered_ips.Apply(getVpcIpsResult => getVpcIpsResult.VpcIps)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		filtered_ips, err := linode.GetVpcIps(ctx, &linode.GetVpcIpsArgs{
/// 			Filters: []linode.GetVpcIpsFilter{
/// 				{
/// 					Name: "address",
/// 					Values: []string{
/// 						"10.0.0.0",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIps", filtered_ips.VpcIps)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetVpcIpsArgs;
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
///         final var filtered-ips = LinodeFunctions.getVpcIps(GetVpcIpsArgs.builder()
///             .filters(GetVpcIpsFilterArgs.builder()
///                 .name("address")
///                 .values("10.0.0.0")
///                 .build())
///             .build());
///
///         ctx.export("vpcIps", filtered_ips.vpcIps());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   filtered-ips:
///     fn::invoke:
///       function: linode:getVpcIps
///       arguments:
///         filters:
///           - name: address
///             values:
///               - 10.0.0.0
/// outputs:
///   vpcIps: ${["filtered-ips"].vpcIps}
/// ```
///
///
/// One might also use this data source to list all VPC IPs in a specific VPC. The following example shows how to do this.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const specific_vpc_ips = linode.getVpcIps({
///     vpcId: 123,
/// });
/// export const vpcIps = specific_vpc_ips.then(specific_vpc_ips => specific_vpc_ips.vpcIps);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// specific_vpc_ips = linode.get_vpc_ips(vpc_id=123)
/// pulumi.export("vpcIps", specific_vpc_ips.vpc_ips)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var specific_vpc_ips = Linode.GetVpcIps.Invoke(new()
///     {
///         VpcId = 123,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcIps"] = specific_vpc_ips.Apply(specific_vpc_ips => specific_vpc_ips.Apply(getVpcIpsResult => getVpcIpsResult.VpcIps)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		specific_vpc_ips, err := linode.GetVpcIps(ctx, &linode.GetVpcIpsArgs{
/// 			VpcId: pulumi.IntRef(123),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIps", specific_vpc_ips.VpcIps)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetVpcIpsArgs;
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
///         final var specific-vpc-ips = LinodeFunctions.getVpcIps(GetVpcIpsArgs.builder()
///             .vpcId(123)
///             .build());
///
///         ctx.export("vpcIps", specific_vpc_ips.vpcIps());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   specific-vpc-ips:
///     fn::invoke:
///       function: linode:getVpcIps
///       arguments:
///         vpcId: 123
/// outputs:
///   vpcIps: ${["specific-vpc-ips"].vpcIps}
/// ```
///
///
/// By default, this data source retrieves only IPv4 addresses. To instead retrieve IPv6 addresses, the `ipv6` field should be set to true:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const all_vpc_ipv6 = linode.getVpcIps({
///     ipv6: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// all_vpc_ipv6 = linode.get_vpc_ips(ipv6=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all_vpc_ipv6 = Linode.GetVpcIps.Invoke(new()
///     {
///         Ipv6 = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.GetVpcIps(ctx, &linode.GetVpcIpsArgs{
/// 			Ipv6: pulumi.BoolRef(true),
/// 		}, nil)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetVpcIpsArgs;
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
///         final var all-vpc-ipv6 = LinodeFunctions.getVpcIps(GetVpcIpsArgs.builder()
///             .ipv6(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all-vpc-ipv6:
///     fn::invoke:
///       function: linode:getVpcIps
///       arguments:
///         ipv6: true
/// ```
///
///
/// ## Filterable Fields
///
/// * `active`
///
/// * `config_id`
///
/// * `linode_id`
///
/// * `region`
///
/// * `vpc_id`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_vpc_ips_get_vpc_ips_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcIpsResult> getVpcIps(
  GetVpcIpsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getVpcIps:getVpcIps',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcIpsResult.fromMap(result);
}

/// Provides information about a Linode VPC subnet.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-vpc-subnet).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to access information about a Linode VPC subnet.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foo = linode.getVpcSubnet({
///     vpcId: 123,
///     id: "12345",
/// });
/// export const vpcSubnet = foo;
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foo = linode.get_vpc_subnet(vpc_id=123,
///     id="12345")
/// pulumi.export("vpcSubnet", foo)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Linode.GetVpcSubnet.Invoke(new()
///     {
///         VpcId = 123,
///         Id = "12345",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcSubnet"] = foo,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := linode.LookupVpcSubnet(ctx, &linode.LookupVpcSubnetArgs{
/// 			VpcId: 123,
/// 			Id:    "12345",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcSubnet", foo)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetVpcSubnetArgs;
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
///         final var foo = LinodeFunctions.getVpcSubnet(GetVpcSubnetArgs.builder()
///             .vpcId(123)
///             .id("12345")
///             .build());
///
///         ctx.export("vpcSubnet", foo);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: linode:getVpcSubnet
///       arguments:
///         vpcId: 123
///         id: 12345
/// outputs:
///   vpcSubnet: ${foo}
/// ```
///
///
/// ## IPv6
///
/// &gt; **Limited Availability** IPv6 VPCs may not currently be available to all users.
///
/// The following attributes are exported under each entry of the `ipv6` field:
///
/// * `range` - An IPv6 range allocated to this subnet in CIDR format.
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_vpc_subnet_get_vpc_subnet_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcSubnetResult> getVpcSubnet(
  GetVpcSubnetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getVpcSubnet:getVpcSubnet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcSubnetResult.fromMap(result);
}

/// Provides information about a list of Linode VPC subnets that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-vpc-subnets).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to list VPC subnets.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const filtered_subnets = linode.getVpcSubnets({
///     vpcId: 123,
///     filters: [{
///         name: "label",
///         values: ["test"],
///     }],
/// });
/// export const vpcSubnets = filtered_subnets.then(filtered_subnets => filtered_subnets.vpcSubnets);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// filtered_subnets = linode.get_vpc_subnets(vpc_id=123,
///     filters=[{
///         "name": "label",
///         "values": ["test"],
///     }])
/// pulumi.export("vpcSubnets", filtered_subnets.vpc_subnets)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filtered_subnets = Linode.GetVpcSubnets.Invoke(new()
///     {
///         VpcId = 123,
///         Filters = new[]
///         {
///             new Linode.Inputs.GetVpcSubnetsFilterInputArgs
///             {
///                 Name = "label",
///                 Values = new[]
///                 {
///                     "test",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcSubnets"] = filtered_subnets.Apply(filtered_subnets => filtered_subnets.Apply(getVpcSubnetsResult => getVpcSubnetsResult.VpcSubnets)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		filtered_subnets, err := linode.GetVpcSubnets(ctx, &linode.GetVpcSubnetsArgs{
/// 			VpcId: 123,
/// 			Filters: []linode.GetVpcSubnetsFilter{
/// 				{
/// 					Name: "label",
/// 					Values: []string{
/// 						"test",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcSubnets", filtered_subnets.VpcSubnets)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetVpcSubnetsArgs;
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
///         final var filtered-subnets = LinodeFunctions.getVpcSubnets(GetVpcSubnetsArgs.builder()
///             .vpcId(123)
///             .filters(GetVpcSubnetsFilterArgs.builder()
///                 .name("label")
///                 .values("test")
///                 .build())
///             .build());
///
///         ctx.export("vpcSubnets", filtered_subnets.vpcSubnets());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   filtered-subnets:
///     fn::invoke:
///       function: linode:getVpcSubnets
///       arguments:
///         vpcId: 123
///         filters:
///           - name: label
///             values:
///               - test
/// outputs:
///   vpcSubnets: ${["filtered-subnets"].vpcSubnets}
/// ```
///
///
/// ## IPv6
///
/// &gt; **Limited Availability** IPv6 VPCs may not currently be available to all users.
///
/// The following attributes are exported under each entry of the `ipv6` field:
///
/// * `range` - An IPv6 range allocated to this subnet in CIDR format.
///
/// ## Filterable Fields
///
/// * `id`
///
/// * `label`
///
/// * `ipv4`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_vpc_subnets_get_vpc_subnets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcSubnetsResult> getVpcSubnets(
  GetVpcSubnetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getVpcSubnets:getVpcSubnets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcSubnetsResult.fromMap(result);
}

/// Provides information about a list of Linode VPCs that match a set of filters.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/get-vpcs).
///
/// ## Example Usage
///
/// The following example shows how one might use this data source to list VPCs.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const filtered_vpcs = linode.getVpcs({
///     filters: [{
///         name: "label",
///         values: ["test"],
///     }],
/// });
/// export const vpcs = filtered_vpcs.then(filtered_vpcs => filtered_vpcs.vpcs);
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// filtered_vpcs = linode.get_vpcs(filters=[{
///     "name": "label",
///     "values": ["test"],
/// }])
/// pulumi.export("vpcs", filtered_vpcs.vpcs)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var filtered_vpcs = Linode.GetVpcs.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Linode.Inputs.GetVpcsFilterInputArgs
///             {
///                 Name = "label",
///                 Values = new[]
///                 {
///                     "test",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcs"] = filtered_vpcs.Apply(filtered_vpcs => filtered_vpcs.Apply(getVpcsResult => getVpcsResult.Vpcs)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		filtered_vpcs, err := linode.GetVpcs(ctx, &linode.GetVpcsArgs{
/// 			Filters: []linode.GetVpcsFilter{
/// 				{
/// 					Name: "label",
/// 					Values: []string{
/// 						"test",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcs", filtered_vpcs.Vpcs)
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
/// import com.pulumi.linode.LinodeFunctions;
/// import com.pulumi.linode.inputs.GetVpcsArgs;
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
///         final var filtered-vpcs = LinodeFunctions.getVpcs(GetVpcsArgs.builder()
///             .filters(GetVpcsFilterArgs.builder()
///                 .name("label")
///                 .values("test")
///                 .build())
///             .build());
///
///         ctx.export("vpcs", filtered_vpcs.vpcs());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   filtered-vpcs:
///     fn::invoke:
///       function: linode:getVpcs
///       arguments:
///         filters:
///           - name: label
///             values:
///               - test
/// outputs:
///   vpcs: ${["filtered-vpcs"].vpcs}
/// ```
///
///
/// ## IPv6
///
/// &gt; **Limited Availability** IPv6 VPCs may not currently be available to all users.
///
/// Contains information about a single IPv6 allocation under a VPC.
///
/// * `range` - The allocated range in CIDR format.
///
/// ## Filterable Fields
///
/// * `id`
///
/// * `label`
///
/// * `description`
///
/// * `region`
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_vpcs_get_vpcs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcsResult> getVpcs(
  GetVpcsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'linode:index/getVpcs:getVpcs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcsResult.fromMap(result);
}
