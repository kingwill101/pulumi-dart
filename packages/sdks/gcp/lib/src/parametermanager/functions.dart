import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_parameter_args.dart';
import 'get_parameter_result.dart';
import 'get_parameter_version_args.dart';
import 'get_parameter_version_render_args.dart';
import 'get_parameter_version_render_result.dart';
import 'get_parameter_version_result.dart';
import 'get_parameters_args.dart';
import 'get_parameters_result.dart';
import 'get_regional_parameter_args.dart';
import 'get_regional_parameter_result.dart';
import 'get_regional_parameter_version_args.dart';
import 'get_regional_parameter_version_render_args.dart';
import 'get_regional_parameter_version_render_result.dart';
import 'get_regional_parameter_version_result.dart';
import 'get_regional_parameters_args.dart';
import 'get_regional_parameters_result.dart';

/// Use this data source to get information about a Parameter Manager Parameter.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const parameterDatasource = gcp.parametermanager.getParameter({
///     parameterId: "foobar",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// parameter_datasource = gcp.parametermanager.get_parameter(parameter_id="foobar")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var parameterDatasource = Gcp.ParameterManager.GetParameter.Invoke(new()
///     {
///         ParameterId = "foobar",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.LookupParameter(ctx, &parametermanager.LookupParameterArgs{
/// 			ParameterId: "foobar",
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
/// data "gcp_parametermanager_getparameter" "parameterDatasource" {
///   parameter_id = "foobar"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.parametermanager.ParametermanagerFunctions;
/// import com.pulumi.gcp.parametermanager.inputs.GetParameterArgs;
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
///         final var parameterDatasource = ParametermanagerFunctions.getParameter(GetParameterArgs.builder()
///             .parameterId("foobar")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   parameterDatasource:
///     fn::invoke:
///       function: gcp:parametermanager:getParameter
///       arguments:
///         parameterId: foobar
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_parametermanager_get_parameter_get_parameter_args_doc}
/// [options] Invoke options controlling this call.
Future<GetParameterResult> getParameter(
  GetParameterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getParameter:getParameter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParameterResult.fromMap(result);
}

/// Get the value and metadata from a Parameter Manager Parameter version. For more information see the [official documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/overview)  and [API](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters.versions).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = gcp.parametermanager.getParameterVersion({
///     parameter: "test-parameter",
///     parameterVersionId: "test-parameter-version",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.parametermanager.get_parameter_version(parameter="test-parameter",
///     parameter_version_id="test-parameter-version")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = Gcp.ParameterManager.GetParameterVersion.Invoke(new()
///     {
///         Parameter = "test-parameter",
///         ParameterVersionId = "test-parameter-version",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.LookupParameterVersion(ctx, &parametermanager.LookupParameterVersionArgs{
/// 			Parameter:          "test-parameter",
/// 			ParameterVersionId: "test-parameter-version",
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
/// data "gcp_parametermanager_getparameterversion" "basic" {
///   parameter            = "test-parameter"
///   parameter_version_id = "test-parameter-version"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.parametermanager.ParametermanagerFunctions;
/// import com.pulumi.gcp.parametermanager.inputs.GetParameterVersionArgs;
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
///         final var basic = ParametermanagerFunctions.getParameterVersion(GetParameterVersionArgs.builder()
///             .parameter("test-parameter")
///             .parameterVersionId("test-parameter-version")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   basic:
///     fn::invoke:
///       function: gcp:parametermanager:getParameterVersion
///       arguments:
///         parameter: test-parameter
///         parameterVersionId: test-parameter-version
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_parametermanager_get_parameter_version_get_parameter_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetParameterVersionResult> getParameterVersion(
  GetParameterVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getParameterVersion:getParameterVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParameterVersionResult.fromMap(result);
}

