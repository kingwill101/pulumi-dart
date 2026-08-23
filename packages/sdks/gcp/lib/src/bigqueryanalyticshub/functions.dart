import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_exchange_iam_policy_args.dart';
import 'get_data_exchange_iam_policy_result.dart';
import 'get_listing_iam_policy_args.dart';
import 'get_listing_iam_policy_result.dart';

/// Retrieves the current IAM policy data for dataexchange
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.bigqueryanalyticshub.getDataExchangeIamPolicy({
///     project: dataExchange.project,
///     location: dataExchange.location,
///     dataExchangeId: dataExchange.dataExchangeId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.bigqueryanalyticshub.get_data_exchange_iam_policy(project=data_exchange["project"],
///     location=data_exchange["location"],
///     data_exchange_id=data_exchange["dataExchangeId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.BigQueryAnalyticsHub.GetDataExchangeIamPolicy.Invoke(new()
///     {
///         Project = dataExchange.Project,
///         Location = dataExchange.Location,
///         DataExchangeId = dataExchange.DataExchangeId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigqueryanalyticshub.LookupDataExchangeIamPolicy(ctx, &bigqueryanalyticshub.LookupDataExchangeIamPolicyArgs{
/// 			Project:        pulumi.StringRef(dataExchange.Project),
/// 			Location:       pulumi.StringRef(dataExchange.Location),
/// 			DataExchangeId: dataExchange.DataExchangeId,
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
/// data "gcp_bigqueryanalyticshub_getdataexchangeiampolicy" "policy" {
///   project          = dataExchange.project
///   location         = dataExchange.location
///   data_exchange_id = dataExchange.dataExchangeId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigqueryanalyticshub.BigqueryanalyticshubFunctions;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.GetDataExchangeIamPolicyArgs;
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
///         final var policy = BigqueryanalyticshubFunctions.getDataExchangeIamPolicy(GetDataExchangeIamPolicyArgs.builder()
///             .project(dataExchange.get("project"))
///             .location(dataExchange.get("location"))
///             .dataExchangeId(dataExchange.get("dataExchangeId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:bigqueryanalyticshub:getDataExchangeIamPolicy
///       arguments:
///         project: ${dataExchange.project}
///         location: ${dataExchange.location}
///         dataExchangeId: ${dataExchange.dataExchangeId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bigqueryanalyticshub_get_data_exchange_iam_policy_get_data_exchange_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataExchangeIamPolicyResult> getDataExchangeIamPolicy(
  GetDataExchangeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigqueryanalyticshub/getDataExchangeIamPolicy:getDataExchangeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataExchangeIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for listing
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.bigqueryanalyticshub.getListingIamPolicy({
///     project: listing.project,
///     location: listing.location,
///     dataExchangeId: listing.dataExchangeId,
///     listingId: listing.listingId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.bigqueryanalyticshub.get_listing_iam_policy(project=listing["project"],
///     location=listing["location"],
///     data_exchange_id=listing["dataExchangeId"],
///     listing_id=listing["listingId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.BigQueryAnalyticsHub.GetListingIamPolicy.Invoke(new()
///     {
///         Project = listing.Project,
///         Location = listing.Location,
///         DataExchangeId = listing.DataExchangeId,
///         ListingId = listing.ListingId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bigqueryanalyticshub.LookupListingIamPolicy(ctx, &bigqueryanalyticshub.LookupListingIamPolicyArgs{
/// 			Project:        pulumi.StringRef(listing.Project),
/// 			Location:       pulumi.StringRef(listing.Location),
/// 			DataExchangeId: listing.DataExchangeId,
/// 			ListingId:      listing.ListingId,
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
/// data "gcp_bigqueryanalyticshub_getlistingiampolicy" "policy" {
///   project          = listing.project
///   location         = listing.location
///   data_exchange_id = listing.dataExchangeId
///   listing_id       = listing.listingId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigqueryanalyticshub.BigqueryanalyticshubFunctions;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.GetListingIamPolicyArgs;
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
///         final var policy = BigqueryanalyticshubFunctions.getListingIamPolicy(GetListingIamPolicyArgs.builder()
///             .project(listing.get("project"))
///             .location(listing.get("location"))
///             .dataExchangeId(listing.get("dataExchangeId"))
///             .listingId(listing.get("listingId"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:bigqueryanalyticshub:getListingIamPolicy
///       arguments:
///         project: ${listing.project}
///         location: ${listing.location}
///         dataExchangeId: ${listing.dataExchangeId}
///         listingId: ${listing.listingId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_bigqueryanalyticshub_get_listing_iam_policy_get_listing_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetListingIamPolicyResult> getListingIamPolicy(
  GetListingIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigqueryanalyticshub/getListingIamPolicy:getListingIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetListingIamPolicyResult.fromMap(result);
}
