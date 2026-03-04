import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_auth_scope_args.dart';
import 'get_auth_scope_result.dart';
import 'get_endpoint_args.dart';
import 'get_endpoint_result.dart';
import 'get_group_args.dart';
import 'get_group_result.dart';
import 'get_project_args.dart';
import 'get_project_ids_v3_args.dart';
import 'get_project_ids_v3_result.dart';
import 'get_project_result.dart';
import 'get_role_args.dart';
import 'get_role_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_user_args.dart';
import 'get_user_result.dart';

/// [args] Arguments passed to this invoke. {@macro pulumi_identity_get_auth_scope_get_auth_scope_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthScopeResult> getAuthScope(
  GetAuthScopeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:identity/getAuthScope:getAuthScope',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthScopeResult.fromMap(result);
}

/// Use this data source to get the ID of an OpenStack endpoint.
///
/// &gt; **Note:** This usually requires admin privileges.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const endpoint1 = openstack.identity.getEndpoint({
///     serviceName: "demo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// endpoint1 = openstack.identity.get_endpoint(service_name="demo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var endpoint1 = OpenStack.Identity.GetEndpoint.Invoke(new()
///     {
///         ServiceName = "demo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/identity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := identity.GetEndpoint(ctx, &identity.GetEndpointArgs{
/// 			ServiceName: pulumi.StringRef("demo"),
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
/// import com.pulumi.openstack.identity.IdentityFunctions;
/// import com.pulumi.openstack.identity.inputs.GetEndpointArgs;
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
///         final var endpoint1 = IdentityFunctions.getEndpoint(GetEndpointArgs.builder()
///             .serviceName("demo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   endpoint1:
///     fn::invoke:
///       function: openstack:identity:getEndpoint
///       arguments:
///         serviceName: demo
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_identity_get_endpoint_get_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointResult> getEndpoint(
  GetEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:identity/getEndpoint:getEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointResult.fromMap(result);
}

/// Use this data source to get the ID of an OpenStack group.
///
/// &gt; **Note:** You _must_ have admin privileges in your OpenStack cloud to use
/// this resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const admins = openstack.identity.getGroup({
///     name: "admins",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// admins = openstack.identity.get_group(name="admins")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admins = OpenStack.Identity.GetGroup.Invoke(new()
///     {
///         Name = "admins",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/identity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := identity.GetGroup(ctx, &identity.GetGroupArgs{
/// 			Name: "admins",
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
/// import com.pulumi.openstack.identity.IdentityFunctions;
/// import com.pulumi.openstack.identity.inputs.GetGroupArgs;
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
///         final var admins = IdentityFunctions.getGroup(GetGroupArgs.builder()
///             .name("admins")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   admins:
///     fn::invoke:
///       function: openstack:identity:getGroup
///       arguments:
///         name: admins
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_identity_get_group_get_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupResult> getGroup(
  GetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:identity/getGroup:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupResult.fromMap(result);
}

/// Use this data source to get the ID of an OpenStack project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const project1 = openstack.identity.getProject({
///     name: "demo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// project1 = openstack.identity.get_project(name="demo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project1 = OpenStack.Identity.GetProject.Invoke(new()
///     {
///         Name = "demo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/identity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := identity.LookupProject(ctx, &identity.LookupProjectArgs{
/// 			Name: pulumi.StringRef("demo"),
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
/// import com.pulumi.openstack.identity.IdentityFunctions;
/// import com.pulumi.openstack.identity.inputs.GetProjectArgs;
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
///         final var project1 = IdentityFunctions.getProject(GetProjectArgs.builder()
///             .name("demo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   project1:
///     fn::invoke:
///       function: openstack:identity:getProject
///       arguments:
///         name: demo
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_identity_get_project_get_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectResult> getProject(
  GetProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:identity/getProject:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectResult.fromMap(result);
}