/// Get the value and metadata from a Parameter Manager Parameter version with render payload data. For this datasource to work as expected, the principal of the parameter must be provided with the [Secret Manager Secret Accessor](https://cloud.google.com/secret-manager/docs/access-control#secretmanager.secretAccessor) role. For more information see the [official documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/overview)  and [API](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters.versions/render).
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = gcp.parametermanager.getParameterVersionRender({
///     parameter: "test-parameter",
///     parameterVersionId: "test-parameter-version",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.parametermanager.get_parameter_version_render(parameter="test-parameter",
///     parameter_version_id="test-parameter-version")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = Gcp.ParameterManager.GetParameterVersionRender.Invoke(new()
///     {
///         Parameter = "test-parameter",
///         ParameterVersionId = "test-parameter-version",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.GetParameterVersionRender(ctx, &parametermanager.GetParameterVersionRenderArgs{
/// 			Parameter:          "test-parameter",
/// 			ParameterVersionId: "test-parameter-version",
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
/// data "gcp_parametermanager_getparameterversionrender" "basic" {
///   parameter            = "test-parameter"
///   parameter_version_id = "test-parameter-version"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.parametermanager.ParametermanagerFunctions;
/// import com.pulumi.gcp.parametermanager.inputs.GetParameterVersionRenderArgs;
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
///         final var basic = ParametermanagerFunctions.getParameterVersionRender(GetParameterVersionRenderArgs.builder()
///             .parameter("test-parameter")
///             .parameterVersionId("test-parameter-version")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   basic:
///     fn::invoke:
///       function: gcp:parametermanager:getParameterVersionRender
///       arguments:
///         parameter: test-parameter
///         parameterVersionId: test-parameter-version
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_parametermanager_get_parameter_version_render_get_parameter_version_render_args_doc}
/// [options] Invoke options controlling this call.
Future<GetParameterVersionRenderResult> getParameterVersionRender(
  GetParameterVersionRenderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getParameterVersionRender:getParameterVersionRender',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParameterVersionRenderResult.fromMap(result);
}

/// Use this data source to list the Parameter Manager Parameters.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const parameters = gcp.parametermanager.getParameters({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// parameters = gcp.parametermanager.get_parameters()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var parameters = Gcp.ParameterManager.GetParameters.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.GetParameters(ctx, &parametermanager.GetParametersArgs{}, nil)
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
/// data "gcp_parametermanager_getparameters" "parameters" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.parametermanager.ParametermanagerFunctions;
/// import com.pulumi.gcp.parametermanager.inputs.GetParametersArgs;
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
///         final var parameters = ParametermanagerFunctions.getParameters(GetParametersArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   parameters:
///     fn::invoke:
///       function: gcp:parametermanager:getParameters
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_parametermanager_get_parameters_get_parameters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetParametersResult> getParameters(
  GetParametersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getParameters:getParameters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParametersResult.fromMap(result);
}

/// Use this data source to get information about a Parameter Manager Regional Parameter.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const regParameterDatasource = gcp.parametermanager.getRegionalParameter({
///     parameterId: "foobar",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// reg_parameter_datasource = gcp.parametermanager.get_regional_parameter(parameter_id="foobar",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var regParameterDatasource = Gcp.ParameterManager.GetRegionalParameter.Invoke(new()
///     {
///         ParameterId = "foobar",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.LookupRegionalParameter(ctx, &parametermanager.LookupRegionalParameterArgs{
/// 			ParameterId: "foobar",
/// 			Location:    "us-central1",
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
/// data "gcp_parametermanager_getregionalparameter" "regParameterDatasource" {
///   parameter_id = "foobar"
///   location     = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.parametermanager.ParametermanagerFunctions;
/// import com.pulumi.gcp.parametermanager.inputs.GetRegionalParameterArgs;
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
///         final var regParameterDatasource = ParametermanagerFunctions.getRegionalParameter(GetRegionalParameterArgs.builder()
///             .parameterId("foobar")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   regParameterDatasource:
///     fn::invoke:
///       function: gcp:parametermanager:getRegionalParameter
///       arguments:
///         parameterId: foobar
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_parametermanager_get_regional_parameter_get_regional_parameter_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionalParameterResult> getRegionalParameter(
  GetRegionalParameterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getRegionalParameter:getRegionalParameter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionalParameterResult.fromMap(result);
}

/// Get the value and metadata from a Parameter Manager Regional Parameter version. For more information see the [official documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/overview) and [API](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters.versions).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = gcp.parametermanager.getRegionalParameterVersion({
///     parameter: "test-regional-parameter",
///     parameterVersionId: "test-regional-parameter-version",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.parametermanager.get_regional_parameter_version(parameter="test-regional-parameter",
///     parameter_version_id="test-regional-parameter-version",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = Gcp.ParameterManager.GetRegionalParameterVersion.Invoke(new()
///     {
///         Parameter = "test-regional-parameter",
///         ParameterVersionId = "test-regional-parameter-version",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.LookupRegionalParameterVersion(ctx, &parametermanager.LookupRegionalParameterVersionArgs{
/// 			Parameter:          "test-regional-parameter",
/// 			ParameterVersionId: "test-regional-parameter-version",
/// 			Location:           pulumi.StringRef("us-central1"),
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
/// data "gcp_parametermanager_getregionalparameterversion" "basic" {
///   parameter            = "test-regional-parameter"
///   parameter_version_id = "test-regional-parameter-version"
///   location             = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.parametermanager.ParametermanagerFunctions;
/// import com.pulumi.gcp.parametermanager.inputs.GetRegionalParameterVersionArgs;
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
///         final var basic = ParametermanagerFunctions.getRegionalParameterVersion(GetRegionalParameterVersionArgs.builder()
///             .parameter("test-regional-parameter")
///             .parameterVersionId("test-regional-parameter-version")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   basic:
///     fn::invoke:
///       function: gcp:parametermanager:getRegionalParameterVersion
///       arguments:
///         parameter: test-regional-parameter
///         parameterVersionId: test-regional-parameter-version
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_parametermanager_get_regional_parameter_version_get_regional_parameter_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionalParameterVersionResult> getRegionalParameterVersion(
  GetRegionalParameterVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getRegionalParameterVersion:getRegionalParameterVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionalParameterVersionResult.fromMap(result);
}

/// Get the value and metadata from a Parameter Manager Regional Parameter version with rendered payload data. For this datasource to work as expected, the principal of the parameter must be provided with the [Secret Manager Secret Accessor](https://cloud.google.com/secret-manager/docs/access-control#secretmanager.secretAccessor) role. For more information see the [official documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/overview)  and [API](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters.versions/render).
///
/// &gt; **Warning:** To use this data source, we must grant the `Secret Manager Secret Accessor` role to the principal of the parameter. Please note that it can take up to 7 minutes for the role to take effect. Hence, we might need to wait approximately 7 minutes after granting  `Secret Manager Secret Accessor` role to the principal of the parameter. For more information see the [access change propagation documentation](https://cloud.google.com/iam/docs/access-change-propagation).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = gcp.parametermanager.getRegionalParameterVersionRender({
///     parameter: "test-regional-parameter",
///     parameterVersionId: "test-regional-parameter-version",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.parametermanager.get_regional_parameter_version_render(parameter="test-regional-parameter",
///     parameter_version_id="test-regional-parameter-version",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = Gcp.ParameterManager.GetRegionalParameterVersionRender.Invoke(new()
///     {
///         Parameter = "test-regional-parameter",
///         ParameterVersionId = "test-regional-parameter-version",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.GetRegionalParameterVersionRender(ctx, &parametermanager.GetRegionalParameterVersionRenderArgs{
/// 			Parameter:          "test-regional-parameter",
/// 			ParameterVersionId: "test-regional-parameter-version",
/// 			Location:           pulumi.StringRef("us-central1"),
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
/// data "gcp_parametermanager_getregionalparameterversionrender" "basic" {
///   parameter            = "test-regional-parameter"
///   parameter_version_id = "test-regional-parameter-version"
///   location             = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.parametermanager.ParametermanagerFunctions;
/// import com.pulumi.gcp.parametermanager.inputs.GetRegionalParameterVersionRenderArgs;
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
///         final var basic = ParametermanagerFunctions.getRegionalParameterVersionRender(GetRegionalParameterVersionRenderArgs.builder()
///             .parameter("test-regional-parameter")
///             .parameterVersionId("test-regional-parameter-version")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   basic:
///     fn::invoke:
///       function: gcp:parametermanager:getRegionalParameterVersionRender
///       arguments:
///         parameter: test-regional-parameter
///         parameterVersionId: test-regional-parameter-version
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_parametermanager_get_regional_parameter_version_render_get_regional_parameter_version_render_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionalParameterVersionRenderResult> getRegionalParameterVersionRender(
  GetRegionalParameterVersionRenderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getRegionalParameterVersionRender:getRegionalParameterVersionRender',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionalParameterVersionRenderResult.fromMap(result);
}

/// Use this data source to list the Parameter Manager Regional Parameters.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const regional_parameters = gcp.parametermanager.getRegionalParameters({
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// regional_parameters = gcp.parametermanager.get_regional_parameters(location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var regional_parameters = Gcp.ParameterManager.GetRegionalParameters.Invoke(new()
///     {
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.GetRegionalParameters(ctx, &parametermanager.GetRegionalParametersArgs{
/// 			Location: "us-central1",
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
/// data "gcp_parametermanager_getregionalparameters" "regional-parameters" {
///   location = "us-central1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.parametermanager.ParametermanagerFunctions;
/// import com.pulumi.gcp.parametermanager.inputs.GetRegionalParametersArgs;
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
///         final var regional-parameters = ParametermanagerFunctions.getRegionalParameters(GetRegionalParametersArgs.builder()
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   regional-parameters:
///     fn::invoke:
///       function: gcp:parametermanager:getRegionalParameters
///       arguments:
///         location: us-central1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_parametermanager_get_regional_parameters_get_regional_parameters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionalParametersResult> getRegionalParameters(
  GetRegionalParametersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getRegionalParameters:getRegionalParameters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionalParametersResult.fromMap(result);
}
