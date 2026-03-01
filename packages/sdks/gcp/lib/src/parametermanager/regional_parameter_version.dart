import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_parameter_version_args.dart';
import 'regional_parameter_version_state.dart';

/// A Regional Parameter Version resource that stores the actual value of the regional parameter.
///
///
/// To get more information about RegionalParameterVersion, see:
///
/// * [API documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters.versions)
///
///
///
/// ## Example Usage
///
/// ### Regional Parameter Version Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const regional_parameter_basic = new gcp.parametermanager.RegionalParameter("regional-parameter-basic", {
///     parameterId: "regional_parameter",
///     location: "us-central1",
/// });
/// const regional_parameter_version_basic = new gcp.parametermanager.RegionalParameterVersion("regional-parameter-version-basic", {
///     parameter: regional_parameter_basic.id,
///     parameterVersionId: "regional_parameter_version",
///     parameterData: "regional-parameter-version-data",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// regional_parameter_basic = gcp.parametermanager.RegionalParameter("regional-parameter-basic",
///     parameter_id="regional_parameter",
///     location="us-central1")
/// regional_parameter_version_basic = gcp.parametermanager.RegionalParameterVersion("regional-parameter-version-basic",
///     parameter=regional_parameter_basic.id,
///     parameter_version_id="regional_parameter_version",
///     parameter_data="regional-parameter-version-data")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var regional_parameter_basic = new Gcp.ParameterManager.RegionalParameter("regional-parameter-basic", new()
///     {
///         ParameterId = "regional_parameter",
///         Location = "us-central1",
///     });
///
///     var regional_parameter_version_basic = new Gcp.ParameterManager.RegionalParameterVersion("regional-parameter-version-basic", new()
///     {
///         Parameter = regional_parameter_basic.Id,
///         ParameterVersionId = "regional_parameter_version",
///         ParameterData = "regional-parameter-version-data",
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
/// 		regional_parameter_basic, err := parametermanager.NewRegionalParameter(ctx, "regional-parameter-basic", &parametermanager.RegionalParameterArgs{
/// 			ParameterId: pulumi.String("regional_parameter"),
/// 			Location:    pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = parametermanager.NewRegionalParameterVersion(ctx, "regional-parameter-version-basic", &parametermanager.RegionalParameterVersionArgs{
/// 			Parameter:          regional_parameter_basic.ID(),
/// 			ParameterVersionId: pulumi.String("regional_parameter_version"),
/// 			ParameterData:      pulumi.String("regional-parameter-version-data"),
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
/// import com.pulumi.gcp.parametermanager.RegionalParameter;
/// import com.pulumi.gcp.parametermanager.RegionalParameterArgs;
/// import com.pulumi.gcp.parametermanager.RegionalParameterVersion;
/// import com.pulumi.gcp.parametermanager.RegionalParameterVersionArgs;
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
///         var regional_parameter_basic = new RegionalParameter("regional-parameter-basic", RegionalParameterArgs.builder()
///             .parameterId("regional_parameter")
///             .location("us-central1")
///             .build());
///
///         var regional_parameter_version_basic = new RegionalParameterVersion("regional-parameter-version-basic", RegionalParameterVersionArgs.builder()
///             .parameter(regional_parameter_basic.id())
///             .parameterVersionId("regional_parameter_version")
///             .parameterData("regional-parameter-version-data")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regional-parameter-basic:
///     type: gcp:parametermanager:RegionalParameter
///     properties:
///       parameterId: regional_parameter
///       location: us-central1
///   regional-parameter-version-basic:
///     type: gcp:parametermanager:RegionalParameterVersion
///     properties:
///       parameter: ${["regional-parameter-basic"].id}
///       parameterVersionId: regional_parameter_version
///       parameterData: regional-parameter-version-data
/// ```
///
/// ### Regional Parameter Version With Json Format
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const regional_parameter_basic = new gcp.parametermanager.RegionalParameter("regional-parameter-basic", {
///     parameterId: "regional_parameter",
///     format: "JSON",
///     location: "us-central1",
/// });
/// const regional_parameter_version_with_json_format = new gcp.parametermanager.RegionalParameterVersion("regional-parameter-version-with-json-format", {
///     parameter: regional_parameter_basic.id,
///     parameterVersionId: "regional_parameter_version",
///     parameterData: JSON.stringify({
///         key1: "val1",
///         key2: "val2",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// regional_parameter_basic = gcp.parametermanager.RegionalParameter("regional-parameter-basic",
///     parameter_id="regional_parameter",
///     format="JSON",
///     location="us-central1")
/// regional_parameter_version_with_json_format = gcp.parametermanager.RegionalParameterVersion("regional-parameter-version-with-json-format",
///     parameter=regional_parameter_basic.id,
///     parameter_version_id="regional_parameter_version",
///     parameter_data=json.dumps({
///         "key1": "val1",
///         "key2": "val2",
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var regional_parameter_basic = new Gcp.ParameterManager.RegionalParameter("regional-parameter-basic", new()
///     {
///         ParameterId = "regional_parameter",
///         Format = "JSON",
///         Location = "us-central1",
///     });
///
///     var regional_parameter_version_with_json_format = new Gcp.ParameterManager.RegionalParameterVersion("regional-parameter-version-with-json-format", new()
///     {
///         Parameter = regional_parameter_basic.Id,
///         ParameterVersionId = "regional_parameter_version",
///         ParameterData = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["key1"] = "val1",
///             ["key2"] = "val2",
///         }),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		regional_parameter_basic, err := parametermanager.NewRegionalParameter(ctx, "regional-parameter-basic", &parametermanager.RegionalParameterArgs{
/// 			ParameterId: pulumi.String("regional_parameter"),
/// 			Format:      pulumi.String("JSON"),
/// 			Location:    pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"key1": "val1",
/// 			"key2": "val2",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = parametermanager.NewRegionalParameterVersion(ctx, "regional-parameter-version-with-json-format", &parametermanager.RegionalParameterVersionArgs{
/// 			Parameter:          regional_parameter_basic.ID(),
/// 			ParameterVersionId: pulumi.String("regional_parameter_version"),
/// 			ParameterData:      pulumi.String(json0),
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
/// import com.pulumi.gcp.parametermanager.RegionalParameter;
/// import com.pulumi.gcp.parametermanager.RegionalParameterArgs;
/// import com.pulumi.gcp.parametermanager.RegionalParameterVersion;
/// import com.pulumi.gcp.parametermanager.RegionalParameterVersionArgs;
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
///         var regional_parameter_basic = new RegionalParameter("regional-parameter-basic", RegionalParameterArgs.builder()
///             .parameterId("regional_parameter")
///             .format("JSON")
///             .location("us-central1")
///             .build());
///
///         var regional_parameter_version_with_json_format = new RegionalParameterVersion("regional-parameter-version-with-json-format", RegionalParameterVersionArgs.builder()
///             .parameter(regional_parameter_basic.id())
///             .parameterVersionId("regional_parameter_version")
///             .parameterData(serializeJson(
///                 jsonObject(
///                     jsonProperty("key1", "val1"),
///                     jsonProperty("key2", "val2")
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regional-parameter-basic:
///     type: gcp:parametermanager:RegionalParameter
///     properties:
///       parameterId: regional_parameter
///       format: JSON
///       location: us-central1
///   regional-parameter-version-with-json-format:
///     type: gcp:parametermanager:RegionalParameterVersion
///     properties:
///       parameter: ${["regional-parameter-basic"].id}
///       parameterVersionId: regional_parameter_version
///       parameterData:
///         fn::toJSON:
///           key1: val1
///           key2: val2
/// ```
///
/// ### Regional Parameter Version With Kms Key
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const regional_parameter_basic = new gcp.parametermanager.RegionalParameter("regional-parameter-basic", {
///     parameterId: "regional_parameter",
///     location: "us-central1",
///     kmsKey: "kms-key",
/// });
/// const regional_parameter_version_with_kms_key = new gcp.parametermanager.RegionalParameterVersion("regional-parameter-version-with-kms-key", {
///     parameter: regional_parameter_basic.id,
///     parameterVersionId: "regional_parameter_version",
///     parameterData: "regional-parameter-version-data",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// regional_parameter_basic = gcp.parametermanager.RegionalParameter("regional-parameter-basic",
///     parameter_id="regional_parameter",
///     location="us-central1",
///     kms_key="kms-key")
/// regional_parameter_version_with_kms_key = gcp.parametermanager.RegionalParameterVersion("regional-parameter-version-with-kms-key",
///     parameter=regional_parameter_basic.id,
///     parameter_version_id="regional_parameter_version",
///     parameter_data="regional-parameter-version-data")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var regional_parameter_basic = new Gcp.ParameterManager.RegionalParameter("regional-parameter-basic", new()
///     {
///         ParameterId = "regional_parameter",
///         Location = "us-central1",
///         KmsKey = "kms-key",
///     });
///
///     var regional_parameter_version_with_kms_key = new Gcp.ParameterManager.RegionalParameterVersion("regional-parameter-version-with-kms-key", new()
///     {
///         Parameter = regional_parameter_basic.Id,
///         ParameterVersionId = "regional_parameter_version",
///         ParameterData = "regional-parameter-version-data",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		regional_parameter_basic, err := parametermanager.NewRegionalParameter(ctx, "regional-parameter-basic", &parametermanager.RegionalParameterArgs{
/// 			ParameterId: pulumi.String("regional_parameter"),
/// 			Location:    pulumi.String("us-central1"),
/// 			KmsKey:      pulumi.String("kms-key"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = parametermanager.NewRegionalParameterVersion(ctx, "regional-parameter-version-with-kms-key", &parametermanager.RegionalParameterVersionArgs{
/// 			Parameter:          regional_parameter_basic.ID(),
/// 			ParameterVersionId: pulumi.String("regional_parameter_version"),
/// 			ParameterData:      pulumi.String("regional-parameter-version-data"),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.parametermanager.RegionalParameter;
/// import com.pulumi.gcp.parametermanager.RegionalParameterArgs;
/// import com.pulumi.gcp.parametermanager.RegionalParameterVersion;
/// import com.pulumi.gcp.parametermanager.RegionalParameterVersionArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var regional_parameter_basic = new RegionalParameter("regional-parameter-basic", RegionalParameterArgs.builder()
///             .parameterId("regional_parameter")
///             .location("us-central1")
///             .kmsKey("kms-key")
///             .build());
///
///         var regional_parameter_version_with_kms_key = new RegionalParameterVersion("regional-parameter-version-with-kms-key", RegionalParameterVersionArgs.builder()
///             .parameter(regional_parameter_basic.id())
///             .parameterVersionId("regional_parameter_version")
///             .parameterData("regional-parameter-version-data")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regional-parameter-basic:
///     type: gcp:parametermanager:RegionalParameter
///     properties:
///       parameterId: regional_parameter
///       location: us-central1
///       kmsKey: kms-key
///   regional-parameter-version-with-kms-key:
///     type: gcp:parametermanager:RegionalParameterVersion
///     properties:
///       parameter: ${["regional-parameter-basic"].id}
///       parameterVersionId: regional_parameter_version
///       parameterData: regional-parameter-version-data
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Regional Parameter Version With Json Format With File
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const regional_parameter_basic = new gcp.parametermanager.RegionalParameter("regional-parameter-basic", {
///     parameterId: "regional_parameter",
///     format: "JSON",
///     location: "us-central1",
/// });
/// const regional_parameter_version_with_json_format_with_file = new gcp.parametermanager.RegionalParameterVersion("regional-parameter-version-with-json-format-with-file", {
///     parameter: regional_parameter_basic.id,
///     parameterVersionId: "regional_parameter_version",
///     parameterData: std.file({
///         input: "regional-parameter-json-data.json",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// regional_parameter_basic = gcp.parametermanager.RegionalParameter("regional-parameter-basic",
///     parameter_id="regional_parameter",
///     format="JSON",
///     location="us-central1")
/// regional_parameter_version_with_json_format_with_file = gcp.parametermanager.RegionalParameterVersion("regional-parameter-version-with-json-format-with-file",
///     parameter=regional_parameter_basic.id,
///     parameter_version_id="regional_parameter_version",
///     parameter_data=std.file(input="regional-parameter-json-data.json").result)
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
///     var regional_parameter_basic = new Gcp.ParameterManager.RegionalParameter("regional-parameter-basic", new()
///     {
///         ParameterId = "regional_parameter",
///         Format = "JSON",
///         Location = "us-central1",
///     });
///
///     var regional_parameter_version_with_json_format_with_file = new Gcp.ParameterManager.RegionalParameterVersion("regional-parameter-version-with-json-format-with-file", new()
///     {
///         Parameter = regional_parameter_basic.Id,
///         ParameterVersionId = "regional_parameter_version",
///         ParameterData = Std.File.Invoke(new()
///         {
///             Input = "regional-parameter-json-data.json",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		regional_parameter_basic, err := parametermanager.NewRegionalParameter(ctx, "regional-parameter-basic", &parametermanager.RegionalParameterArgs{
/// 			ParameterId: pulumi.String("regional_parameter"),
/// 			Format:      pulumi.String("JSON"),
/// 			Location:    pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "regional-parameter-json-data.json",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = parametermanager.NewRegionalParameterVersion(ctx, "regional-parameter-version-with-json-format-with-file", &parametermanager.RegionalParameterVersionArgs{
/// 			Parameter:          regional_parameter_basic.ID(),
/// 			ParameterVersionId: pulumi.String("regional_parameter_version"),
/// 			ParameterData:      pulumi.String(invokeFile.Result),
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
/// import com.pulumi.gcp.parametermanager.RegionalParameter;
/// import com.pulumi.gcp.parametermanager.RegionalParameterArgs;
/// import com.pulumi.gcp.parametermanager.RegionalParameterVersion;
/// import com.pulumi.gcp.parametermanager.RegionalParameterVersionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var regional_parameter_basic = new RegionalParameter("regional-parameter-basic", RegionalParameterArgs.builder()
///             .parameterId("regional_parameter")
///             .format("JSON")
///             .location("us-central1")
///             .build());
///
///         var regional_parameter_version_with_json_format_with_file = new RegionalParameterVersion("regional-parameter-version-with-json-format-with-file", RegionalParameterVersionArgs.builder()
///             .parameter(regional_parameter_basic.id())
///             .parameterVersionId("regional_parameter_version")
///             .parameterData(StdFunctions.file(FileArgs.builder()
///                 .input("regional-parameter-json-data.json")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regional-parameter-basic:
///     type: gcp:parametermanager:RegionalParameter
///     properties:
///       parameterId: regional_parameter
///       format: JSON
///       location: us-central1
///   regional-parameter-version-with-json-format-with-file:
///     type: gcp:parametermanager:RegionalParameterVersion
///     properties:
///       parameter: ${["regional-parameter-basic"].id}
///       parameterVersionId: regional_parameter_version
///       parameterData:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: regional-parameter-json-data.json
///           return: result
/// ```
///
/// ### Regional Parameter Version With Yaml Format With File
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const regional_parameter_basic = new gcp.parametermanager.RegionalParameter("regional-parameter-basic", {
///     parameterId: "regional_parameter",
///     format: "YAML",
///     location: "us-central1",
/// });
/// const regional_parameter_version_with_yaml_format_with_file = new gcp.parametermanager.RegionalParameterVersion("regional-parameter-version-with-yaml-format-with-file", {
///     parameter: regional_parameter_basic.id,
///     parameterVersionId: "regional_parameter_version",
///     parameterData: std.file({
///         input: "regional-parameter-yaml-data.yaml",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// regional_parameter_basic = gcp.parametermanager.RegionalParameter("regional-parameter-basic",
///     parameter_id="regional_parameter",
///     format="YAML",
///     location="us-central1")
/// regional_parameter_version_with_yaml_format_with_file = gcp.parametermanager.RegionalParameterVersion("regional-parameter-version-with-yaml-format-with-file",
///     parameter=regional_parameter_basic.id,
///     parameter_version_id="regional_parameter_version",
///     parameter_data=std.file(input="regional-parameter-yaml-data.yaml").result)
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
///     var regional_parameter_basic = new Gcp.ParameterManager.RegionalParameter("regional-parameter-basic", new()
///     {
///         ParameterId = "regional_parameter",
///         Format = "YAML",
///         Location = "us-central1",
///     });
///
///     var regional_parameter_version_with_yaml_format_with_file = new Gcp.ParameterManager.RegionalParameterVersion("regional-parameter-version-with-yaml-format-with-file", new()
///     {
///         Parameter = regional_parameter_basic.Id,
///         ParameterVersionId = "regional_parameter_version",
///         ParameterData = Std.File.Invoke(new()
///         {
///             Input = "regional-parameter-yaml-data.yaml",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		regional_parameter_basic, err := parametermanager.NewRegionalParameter(ctx, "regional-parameter-basic", &parametermanager.RegionalParameterArgs{
/// 			ParameterId: pulumi.String("regional_parameter"),
/// 			Format:      pulumi.String("YAML"),
/// 			Location:    pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "regional-parameter-yaml-data.yaml",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = parametermanager.NewRegionalParameterVersion(ctx, "regional-parameter-version-with-yaml-format-with-file", &parametermanager.RegionalParameterVersionArgs{
/// 			Parameter:          regional_parameter_basic.ID(),
/// 			ParameterVersionId: pulumi.String("regional_parameter_version"),
/// 			ParameterData:      pulumi.String(invokeFile.Result),
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
/// import com.pulumi.gcp.parametermanager.RegionalParameter;
/// import com.pulumi.gcp.parametermanager.RegionalParameterArgs;
/// import com.pulumi.gcp.parametermanager.RegionalParameterVersion;
/// import com.pulumi.gcp.parametermanager.RegionalParameterVersionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var regional_parameter_basic = new RegionalParameter("regional-parameter-basic", RegionalParameterArgs.builder()
///             .parameterId("regional_parameter")
///             .format("YAML")
///             .location("us-central1")
///             .build());
///
///         var regional_parameter_version_with_yaml_format_with_file = new RegionalParameterVersion("regional-parameter-version-with-yaml-format-with-file", RegionalParameterVersionArgs.builder()
///             .parameter(regional_parameter_basic.id())
///             .parameterVersionId("regional_parameter_version")
///             .parameterData(StdFunctions.file(FileArgs.builder()
///                 .input("regional-parameter-yaml-data.yaml")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regional-parameter-basic:
///     type: gcp:parametermanager:RegionalParameter
///     properties:
///       parameterId: regional_parameter
///       format: YAML
///       location: us-central1
///   regional-parameter-version-with-yaml-format-with-file:
///     type: gcp:parametermanager:RegionalParameterVersion
///     properties:
///       parameter: ${["regional-parameter-basic"].id}
///       parameterVersionId: regional_parameter_version
///       parameterData:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: regional-parameter-yaml-data.yaml
///           return: result
/// ```
///
///
/// ## Import
///
/// RegionalParameterVersion can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}/versions/{{parameter_version_id}}`
///
/// When using the `pulumi import` command, RegionalParameterVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:parametermanager/regionalParameterVersion:RegionalParameterVersion default projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}/versions/{{parameter_version_id}}
/// ```
class RegionalParameterVersion extends pulumi.CustomResource {
  /// The time at which the Regional Parameter Version was created.
  late final pulumi.Output<String> createTime;
  /// The current state of Regional Parameter Version. This field is only applicable for updating Regional Parameter Version.
  late final pulumi.Output<bool?> disabled;
  /// The resource name of the Cloud KMS CryptoKeyVersion used to decrypt regional parameter version payload. Format
  /// `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}/cryptoKeyVersions/{{crypto_key_version}}`
  late final pulumi.Output<String> kmsKeyVersion;
  /// Location of Parameter Manager Regional parameter resource.
  late final pulumi.Output<String> location;
  /// The resource name of the Regional Parameter Version. Format:
  /// `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}/versions/{{parameter_version_id}}`
  late final pulumi.Output<String> name;
  /// Parameter Manager Regional Parameter resource.
  late final pulumi.Output<String> parameter;
  /// The Regional Parameter data.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String> parameterData;
  /// Version ID of the Regional Parameter Version Resource. This must be unique within the Regional Parameter.
  late final pulumi.Output<String> parameterVersionId;
  /// The time at which the Regional Parameter Version was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [RegionalParameterVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionalParameterVersion]. {@macro pulumi_parametermanager_regional_parameter_version_regional_parameter_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionalParameterVersion(
    String name, {
    RegionalParameterVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:parametermanager/regionalParameterVersion:RegionalParameterVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.disabled = registerOutput<bool?>('disabled');
    this.kmsKeyVersion = registerOutput<String>('kmsKeyVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parameter = registerOutput<String>('parameter');
    this.parameterData = registerOutput<String>('parameterData');
    this.parameterVersionId = registerOutput<String>('parameterVersionId');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [RegionalParameterVersion] resource's state with the given [name] and [id].
  static RegionalParameterVersion get(
    String name,
    pulumi.Input<String> id, {
    RegionalParameterVersionState? state,
  }) {
    return RegionalParameterVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegionalParameterVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:parametermanager/regionalParameterVersion:RegionalParameterVersion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.disabled = registerOutput<bool?>('disabled');
    this.kmsKeyVersion = registerOutput<String>('kmsKeyVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parameter = registerOutput<String>('parameter');
    this.parameterData = registerOutput<String>('parameterData');
    this.parameterVersionId = registerOutput<String>('parameterVersionId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