/// Use this data source to get a list of OpenStack Project IDs matching the
/// specified criteria.
///
/// &gt; **Note:** You _must_ have domain admin or cloud admin privileges in your OpenStack cloud to use
/// this datasource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const projects = openstack.identity.getProjectIdsV3({
///     nameRegex: "^prod.*",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// projects = openstack.identity.get_project_ids_v3(name_regex="^prod.*")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var projects = OpenStack.Identity.GetProjectIdsV3.Invoke(new()
///     {
///         NameRegex = "^prod.*",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/identity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := identity.GetProjectIdsV3(ctx, &identity.GetProjectIdsV3Args{
/// 			NameRegex: pulumi.StringRef("^prod.*"),
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
/// import com.pulumi.openstack.identity.IdentityFunctions;
/// import com.pulumi.openstack.identity.inputs.GetProjectIdsV3Args;
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
///         final var projects = IdentityFunctions.getProjectIdsV3(GetProjectIdsV3Args.builder()
///             .nameRegex("^prod.*")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   projects:
///     fn::invoke:
///       function: openstack:identity:getProjectIdsV3
///       arguments:
///         nameRegex: ^prod.*
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_identity_get_project_ids_v3_get_project_ids_v3_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectIdsV3Result> getProjectIdsV3(
  GetProjectIdsV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:identity/getProjectIdsV3:getProjectIdsV3',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectIdsV3Result.fromMap(result);
}

/// Use this data source to get the ID of an OpenStack role.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const admin = openstack.identity.getRole({
///     name: "admin",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// admin = openstack.identity.get_role(name="admin")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var admin = OpenStack.Identity.GetRole.Invoke(new()
///     {
///         Name = "admin",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/identity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := identity.LookupRole(ctx, &identity.LookupRoleArgs{
/// 			Name: "admin",
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
/// import com.pulumi.openstack.identity.IdentityFunctions;
/// import com.pulumi.openstack.identity.inputs.GetRoleArgs;
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
///         final var admin = IdentityFunctions.getRole(GetRoleArgs.builder()
///             .name("admin")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   admin:
///     fn::invoke:
///       function: openstack:identity:getRole
///       arguments:
///         name: admin
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_identity_get_role_get_role_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoleResult> getRole(
  GetRoleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:identity/getRole:getRole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoleResult.fromMap(result);
}

/// Use this data source to get the ID of an OpenStack service.
///
/// &gt; **Note:** This usually requires admin privileges.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const service1 = openstack.identity.getService({
///     name: "keystone",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// service1 = openstack.identity.get_service(name="keystone")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service1 = OpenStack.Identity.GetService.Invoke(new()
///     {
///         Name = "keystone",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/identity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := identity.GetService(ctx, &identity.GetServiceArgs{
/// 			Name: pulumi.StringRef("keystone"),
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
/// import com.pulumi.openstack.identity.IdentityFunctions;
/// import com.pulumi.openstack.identity.inputs.GetServiceArgs;
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
///         final var service1 = IdentityFunctions.getService(GetServiceArgs.builder()
///             .name("keystone")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   service1:
///     fn::invoke:
///       function: openstack:identity:getService
///       arguments:
///         name: keystone
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_identity_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:identity/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// Use this data source to get the ID of an OpenStack user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const user1 = openstack.identity.getUser({
///     name: "user_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// user1 = openstack.identity.get_user(name="user_1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var user1 = OpenStack.Identity.GetUser.Invoke(new()
///     {
///         Name = "user_1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/identity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := identity.LookupUser(ctx, &identity.LookupUserArgs{
/// 			Name: pulumi.StringRef("user_1"),
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
/// import com.pulumi.openstack.identity.IdentityFunctions;
/// import com.pulumi.openstack.identity.inputs.GetUserArgs;
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
///         final var user1 = IdentityFunctions.getUser(GetUserArgs.builder()
///             .name("user_1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   user1:
///     fn::invoke:
///       function: openstack:identity:getUser
///       arguments:
///         name: user_1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_identity_get_user_get_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserResult> getUser(
  GetUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'openstack:identity/getUser:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}
