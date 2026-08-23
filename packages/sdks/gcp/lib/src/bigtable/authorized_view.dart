import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorized_view_args.dart';
import 'authorized_view_state.dart';
import 'authorized_view_subset_view.dart';

/// Creates a Google Cloud Bigtable authorized view inside a table. For more information see
/// [the official documentation](https://cloud.google.com/bigtable/) and
/// [API](https://cloud.google.com/bigtable/docs/go/reference).
///
/// &gt; **Note:** It is strongly recommended to set `lifecycle { preventDestroy = true }`
/// on authorized views in order to prevent accidental data loss. See
/// Terraform docs
/// for more information on lifecycle parameters.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const instance = new gcp.bigtable.Instance("instance", {
///     name: "tf-instance",
///     clusters: [{
///         clusterId: "tf-instance-cluster",
///         zone: "us-central1-b",
///         numNodes: 3,
///         storageType: "HDD",
///     }],
/// });
/// const table = new gcp.bigtable.Table("table", {
///     name: "tf-table",
///     instanceName: instance.name,
///     splitKeys: [
///         "a",
///         "b",
///         "c",
///     ],
///     columnFamilies: [
///         {
///             family: "family-first",
///         },
///         {
///             family: "family-second",
///         },
///     ],
///     changeStreamRetention: "24h0m0s",
/// });
/// const authorizedView = new gcp.bigtable.AuthorizedView("authorized_view", {
///     name: "tf-authorized-view",
///     instanceName: instance.name,
///     tableName: table.name,
///     subsetView: {
///         rowPrefixes: [std.base64encode({
///             input: "prefix#",
///         }).then(invoke => invoke.result)],
///         familySubsets: [
///             {
///                 familyName: "family-first",
///                 qualifiers: [
///                     std.base64encode({
///                         input: "qualifier",
///                     }).then(invoke => invoke.result),
///                     std.base64encode({
///                         input: "qualifier-second",
///                     }).then(invoke => invoke.result),
///                 ],
///             },
///             {
///                 familyName: "family-second",
///                 qualifierPrefixes: [""],
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// instance = gcp.bigtable.Instance("instance",
///     name="tf-instance",
///     clusters=[{
///         "cluster_id": "tf-instance-cluster",
///         "zone": "us-central1-b",
///         "num_nodes": 3,
///         "storage_type": "HDD",
///     }])
/// table = gcp.bigtable.Table("table",
///     name="tf-table",
///     instance_name=instance.name,
///     split_keys=[
///         "a",
///         "b",
///         "c",
///     ],
///     column_families=[
///         {
///             "family": "family-first",
///         },
///         {
///             "family": "family-second",
///         },
///     ],
///     change_stream_retention="24h0m0s")
/// authorized_view = gcp.bigtable.AuthorizedView("authorized_view",
///     name="tf-authorized-view",
///     instance_name=instance.name,
///     table_name=table.name,
///     subset_view={
///         "row_prefixes": [std.base64encode(input="prefix#").result],
///         "family_subsets": [
///             {
///                 "family_name": "family-first",
///                 "qualifiers": [
///                     std.base64encode(input="qualifier").result,
///                     std.base64encode(input="qualifier-second").result,
///                 ],
///             },
///             {
///                 "family_name": "family-second",
///                 "qualifier_prefixes": [""],
///             },
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.BigTable.Instance("instance", new()
///     {
///         Name = "tf-instance",
///         Clusters = new[]
///         {
///             new Gcp.BigTable.Inputs.InstanceClusterArgs
///             {
///                 ClusterId = "tf-instance-cluster",
///                 Zone = "us-central1-b",
///                 NumNodes = 3,
///                 StorageType = "HDD",
///             },
///         },
///     });
///
///     var table = new Gcp.BigTable.Table("table", new()
///     {
///         Name = "tf-table",
///         InstanceName = instance.Name,
///         SplitKeys = new[]
///         {
///             "a",
///             "b",
///             "c",
///         },
///         ColumnFamilies = new[]
///         {
///             new Gcp.BigTable.Inputs.TableColumnFamilyArgs
///             {
///                 Family = "family-first",
///             },
///             new Gcp.BigTable.Inputs.TableColumnFamilyArgs
///             {
///                 Family = "family-second",
///             },
///         },
///         ChangeStreamRetention = "24h0m0s",
///     });
///
///     var authorizedView = new Gcp.BigTable.AuthorizedView("authorized_view", new()
///     {
///         Name = "tf-authorized-view",
///         InstanceName = instance.Name,
///         TableName = table.Name,
///         SubsetView = new Gcp.BigTable.Inputs.AuthorizedViewSubsetViewArgs
///         {
///             RowPrefixes = new[]
///             {
///                 Std.Base64encode.Invoke(new()
///                 {
///                     Input = "prefix#",
///                 }).Apply(invoke => invoke.Result),
///             },
///             FamilySubsets = new[]
///             {
///                 new Gcp.BigTable.Inputs.AuthorizedViewSubsetViewFamilySubsetArgs
///                 {
///                     FamilyName = "family-first",
///                     Qualifiers = new[]
///                     {
///                         Std.Base64encode.Invoke(new()
///                         {
///                             Input = "qualifier",
///                         }).Apply(invoke => invoke.Result),
///                         Std.Base64encode.Invoke(new()
///                         {
///                             Input = "qualifier-second",
///                         }).Apply(invoke => invoke.Result),
///                     },
///                 },
///                 new Gcp.BigTable.Inputs.AuthorizedViewSubsetViewFamilySubsetArgs
///                 {
///                     FamilyName = "family-second",
///                     QualifierPrefixes = new[]
///                     {
///                         "",
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigtable"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := bigtable.NewInstance(ctx, "instance", &bigtable.InstanceArgs{
/// 			Name: pulumi.String("tf-instance"),
/// 			Clusters: bigtable.InstanceClusterArray{
/// 				&bigtable.InstanceClusterArgs{
/// 					ClusterId:   pulumi.String("tf-instance-cluster"),
/// 					Zone:        pulumi.String("us-central1-b"),
/// 					NumNodes:    pulumi.Int(3),
/// 					StorageType: pulumi.String("HDD"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		table, err := bigtable.NewTable(ctx, "table", &bigtable.TableArgs{
/// 			Name:         pulumi.String("tf-table"),
/// 			InstanceName: instance.Name,
/// 			SplitKeys: pulumi.StringArray{
/// 				pulumi.String("a"),
/// 				pulumi.String("b"),
/// 				pulumi.String("c"),
/// 			},
/// 			ColumnFamilies: bigtable.TableColumnFamilyArray{
/// 				&bigtable.TableColumnFamilyArgs{
/// 					Family: pulumi.String("family-first"),
/// 				},
/// 				&bigtable.TableColumnFamilyArgs{
/// 					Family: pulumi.String("family-second"),
/// 				},
/// 			},
/// 			ChangeStreamRetention: pulumi.String("24h0m0s"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: "prefix#",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode1, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: "qualifier",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeBase64encode2, err := std.Base64encode(ctx, &std.Base64encodeArgs{
/// 			Input: "qualifier-second",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigtable.NewAuthorizedView(ctx, "authorized_view", &bigtable.AuthorizedViewArgs{
/// 			Name:         pulumi.String("tf-authorized-view"),
/// 			InstanceName: instance.Name,
/// 			TableName:    table.Name,
/// 			SubsetView: &bigtable.AuthorizedViewSubsetViewArgs{
/// 				RowPrefixes: pulumi.StringArray{
/// 					pulumi.String(invokeBase64encode.Result),
/// 				},
/// 				FamilySubsets: bigtable.AuthorizedViewSubsetViewFamilySubsetArray{
/// 					&bigtable.AuthorizedViewSubsetViewFamilySubsetArgs{
/// 						FamilyName: pulumi.String("family-first"),
/// 						Qualifiers: pulumi.StringArray{
/// 							pulumi.String(invokeBase64encode1.Result),
/// 							pulumi.String(invokeBase64encode2.Result),
/// 						},
/// 					},
/// 					&bigtable.AuthorizedViewSubsetViewFamilySubsetArgs{
/// 						FamilyName: pulumi.String("family-second"),
/// 						QualifierPrefixes: pulumi.StringArray{
/// 							pulumi.String(""),
/// 						},
/// 					},
/// 				},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_bigtable_instance" "instance" {
///   name = "tf-instance"
///   clusters {
///     cluster_id   = "tf-instance-cluster"
///     zone         = "us-central1-b"
///     num_nodes    = 3
///     storage_type = "HDD"
///   }
/// }
/// resource "gcp_bigtable_table" "table" {
///   name          = "tf-table"
///   instance_name = gcp_bigtable_instance.instance.name
///   split_keys    = ["a", "b", "c"]
///   column_families {
///     family = "family-first"
///   }
///   column_families {
///     family = "family-second"
///   }
///   change_stream_retention = "24h0m0s"
/// }
/// resource "gcp_bigtable_authorizedview" "authorized_view" {
///   name          = "tf-authorized-view"
///   instance_name = gcp_bigtable_instance.instance.name
///   table_name    = gcp_bigtable_table.table.name
///   subset_view = {
///     row_prefixes = [base64encode("prefix#")]
///     family_subsets = [{
///       "familyName" = "family-first"
///       "qualifiers" = [base64encode("qualifier"), base64encode("qualifier-second")]
///       }, {
///       "familyName"        = "family-second"
///       "qualifierPrefixes" = [""]
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigtable.Instance;
/// import com.pulumi.gcp.bigtable.InstanceArgs;
/// import com.pulumi.gcp.bigtable.inputs.InstanceClusterArgs;
/// import com.pulumi.gcp.bigtable.Table;
/// import com.pulumi.gcp.bigtable.TableArgs;
/// import com.pulumi.gcp.bigtable.inputs.TableColumnFamilyArgs;
/// import com.pulumi.gcp.bigtable.AuthorizedView;
/// import com.pulumi.gcp.bigtable.AuthorizedViewArgs;
/// import com.pulumi.gcp.bigtable.inputs.AuthorizedViewSubsetViewArgs;
/// import com.pulumi.gcp.bigtable.inputs.AuthorizedViewSubsetViewFamilySubsetArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Base64encodeArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .name("tf-instance")
///             .clusters(InstanceClusterArgs.builder()
///                 .clusterId("tf-instance-cluster")
///                 .zone("us-central1-b")
///                 .numNodes(3)
///                 .storageType("HDD")
///                 .build())
///             .build());
///
///         var table = new Table("table", TableArgs.builder()
///             .name("tf-table")
///             .instanceName(instance.name())
///             .splitKeys(
///                 "a",
///                 "b",
///                 "c")
///             .columnFamilies(
///                 TableColumnFamilyArgs.builder()
///                     .family("family-first")
///                     .build(),
///                 TableColumnFamilyArgs.builder()
///                     .family("family-second")
///                     .build())
///             .changeStreamRetention("24h0m0s")
///             .build());
///
///         var authorizedView = new AuthorizedView("authorizedView", AuthorizedViewArgs.builder()
///             .name("tf-authorized-view")
///             .instanceName(instance.name())
///             .tableName(table.name())
///             .subsetView(AuthorizedViewSubsetViewArgs.builder()
///                 .rowPrefixes(StdFunctions.base64encode(Base64encodeArgs.builder()
///                     .input("prefix#")
///                     .build()).result())
///                 .familySubsets(
///                     AuthorizedViewSubsetViewFamilySubsetArgs.builder()
///                         .familyName("family-first")
///                         .qualifiers(
///                             StdFunctions.base64encode(Base64encodeArgs.builder()
///                                 .input("qualifier")
///                                 .build()).result(),
///                             StdFunctions.base64encode(Base64encodeArgs.builder()
///                                 .input("qualifier-second")
///                                 .build()).result())
///                         .build(),
///                     AuthorizedViewSubsetViewFamilySubsetArgs.builder()
///                         .familyName("family-second")
///                         .qualifierPrefixes("")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:bigtable:Instance
///     properties:
///       name: tf-instance
///       clusters:
///         - clusterId: tf-instance-cluster
///           zone: us-central1-b
///           numNodes: 3
///           storageType: HDD
///   table:
///     type: gcp:bigtable:Table
///     properties:
///       name: tf-table
///       instanceName: ${instance.name}
///       splitKeys:
///         - a
///         - b
///         - c
///       columnFamilies:
///         - family: family-first
///         - family: family-second
///       changeStreamRetention: 24h0m0s
///   authorizedView:
///     type: gcp:bigtable:AuthorizedView
///     name: authorized_view
///     properties:
///       name: tf-authorized-view
///       instanceName: ${instance.name}
///       tableName: ${table.name}
///       subsetView:
///         rowPrefixes:
///           - fn::invoke:
///               function: std:base64encode
///               arguments:
///                 input: prefix#
///               return: result
///         familySubsets:
///           - familyName: family-first
///             qualifiers:
///               - fn::invoke:
///                   function: std:base64encode
///                   arguments:
///                     input: qualifier
///                   return: result
///               - fn::invoke:
///                   function: std:base64encode
///                   arguments:
///                     input: qualifier-second
///                   return: result
///           - familyName: family-second
///             qualifierPrefixes:
///               - ""
/// ```
///
///
/// ## Import
///
/// Bigtable Authorized Views can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance_name}}/tables/{{table_name}}/authorizedViews/{{name}}`
/// * `{{project}}/{{instance_name}}/{{table_name}}/{{name}}`
/// * `{{instance_name}}/{{table_name}}/{{name}}`
///
///
/// When using the `pulumi import` command, Bigtable Authorized Views can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigtable/authorizedView:AuthorizedView default projects/{{project}}/instances/{{instance_name}}/tables/{{table_name}}/authorizedViews/{{name}}
/// $ pulumi import gcp:bigtable/authorizedView:AuthorizedView default {{project}}/{{instance_name}}/{{table_name}}/{{name}}
/// $ pulumi import gcp:bigtable/authorizedView:AuthorizedView default {{instance_name}}/{{table_name}}/{{name}}
/// ```
class AuthorizedView extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// -----
  late final pulumi.Output<String> deletionPolicy;
  /// A field to make the table protected against data loss i.e. when set to PROTECTED, deleting the table, the column families in the table, and the instance containing the table would be prohibited.
  /// If not provided, currently deletion protection will be set to UNPROTECTED as it is the API default value. Note this field configs the deletion protection provided by the API in the backend, and should not be confused with Terraform-side deletion protection.
  late final pulumi.Output<String> deletionProtection;
  /// The name of the Bigtable instance in which the authorized view belongs.
  late final pulumi.Output<String> instanceName;
  /// The name of the authorized view. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// An AuthorizedView permitting access to an explicit subset of a Table. Structure is documented below.
  late final pulumi.Output<AuthorizedViewSubsetView?> subsetView;
  /// The name of the Bigtable table in which the authorized view belongs.
  late final pulumi.Output<String> tableName;

  /// Creates a new [AuthorizedView].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthorizedView]. {@macro pulumi_bigtable_authorized_view_authorized_view_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthorizedView(
    String name, {
    AuthorizedViewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/authorizedView:AuthorizedView',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<String>('deletionProtection');
    instanceName = registerOutput<String>('instanceName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    subsetView = registerOutput<AuthorizedViewSubsetView?>('subsetView', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthorizedViewSubsetView.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableName = registerOutput<String>('tableName');
  }

  /// Gets an existing [AuthorizedView] resource's state with the given [name] and [id].
  static AuthorizedView get(
    String name,
    pulumi.Input<String> id, {
    AuthorizedViewState? state,
  }) {
    return AuthorizedView._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AuthorizedView._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigtable/authorizedView:AuthorizedView',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<String>('deletionProtection');
    instanceName = registerOutput<String>('instanceName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    subsetView = registerOutput<AuthorizedViewSubsetView?>('subsetView', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthorizedViewSubsetView.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tableName = registerOutput<String>('tableName');
  }
}
