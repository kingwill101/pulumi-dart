import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aspect_type_iam_policy_args.dart';
import 'get_aspect_type_iam_policy_result.dart';
import 'get_asset_iam_policy_args.dart';
import 'get_asset_iam_policy_result.dart';
import 'get_data_product_iam_policy_args.dart';
import 'get_data_product_iam_policy_result.dart';
import 'get_data_quality_rules_args.dart';
import 'get_data_quality_rules_result.dart';
import 'get_datascan_iam_policy_args.dart';
import 'get_datascan_iam_policy_result.dart';
import 'get_entry_group_iam_policy_args.dart';
import 'get_entry_group_iam_policy_result.dart';
import 'get_entry_type_iam_policy_args.dart';
import 'get_entry_type_iam_policy_result.dart';
import 'get_glossary_iam_policy_args.dart';
import 'get_glossary_iam_policy_result.dart';
import 'get_lake_iam_policy_args.dart';
import 'get_lake_iam_policy_result.dart';
import 'get_task_iam_policy_args.dart';
import 'get_task_iam_policy_result.dart';
import 'get_zone_iam_policy_args.dart';
import 'get_zone_iam_policy_result.dart';

/// Retrieves the current IAM policy data for aspecttype
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataplex.getAspectTypeIamPolicy({
///     project: testAspectTypeBasic.project,
///     location: testAspectTypeBasic.location,
///     aspectTypeId: testAspectTypeBasic.aspectTypeId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataplex.get_aspect_type_iam_policy(project=test_aspect_type_basic["project"],
///     location=test_aspect_type_basic["location"],
///     aspect_type_id=test_aspect_type_basic["aspectTypeId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataPlex.GetAspectTypeIamPolicy.Invoke(new()
///     {
///         Project = testAspectTypeBasic.Project,
///         Location = testAspectTypeBasic.Location,
///         AspectTypeId = testAspectTypeBasic.AspectTypeId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.LookupAspectTypeIamPolicy(ctx, &dataplex.LookupAspectTypeIamPolicyArgs{
/// 			Project:      pulumi.StringRef(testAspectTypeBasic.Project),
/// 			Location:     pulumi.StringRef(testAspectTypeBasic.Location),
/// 			AspectTypeId: testAspectTypeBasic.AspectTypeId,
/// 		}, nil)
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
/// data "gcp_dataplex_getaspecttypeiampolicy" "policy" {
///   project        = testAspectTypeBasic.project
///   location       = testAspectTypeBasic.location
///   aspect_type_id = testAspectTypeBasic.aspectTypeId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.DataplexFunctions;
/// import com.pulumi.gcp.dataplex.inputs.GetAspectTypeIamPolicyArgs;
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
///         final var policy = DataplexFunctions.getAspectTypeIamPolicy(GetAspectTypeIamPolicyArgs.builder()
///             .project(testAspectTypeBasic.get("project"))
///             .location(testAspectTypeBasic.get("location"))
///             .aspectTypeId(testAspectTypeBasic.get("aspectTypeId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dataplex:getAspectTypeIamPolicy
///       arguments:
///         project: ${testAspectTypeBasic.project}
///         location: ${testAspectTypeBasic.location}
///         aspectTypeId: ${testAspectTypeBasic.aspectTypeId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_get_aspect_type_iam_policy_get_aspect_type_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAspectTypeIamPolicyResult> getAspectTypeIamPolicy(
  GetAspectTypeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getAspectTypeIamPolicy:getAspectTypeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAspectTypeIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAspectTypeIamPolicyResult> getAspectTypeIamPolicyOutput(
  GetAspectTypeIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataplex/getAspectTypeIamPolicy:getAspectTypeIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAspectTypeIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for asset
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataplex.getAssetIamPolicy({
///     project: example.project,
///     location: example.location,
///     lake: example.lake,
///     dataplexZone: example.dataplexZone,
///     asset: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataplex.get_asset_iam_policy(project=example["project"],
///     location=example["location"],
///     lake=example["lake"],
///     dataplex_zone=example["dataplexZone"],
///     asset=example["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataPlex.GetAssetIamPolicy.Invoke(new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         Lake = example.Lake,
///         DataplexZone = example.DataplexZone,
///         Asset = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.LookupAssetIamPolicy(ctx, &dataplex.LookupAssetIamPolicyArgs{
/// 			Project:      pulumi.StringRef(example.Project),
/// 			Location:     pulumi.StringRef(example.Location),
/// 			Lake:         example.Lake,
/// 			DataplexZone: example.DataplexZone,
/// 			Asset:        example.Name,
/// 		}, nil)
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
/// data "gcp_dataplex_getassetiampolicy" "policy" {
///   project       = example.project
///   location      = example.location
///   lake          = example.lake
///   dataplex_zone = example.dataplexZone
///   asset         = example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.DataplexFunctions;
/// import com.pulumi.gcp.dataplex.inputs.GetAssetIamPolicyArgs;
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
///         final var policy = DataplexFunctions.getAssetIamPolicy(GetAssetIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .lake(example.get("lake"))
///             .dataplexZone(example.get("dataplexZone"))
///             .asset(example.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dataplex:getAssetIamPolicy
///       arguments:
///         project: ${example.project}
///         location: ${example.location}
///         lake: ${example.lake}
///         dataplexZone: ${example.dataplexZone}
///         asset: ${example.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_get_asset_iam_policy_get_asset_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssetIamPolicyResult> getAssetIamPolicy(
  GetAssetIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getAssetIamPolicy:getAssetIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssetIamPolicyResult.fromMap(result);
}

pulumi.Output<GetAssetIamPolicyResult> getAssetIamPolicyOutput(
  GetAssetIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataplex/getAssetIamPolicy:getAssetIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAssetIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for dataproduct
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataplex.getDataProductIamPolicy({
///     project: example.project,
///     location: example.location,
///     dataProductId: example.dataProductId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataplex.get_data_product_iam_policy(project=example["project"],
///     location=example["location"],
///     data_product_id=example["dataProductId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataPlex.GetDataProductIamPolicy.Invoke(new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         DataProductId = example.DataProductId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.LookupDataProductIamPolicy(ctx, &dataplex.LookupDataProductIamPolicyArgs{
/// 			Project:       pulumi.StringRef(example.Project),
/// 			Location:      pulumi.StringRef(example.Location),
/// 			DataProductId: example.DataProductId,
/// 		}, nil)
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
/// data "gcp_dataplex_getdataproductiampolicy" "policy" {
///   project         = example.project
///   location        = example.location
///   data_product_id = example.dataProductId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.DataplexFunctions;
/// import com.pulumi.gcp.dataplex.inputs.GetDataProductIamPolicyArgs;
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
///         final var policy = DataplexFunctions.getDataProductIamPolicy(GetDataProductIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .dataProductId(example.get("dataProductId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dataplex:getDataProductIamPolicy
///       arguments:
///         project: ${example.project}
///         location: ${example.location}
///         dataProductId: ${example.dataProductId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_get_data_product_iam_policy_get_data_product_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataProductIamPolicyResult> getDataProductIamPolicy(
  GetDataProductIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getDataProductIamPolicy:getDataProductIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataProductIamPolicyResult.fromMap(result);
}

pulumi.Output<GetDataProductIamPolicyResult> getDataProductIamPolicyOutput(
  GetDataProductIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataplex/getDataProductIamPolicy:getDataProductIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataProductIamPolicyResult.fromMap);
}

/// Retrieves the generated data quality rules for the creating a new data quality scan.
/// For more information see
/// the [official documentation](https://cloud.google.com/dataplex/docs)
/// and [API](https://cloud.google.com/dataplex/docs/reference/rest/v1/projects.locations.dataScans/generateDataQualityRules).
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dqrs = gcp.dataplex.getDataQualityRules({
///     project: "my-project",
///     location: "use-central1",
///     dataScanId: "my-datascan-profile",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dqrs = gcp.dataplex.get_data_quality_rules(project="my-project",
///     location="use-central1",
///     data_scan_id="my-datascan-profile")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dqrs = Gcp.DataPlex.GetDataQualityRules.Invoke(new()
///     {
///         Project = "my-project",
///         Location = "use-central1",
///         DataScanId = "my-datascan-profile",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.GetDataQualityRules(ctx, &dataplex.GetDataQualityRulesArgs{
/// 			Project:    pulumi.StringRef("my-project"),
/// 			Location:   pulumi.StringRef("use-central1"),
/// 			DataScanId: "my-datascan-profile",
/// 		}, nil)
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
/// data "gcp_dataplex_getdataqualityrules" "dqrs" {
///   project      = "my-project"
///   location     = "use-central1"
///   data_scan_id = "my-datascan-profile"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.DataplexFunctions;
/// import com.pulumi.gcp.dataplex.inputs.GetDataQualityRulesArgs;
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
///         final var dqrs = DataplexFunctions.getDataQualityRules(GetDataQualityRulesArgs.builder()
///             .project("my-project")
///             .location("use-central1")
///             .dataScanId("my-datascan-profile")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   dqrs:
///     fn::invoke:
///       function: gcp:dataplex:getDataQualityRules
///       arguments:
///         project: my-project
///         location: use-central1
///         dataScanId: my-datascan-profile
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_get_data_quality_rules_get_data_quality_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataQualityRulesResult> getDataQualityRules(
  GetDataQualityRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getDataQualityRules:getDataQualityRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataQualityRulesResult.fromMap(result);
}

pulumi.Output<GetDataQualityRulesResult> getDataQualityRulesOutput(
  GetDataQualityRulesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataplex/getDataQualityRules:getDataQualityRules',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDataQualityRulesResult.fromMap);
}

/// Retrieves the current IAM policy data for datascan
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataplex.getDatascanIamPolicy({
///     project: basicProfile.project,
///     location: basicProfile.location,
///     dataScanId: basicProfile.dataScanId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataplex.get_datascan_iam_policy(project=basic_profile["project"],
///     location=basic_profile["location"],
///     data_scan_id=basic_profile["dataScanId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataPlex.GetDatascanIamPolicy.Invoke(new()
///     {
///         Project = basicProfile.Project,
///         Location = basicProfile.Location,
///         DataScanId = basicProfile.DataScanId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.LookupDatascanIamPolicy(ctx, &dataplex.LookupDatascanIamPolicyArgs{
/// 			Project:    pulumi.StringRef(basicProfile.Project),
/// 			Location:   pulumi.StringRef(basicProfile.Location),
/// 			DataScanId: basicProfile.DataScanId,
/// 		}, nil)
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
/// data "gcp_dataplex_getdatascaniampolicy" "policy" {
///   project      = basicProfile.project
///   location     = basicProfile.location
///   data_scan_id = basicProfile.dataScanId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.DataplexFunctions;
/// import com.pulumi.gcp.dataplex.inputs.GetDatascanIamPolicyArgs;
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
///         final var policy = DataplexFunctions.getDatascanIamPolicy(GetDatascanIamPolicyArgs.builder()
///             .project(basicProfile.get("project"))
///             .location(basicProfile.get("location"))
///             .dataScanId(basicProfile.get("dataScanId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dataplex:getDatascanIamPolicy
///       arguments:
///         project: ${basicProfile.project}
///         location: ${basicProfile.location}
///         dataScanId: ${basicProfile.dataScanId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_get_datascan_iam_policy_get_datascan_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatascanIamPolicyResult> getDatascanIamPolicy(
  GetDatascanIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getDatascanIamPolicy:getDatascanIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatascanIamPolicyResult.fromMap(result);
}

pulumi.Output<GetDatascanIamPolicyResult> getDatascanIamPolicyOutput(
  GetDatascanIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataplex/getDatascanIamPolicy:getDatascanIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatascanIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for entrygroup
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataplex.getEntryGroupIamPolicy({
///     project: testEntryGroupBasic.project,
///     location: testEntryGroupBasic.location,
///     entryGroupId: testEntryGroupBasic.entryGroupId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataplex.get_entry_group_iam_policy(project=test_entry_group_basic["project"],
///     location=test_entry_group_basic["location"],
///     entry_group_id=test_entry_group_basic["entryGroupId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataPlex.GetEntryGroupIamPolicy.Invoke(new()
///     {
///         Project = testEntryGroupBasic.Project,
///         Location = testEntryGroupBasic.Location,
///         EntryGroupId = testEntryGroupBasic.EntryGroupId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.LookupEntryGroupIamPolicy(ctx, &dataplex.LookupEntryGroupIamPolicyArgs{
/// 			Project:      pulumi.StringRef(testEntryGroupBasic.Project),
/// 			Location:     pulumi.StringRef(testEntryGroupBasic.Location),
/// 			EntryGroupId: testEntryGroupBasic.EntryGroupId,
/// 		}, nil)
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
/// data "gcp_dataplex_getentrygroupiampolicy" "policy" {
///   project        = testEntryGroupBasic.project
///   location       = testEntryGroupBasic.location
///   entry_group_id = testEntryGroupBasic.entryGroupId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.DataplexFunctions;
/// import com.pulumi.gcp.dataplex.inputs.GetEntryGroupIamPolicyArgs;
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
///         final var policy = DataplexFunctions.getEntryGroupIamPolicy(GetEntryGroupIamPolicyArgs.builder()
///             .project(testEntryGroupBasic.get("project"))
///             .location(testEntryGroupBasic.get("location"))
///             .entryGroupId(testEntryGroupBasic.get("entryGroupId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dataplex:getEntryGroupIamPolicy
///       arguments:
///         project: ${testEntryGroupBasic.project}
///         location: ${testEntryGroupBasic.location}
///         entryGroupId: ${testEntryGroupBasic.entryGroupId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_get_entry_group_iam_policy_get_entry_group_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntryGroupIamPolicyResult> getEntryGroupIamPolicy(
  GetEntryGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getEntryGroupIamPolicy:getEntryGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryGroupIamPolicyResult.fromMap(result);
}

pulumi.Output<GetEntryGroupIamPolicyResult> getEntryGroupIamPolicyOutput(
  GetEntryGroupIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataplex/getEntryGroupIamPolicy:getEntryGroupIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntryGroupIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for entrytype
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataplex.getEntryTypeIamPolicy({
///     project: testEntryTypeBasic.project,
///     location: testEntryTypeBasic.location,
///     entryTypeId: testEntryTypeBasic.entryTypeId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataplex.get_entry_type_iam_policy(project=test_entry_type_basic["project"],
///     location=test_entry_type_basic["location"],
///     entry_type_id=test_entry_type_basic["entryTypeId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataPlex.GetEntryTypeIamPolicy.Invoke(new()
///     {
///         Project = testEntryTypeBasic.Project,
///         Location = testEntryTypeBasic.Location,
///         EntryTypeId = testEntryTypeBasic.EntryTypeId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.LookupEntryTypeIamPolicy(ctx, &dataplex.LookupEntryTypeIamPolicyArgs{
/// 			Project:     pulumi.StringRef(testEntryTypeBasic.Project),
/// 			Location:    pulumi.StringRef(testEntryTypeBasic.Location),
/// 			EntryTypeId: testEntryTypeBasic.EntryTypeId,
/// 		}, nil)
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
/// data "gcp_dataplex_getentrytypeiampolicy" "policy" {
///   project       = testEntryTypeBasic.project
///   location      = testEntryTypeBasic.location
///   entry_type_id = testEntryTypeBasic.entryTypeId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.DataplexFunctions;
/// import com.pulumi.gcp.dataplex.inputs.GetEntryTypeIamPolicyArgs;
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
///         final var policy = DataplexFunctions.getEntryTypeIamPolicy(GetEntryTypeIamPolicyArgs.builder()
///             .project(testEntryTypeBasic.get("project"))
///             .location(testEntryTypeBasic.get("location"))
///             .entryTypeId(testEntryTypeBasic.get("entryTypeId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dataplex:getEntryTypeIamPolicy
///       arguments:
///         project: ${testEntryTypeBasic.project}
///         location: ${testEntryTypeBasic.location}
///         entryTypeId: ${testEntryTypeBasic.entryTypeId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_get_entry_type_iam_policy_get_entry_type_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntryTypeIamPolicyResult> getEntryTypeIamPolicy(
  GetEntryTypeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getEntryTypeIamPolicy:getEntryTypeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryTypeIamPolicyResult.fromMap(result);
}

pulumi.Output<GetEntryTypeIamPolicyResult> getEntryTypeIamPolicyOutput(
  GetEntryTypeIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataplex/getEntryTypeIamPolicy:getEntryTypeIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetEntryTypeIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for glossary
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataplex.getGlossaryIamPolicy({
///     project: glossaryTestId.project,
///     location: glossaryTestId.location,
///     glossaryId: glossaryTestId.glossaryId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataplex.get_glossary_iam_policy(project=glossary_test_id["project"],
///     location=glossary_test_id["location"],
///     glossary_id=glossary_test_id["glossaryId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataPlex.GetGlossaryIamPolicy.Invoke(new()
///     {
///         Project = glossaryTestId.Project,
///         Location = glossaryTestId.Location,
///         GlossaryId = glossaryTestId.GlossaryId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.LookupGlossaryIamPolicy(ctx, &dataplex.LookupGlossaryIamPolicyArgs{
/// 			Project:    pulumi.StringRef(glossaryTestId.Project),
/// 			Location:   pulumi.StringRef(glossaryTestId.Location),
/// 			GlossaryId: glossaryTestId.GlossaryId,
/// 		}, nil)
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
/// data "gcp_dataplex_getglossaryiampolicy" "policy" {
///   project     = glossaryTestId.project
///   location    = glossaryTestId.location
///   glossary_id = glossaryTestId.glossaryId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.DataplexFunctions;
/// import com.pulumi.gcp.dataplex.inputs.GetGlossaryIamPolicyArgs;
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
///         final var policy = DataplexFunctions.getGlossaryIamPolicy(GetGlossaryIamPolicyArgs.builder()
///             .project(glossaryTestId.get("project"))
///             .location(glossaryTestId.get("location"))
///             .glossaryId(glossaryTestId.get("glossaryId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dataplex:getGlossaryIamPolicy
///       arguments:
///         project: ${glossaryTestId.project}
///         location: ${glossaryTestId.location}
///         glossaryId: ${glossaryTestId.glossaryId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_get_glossary_iam_policy_get_glossary_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlossaryIamPolicyResult> getGlossaryIamPolicy(
  GetGlossaryIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getGlossaryIamPolicy:getGlossaryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlossaryIamPolicyResult.fromMap(result);
}

pulumi.Output<GetGlossaryIamPolicyResult> getGlossaryIamPolicyOutput(
  GetGlossaryIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataplex/getGlossaryIamPolicy:getGlossaryIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGlossaryIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for lake
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataplex.getLakeIamPolicy({
///     project: example.project,
///     location: example.location,
///     lake: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataplex.get_lake_iam_policy(project=example["project"],
///     location=example["location"],
///     lake=example["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataPlex.GetLakeIamPolicy.Invoke(new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         Lake = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.LookupLakeIamPolicy(ctx, &dataplex.LookupLakeIamPolicyArgs{
/// 			Project:  pulumi.StringRef(example.Project),
/// 			Location: pulumi.StringRef(example.Location),
/// 			Lake:     example.Name,
/// 		}, nil)
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
/// data "gcp_dataplex_getlakeiampolicy" "policy" {
///   project  = example.project
///   location = example.location
///   lake     = example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.DataplexFunctions;
/// import com.pulumi.gcp.dataplex.inputs.GetLakeIamPolicyArgs;
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
///         final var policy = DataplexFunctions.getLakeIamPolicy(GetLakeIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .lake(example.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dataplex:getLakeIamPolicy
///       arguments:
///         project: ${example.project}
///         location: ${example.location}
///         lake: ${example.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_get_lake_iam_policy_get_lake_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLakeIamPolicyResult> getLakeIamPolicy(
  GetLakeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getLakeIamPolicy:getLakeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLakeIamPolicyResult.fromMap(result);
}

pulumi.Output<GetLakeIamPolicyResult> getLakeIamPolicyOutput(
  GetLakeIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataplex/getLakeIamPolicy:getLakeIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLakeIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for task
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataplex.getTaskIamPolicy({
///     project: example.project,
///     location: example.location,
///     lake: example.lake,
///     taskId: example.taskId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataplex.get_task_iam_policy(project=example["project"],
///     location=example["location"],
///     lake=example["lake"],
///     task_id=example["taskId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataPlex.GetTaskIamPolicy.Invoke(new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         Lake = example.Lake,
///         TaskId = example.TaskId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.LookupTaskIamPolicy(ctx, &dataplex.LookupTaskIamPolicyArgs{
/// 			Project:  pulumi.StringRef(example.Project),
/// 			Location: pulumi.StringRef(example.Location),
/// 			Lake:     example.Lake,
/// 			TaskId:   example.TaskId,
/// 		}, nil)
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
/// data "gcp_dataplex_gettaskiampolicy" "policy" {
///   project  = example.project
///   location = example.location
///   lake     = example.lake
///   task_id  = example.taskId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.DataplexFunctions;
/// import com.pulumi.gcp.dataplex.inputs.GetTaskIamPolicyArgs;
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
///         final var policy = DataplexFunctions.getTaskIamPolicy(GetTaskIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .lake(example.get("lake"))
///             .taskId(example.get("taskId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dataplex:getTaskIamPolicy
///       arguments:
///         project: ${example.project}
///         location: ${example.location}
///         lake: ${example.lake}
///         taskId: ${example.taskId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_get_task_iam_policy_get_task_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaskIamPolicyResult> getTaskIamPolicy(
  GetTaskIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getTaskIamPolicy:getTaskIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaskIamPolicyResult.fromMap(result);
}

pulumi.Output<GetTaskIamPolicyResult> getTaskIamPolicyOutput(
  GetTaskIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataplex/getTaskIamPolicy:getTaskIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTaskIamPolicyResult.fromMap);
}

/// Retrieves the current IAM policy data for zone
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.dataplex.getZoneIamPolicy({
///     project: example.project,
///     location: example.location,
///     lake: example.lake,
///     dataplexZone: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.dataplex.get_zone_iam_policy(project=example["project"],
///     location=example["location"],
///     lake=example["lake"],
///     dataplex_zone=example["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.DataPlex.GetZoneIamPolicy.Invoke(new()
///     {
///         Project = example.Project,
///         Location = example.Location,
///         Lake = example.Lake,
///         DataplexZone = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.LookupZoneIamPolicy(ctx, &dataplex.LookupZoneIamPolicyArgs{
/// 			Project:      pulumi.StringRef(example.Project),
/// 			Location:     pulumi.StringRef(example.Location),
/// 			Lake:         example.Lake,
/// 			DataplexZone: example.Name,
/// 		}, nil)
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
/// data "gcp_dataplex_getzoneiampolicy" "policy" {
///   project       = example.project
///   location      = example.location
///   lake          = example.lake
///   dataplex_zone = example.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataplex.DataplexFunctions;
/// import com.pulumi.gcp.dataplex.inputs.GetZoneIamPolicyArgs;
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
///         final var policy = DataplexFunctions.getZoneIamPolicy(GetZoneIamPolicyArgs.builder()
///             .project(example.get("project"))
///             .location(example.get("location"))
///             .lake(example.get("lake"))
///             .dataplexZone(example.get("name"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:dataplex:getZoneIamPolicy
///       arguments:
///         project: ${example.project}
///         location: ${example.location}
///         lake: ${example.lake}
///         dataplexZone: ${example.name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_dataplex_get_zone_iam_policy_get_zone_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZoneIamPolicyResult> getZoneIamPolicy(
  GetZoneIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:dataplex/getZoneIamPolicy:getZoneIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZoneIamPolicyResult.fromMap(result);
}

pulumi.Output<GetZoneIamPolicyResult> getZoneIamPolicyOutput(
  GetZoneIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'gcp:dataplex/getZoneIamPolicy:getZoneIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetZoneIamPolicyResult.fromMap);
}
