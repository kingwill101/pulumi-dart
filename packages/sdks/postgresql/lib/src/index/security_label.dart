import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_label_args.dart';
import 'security_label_state.dart';

/// The ``postgresql.SecurityLabel`` resource creates and manages security labels.
///
/// See [PostgreSQL documentation](https://www.postgresql.org/docs/current/sql-security-label.html)
///
/// &gt; **Note:** This resource needs Postgresql version 11 or above.
///
/// ## Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as postgresql from "@pulumi/postgresql";
///
/// const myRole = new postgresql.Role("my_role", {
///     name: "my_role",
///     login: true,
/// });
/// const workload = new postgresql.SecurityLabel("workload", {
///     objectType: "role",
///     objectName: myRole.name,
///     labelProvider: "pgaadauth",
///     label: "aadauth,oid=00000000-0000-0000-0000-000000000000,type=service",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_postgresql as postgresql
///
/// my_role = postgresql.Role("my_role",
///     name="my_role",
///     login=True)
/// workload = postgresql.SecurityLabel("workload",
///     object_type="role",
///     object_name=my_role.name,
///     label_provider="pgaadauth",
///     label="aadauth,oid=00000000-0000-0000-0000-000000000000,type=service")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using PostgreSql = Pulumi.PostgreSql;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myRole = new PostgreSql.Role("my_role", new()
///     {
///         Name = "my_role",
///         Login = true,
///     });
///
///     var workload = new PostgreSql.SecurityLabel("workload", new()
///     {
///         ObjectType = "role",
///         ObjectName = myRole.Name,
///         LabelProvider = "pgaadauth",
///         Label = "aadauth,oid=00000000-0000-0000-0000-000000000000,type=service",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-postgresql/sdk/v3/go/postgresql"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myRole, err := postgresql.NewRole(ctx, "my_role", &postgresql.RoleArgs{
/// 			Name:  pulumi.String("my_role"),
/// 			Login: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = postgresql.NewSecurityLabel(ctx, "workload", &postgresql.SecurityLabelArgs{
/// 			ObjectType:    pulumi.String("role"),
/// 			ObjectName:    myRole.Name,
/// 			LabelProvider: pulumi.String("pgaadauth"),
/// 			Label:         pulumi.String("aadauth,oid=00000000-0000-0000-0000-000000000000,type=service"),
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
///     postgresql = {
///       source = "pulumi/postgresql"
///     }
///   }
/// }
///
/// resource "postgresql_role" "my_role" {
///   name  = "my_role"
///   login = true
/// }
/// resource "postgresql_securitylabel" "workload" {
///   object_type    = "role"
///   object_name    = postgresql_role.my_role.name
///   label_provider = "pgaadauth"
///   label          = "aadauth,oid=00000000-0000-0000-0000-000000000000,type=service"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.postgresql.Role;
/// import com.pulumi.postgresql.RoleArgs;
/// import com.pulumi.postgresql.SecurityLabel;
/// import com.pulumi.postgresql.SecurityLabelArgs;
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
///         var myRole = new Role("myRole", RoleArgs.builder()
///             .name("my_role")
///             .login(true)
///             .build());
///
///         var workload = new SecurityLabel("workload", SecurityLabelArgs.builder()
///             .objectType("role")
///             .objectName(myRole.name())
///             .labelProvider("pgaadauth")
///             .label("aadauth,oid=00000000-0000-0000-0000-000000000000,type=service")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myRole:
///     type: postgresql:Role
///     name: my_role
///     properties:
///       name: my_role
///       login: true
///   workload:
///     type: postgresql:SecurityLabel
///     properties:
///       objectType: role
///       objectName: ${myRole.name}
///       labelProvider: pgaadauth
///       label: aadauth,oid=00000000-0000-0000-0000-000000000000,type=service
/// ```
///
///
/// ## Import
///
/// Security label is an attribute that can be added multiple times, so no import is needed, simply apply again.
class SecurityLabel extends pulumi.CustomResource {
  /// The value of the security label.
  late final pulumi.Output<String> label;
  /// The name of the provider with which this label is to be associated.
  late final pulumi.Output<String> labelProvider;
  /// The name of the object to be labeled. Names of objects that reside in schemas (tables, functions, etc.) can be schema-qualified.
  late final pulumi.Output<String> objectName;
  /// The PostgreSQL object type to apply this security label to.
  late final pulumi.Output<String> objectType;

  /// Creates a new [SecurityLabel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityLabel]. {@macro pulumi_index_security_label_security_label_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityLabel(
    String name, {
    SecurityLabelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/securityLabel:SecurityLabel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    label = registerOutput<String>('label');
    labelProvider = registerOutput<String>('labelProvider');
    objectName = registerOutput<String>('objectName');
    objectType = registerOutput<String>('objectType');
  }

  /// Gets an existing [SecurityLabel] resource's state with the given [name] and [id].
  static SecurityLabel get(
    String name,
    pulumi.Input<String> id, {
    SecurityLabelState? state,
  }) {
    return SecurityLabel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecurityLabel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'postgresql:index/securityLabel:SecurityLabel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    label = registerOutput<String>('label');
    labelProvider = registerOutput<String>('labelProvider');
    objectName = registerOutput<String>('objectName');
    objectType = registerOutput<String>('objectType');
  }
}
