import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';
import 'group_state.dart';

/// The `newrelic.Group` resource facilitates creating, updating, and deleting groups in New Relic, while also enabling the addition and removal of users from these groups.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = newrelic.getAuthenticationDomain({
///     name: "Test Authentication Domain",
/// });
/// const fooGroup = new newrelic.Group("foo", {
///     name: "Test Group",
///     authenticationDomainId: foo.then(foo => foo.id),
///     userIds: [
///         "0001112222",
///         "2221110000",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.get_authentication_domain(name="Test Authentication Domain")
/// foo_group = newrelic.Group("foo",
///     name="Test Group",
///     authentication_domain_id=foo.id,
///     user_ids=[
///         "0001112222",
///         "2221110000",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = NewRelic.GetAuthenticationDomain.Invoke(new()
///     {
///         Name = "Test Authentication Domain",
///     });
///
///     var fooGroup = new NewRelic.Group("foo", new()
///     {
///         Name = "Test Group",
///         AuthenticationDomainId = foo.Apply(getAuthenticationDomainResult => getAuthenticationDomainResult.Id),
///         UserIds = new[]
///         {
///             "0001112222",
///             "2221110000",
///         },
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
/// 		foo, err := newrelic.GetAuthenticationDomain(ctx, &newrelic.GetAuthenticationDomainArgs{
/// 			Name: "Test Authentication Domain",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewGroup(ctx, "foo", &newrelic.GroupArgs{
/// 			Name:                   pulumi.String("Test Group"),
/// 			AuthenticationDomainId: pulumi.String(foo.Id),
/// 			UserIds: pulumi.StringArray{
/// 				pulumi.String("0001112222"),
/// 				pulumi.String("2221110000"),
/// 			},
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
/// import com.pulumi.newrelic.NewrelicFunctions;
/// import com.pulumi.newrelic.inputs.GetAuthenticationDomainArgs;
/// import com.pulumi.newrelic.Group;
/// import com.pulumi.newrelic.GroupArgs;
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
///         final var foo = NewrelicFunctions.getAuthenticationDomain(GetAuthenticationDomainArgs.builder()
///             .name("Test Authentication Domain")
///             .build());
///
///         var fooGroup = new Group("fooGroup", GroupArgs.builder()
///             .name("Test Group")
///             .authenticationDomainId(foo.id())
///             .userIds(
///                 "0001112222",
///                 "2221110000")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fooGroup:
///     type: newrelic:Group
///     name: foo
///     properties:
///       name: Test Group
///       authenticationDomainId: ${foo.id}
///       userIds:
///         - '0001112222'
///         - '2221110000'
/// variables:
///   foo:
///     fn::invoke:
///       function: newrelic:getAuthenticationDomain
///       arguments:
///         name: Test Authentication Domain
/// ```
///
///
/// ## Additional Examples
///
/// ### Updating User Group Membership Management in Terraform
///
/// ### Overview
/// There is a potential race condition within Terraform when managing user accounts and their respective group memberships. A user might be deleted before Terraform disassociates them from a user group. This can lead to an error during `pulumi up` because the user ID no longer exists when the group resource is being updated.
///
/// ### Recommended Solution
/// To address this and ensure proper sequential execution of resource updates, it is recommended to utilize the `create_before_destroy` lifecycle directive within your user group resource definition.
///
/// ### Addition of New Users to a New Group
///
/// The following example illustrates the creation of a group using the `newrelic.Group` resource, to which users created using the `newrelic.User` resource are added.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = newrelic.getAuthenticationDomain({
///     name: "Test Authentication Domain",
/// });
/// const fooUser = new newrelic.User("foo", {
///     name: "Test User One",
///     emailId: "test_user_one@test.com",
///     authenticationDomainId: foo.then(foo => foo.id),
///     userType: "CORE_USER_TIER",
/// });
/// const bar = new newrelic.User("bar", {
///     name: "Test User Two",
///     emailId: "test_user_two@test.com",
///     authenticationDomainId: foo.then(foo => foo.id),
///     userType: "BASIC_USER_TIER",
/// });
/// const fooGroup = new newrelic.Group("foo", {
///     name: "Test Group",
///     authenticationDomainId: foo.then(foo => foo.id),
///     userIds: [
///         fooUser.id,
///         bar.id,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.get_authentication_domain(name="Test Authentication Domain")
/// foo_user = newrelic.User("foo",
///     name="Test User One",
///     email_id="test_user_one@test.com",
///     authentication_domain_id=foo.id,
///     user_type="CORE_USER_TIER")
/// bar = newrelic.User("bar",
///     name="Test User Two",
///     email_id="test_user_two@test.com",
///     authentication_domain_id=foo.id,
///     user_type="BASIC_USER_TIER")
/// foo_group = newrelic.Group("foo",
///     name="Test Group",
///     authentication_domain_id=foo.id,
///     user_ids=[
///         foo_user.id,
///         bar.id,
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = NewRelic.GetAuthenticationDomain.Invoke(new()
///     {
///         Name = "Test Authentication Domain",
///     });
///
///     var fooUser = new NewRelic.User("foo", new()
///     {
///         Name = "Test User One",
///         EmailId = "test_user_one@test.com",
///         AuthenticationDomainId = foo.Apply(getAuthenticationDomainResult => getAuthenticationDomainResult.Id),
///         UserType = "CORE_USER_TIER",
///     });
///
///     var bar = new NewRelic.User("bar", new()
///     {
///         Name = "Test User Two",
///         EmailId = "test_user_two@test.com",
///         AuthenticationDomainId = foo.Apply(getAuthenticationDomainResult => getAuthenticationDomainResult.Id),
///         UserType = "BASIC_USER_TIER",
///     });
///
///     var fooGroup = new NewRelic.Group("foo", new()
///     {
///         Name = "Test Group",
///         AuthenticationDomainId = foo.Apply(getAuthenticationDomainResult => getAuthenticationDomainResult.Id),
///         UserIds = new[]
///         {
///             fooUser.Id,
///             bar.Id,
///         },
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
/// 		foo, err := newrelic.GetAuthenticationDomain(ctx, &newrelic.GetAuthenticationDomainArgs{
/// 			Name: "Test Authentication Domain",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooUser, err := newrelic.NewUser(ctx, "foo", &newrelic.UserArgs{
/// 			Name:                   pulumi.String("Test User One"),
/// 			EmailId:                pulumi.String("test_user_one@test.com"),
/// 			AuthenticationDomainId: pulumi.String(foo.Id),
/// 			UserType:               pulumi.String("CORE_USER_TIER"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bar, err := newrelic.NewUser(ctx, "bar", &newrelic.UserArgs{
/// 			Name:                   pulumi.String("Test User Two"),
/// 			EmailId:                pulumi.String("test_user_two@test.com"),
/// 			AuthenticationDomainId: pulumi.String(foo.Id),
/// 			UserType:               pulumi.String("BASIC_USER_TIER"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewGroup(ctx, "foo", &newrelic.GroupArgs{
/// 			Name:                   pulumi.String("Test Group"),
/// 			AuthenticationDomainId: pulumi.String(foo.Id),
/// 			UserIds: pulumi.StringArray{
/// 				fooUser.ID(),
/// 				bar.ID(),
/// 			},
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
/// import com.pulumi.newrelic.NewrelicFunctions;
/// import com.pulumi.newrelic.inputs.GetAuthenticationDomainArgs;
/// import com.pulumi.newrelic.User;
/// import com.pulumi.newrelic.UserArgs;
/// import com.pulumi.newrelic.Group;
/// import com.pulumi.newrelic.GroupArgs;
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
///         final var foo = NewrelicFunctions.getAuthenticationDomain(GetAuthenticationDomainArgs.builder()
///             .name("Test Authentication Domain")
///             .build());
///
///         var fooUser = new User("fooUser", UserArgs.builder()
///             .name("Test User One")
///             .emailId("test_user_one@test.com")
///             .authenticationDomainId(foo.id())
///             .userType("CORE_USER_TIER")
///             .build());
///
///         var bar = new User("bar", UserArgs.builder()
///             .name("Test User Two")
///             .emailId("test_user_two@test.com")
///             .authenticationDomainId(foo.id())
///             .userType("BASIC_USER_TIER")
///             .build());
///
///         var fooGroup = new Group("fooGroup", GroupArgs.builder()
///             .name("Test Group")
///             .authenticationDomainId(foo.id())
///             .userIds(
///                 fooUser.id(),
///                 bar.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fooUser:
///     type: newrelic:User
///     name: foo
///     properties:
///       name: Test User One
///       emailId: test_user_one@test.com
///       authenticationDomainId: ${foo.id}
///       userType: CORE_USER_TIER
///   bar:
///     type: newrelic:User
///     properties:
///       name: Test User Two
///       emailId: test_user_two@test.com
///       authenticationDomainId: ${foo.id}
///       userType: BASIC_USER_TIER
///   fooGroup:
///     type: newrelic:Group
///     name: foo
///     properties:
///       name: Test Group
///       authenticationDomainId: ${foo.id}
///       userIds:
///         - ${fooUser.id}
///         - ${bar.id}
/// variables:
///   foo:
///     fn::invoke:
///       function: newrelic:getAuthenticationDomain
///       arguments:
///         name: Test Authentication Domain
/// ```
///
///
/// ### Addition of Existing Users to a New Group
///
/// The following example demonstrates the usage of the `newrelic.Group` resource to create a group, wherein the `newrelic.User` data source is employed to associate existing users with the newly formed group.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = newrelic.getAuthenticationDomain({
///     name: "Test Authentication Domain",
/// });
/// const fooGetUser = foo.then(foo => newrelic.getUser({
///     authenticationDomainId: foo.id,
///     emailId: "test_user_one@test.com",
/// }));
/// const bar = foo.then(foo => newrelic.getUser({
///     authenticationDomainId: foo.id,
///     name: "Test User Two",
/// }));
/// const fooGroup = new newrelic.Group("foo", {
///     name: "Test Group",
///     authenticationDomainId: foo.then(foo => foo.id),
///     userIds: [
///         fooGetUser.then(fooGetUser => fooGetUser.id),
///         bar.then(bar => bar.id),
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.get_authentication_domain(name="Test Authentication Domain")
/// foo_get_user = newrelic.get_user(authentication_domain_id=foo.id,
///     email_id="test_user_one@test.com")
/// bar = newrelic.get_user(authentication_domain_id=foo.id,
///     name="Test User Two")
/// foo_group = newrelic.Group("foo",
///     name="Test Group",
///     authentication_domain_id=foo.id,
///     user_ids=[
///         foo_get_user.id,
///         bar.id,
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = NewRelic.GetAuthenticationDomain.Invoke(new()
///     {
///         Name = "Test Authentication Domain",
///     });
///
///     var fooGetUser = NewRelic.GetUser.Invoke(new()
///     {
///         AuthenticationDomainId = foo.Apply(getAuthenticationDomainResult => getAuthenticationDomainResult.Id),
///         EmailId = "test_user_one@test.com",
///     });
///
///     var bar = NewRelic.GetUser.Invoke(new()
///     {
///         AuthenticationDomainId = foo.Apply(getAuthenticationDomainResult => getAuthenticationDomainResult.Id),
///         Name = "Test User Two",
///     });
///
///     var fooGroup = new NewRelic.Group("foo", new()
///     {
///         Name = "Test Group",
///         AuthenticationDomainId = foo.Apply(getAuthenticationDomainResult => getAuthenticationDomainResult.Id),
///         UserIds = new[]
///         {
///             fooGetUser.Apply(getUserResult => getUserResult.Id),
///             bar.Apply(getUserResult => getUserResult.Id),
///         },
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
/// 		foo, err := newrelic.GetAuthenticationDomain(ctx, &newrelic.GetAuthenticationDomainArgs{
/// 			Name: "Test Authentication Domain",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooGetUser, err := newrelic.LookupUser(ctx, &newrelic.LookupUserArgs{
/// 			AuthenticationDomainId: foo.Id,
/// 			EmailId:                pulumi.StringRef("test_user_one@test.com"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bar, err := newrelic.LookupUser(ctx, &newrelic.LookupUserArgs{
/// 			AuthenticationDomainId: foo.Id,
/// 			Name:                   pulumi.StringRef("Test User Two"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewGroup(ctx, "foo", &newrelic.GroupArgs{
/// 			Name:                   pulumi.String("Test Group"),
/// 			AuthenticationDomainId: pulumi.String(foo.Id),
/// 			UserIds: pulumi.StringArray{
/// 				pulumi.String(fooGetUser.Id),
/// 				pulumi.String(bar.Id),
/// 			},
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
/// import com.pulumi.newrelic.NewrelicFunctions;
/// import com.pulumi.newrelic.inputs.GetAuthenticationDomainArgs;
/// import com.pulumi.newrelic.inputs.GetUserArgs;
/// import com.pulumi.newrelic.Group;
/// import com.pulumi.newrelic.GroupArgs;
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
///         final var foo = NewrelicFunctions.getAuthenticationDomain(GetAuthenticationDomainArgs.builder()
///             .name("Test Authentication Domain")
///             .build());
///
///         final var fooGetUser = NewrelicFunctions.getUser(GetUserArgs.builder()
///             .authenticationDomainId(foo.id())
///             .emailId("test_user_one@test.com")
///             .build());
///
///         final var bar = NewrelicFunctions.getUser(GetUserArgs.builder()
///             .authenticationDomainId(foo.id())
///             .name("Test User Two")
///             .build());
///
///         var fooGroup = new Group("fooGroup", GroupArgs.builder()
///             .name("Test Group")
///             .authenticationDomainId(foo.id())
///             .userIds(
///                 fooGetUser.id(),
///                 bar.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fooGroup:
///     type: newrelic:Group
///     name: foo
///     properties:
///       name: Test Group
///       authenticationDomainId: ${foo.id}
///       userIds:
///         - ${fooGetUser.id}
///         - ${bar.id}
/// variables:
///   foo:
///     fn::invoke:
///       function: newrelic:getAuthenticationDomain
///       arguments:
///         name: Test Authentication Domain
///   fooGetUser:
///     fn::invoke:
///       function: newrelic:getUser
///       arguments:
///         authenticationDomainId: ${foo.id}
///         emailId: test_user_one@test.com
///   bar:
///     fn::invoke:
///       function: newrelic:getUser
///       arguments:
///         authenticationDomainId: ${foo.id}
///         name: Test User Two
/// ```
///
///
/// > **NOTE** Please note that the addition of users to groups is only possible when both the group and the users to be added to it belong to the _same authentication domain_. If the group being created and the users being added to it belong to different authentication domains, an error indicating `user not found` or an equivalent error will be thrown.
///
/// ## Import
///
/// A group can be imported using its ID. Example:
///
/// ```sh
/// $ pulumi import newrelic:index/group:Group foo <group_id>
/// ```
class Group extends pulumi.CustomResource {
  /// The ID of the authentication domain to which the group to be created would belong.
  late final pulumi.Output<String> authenticationDomainId;
  /// The name of the group to be created.
  late final pulumi.Output<String> name;
  /// A list of IDs of users to be included in the group to be created.
  ///
  /// > **NOTE** The ID of an authentication domain can be retrieved using its name, via the data source `newrelic.getAuthenticationDomain`, as shown in the example above. Head over to the documentation of this data source for more details and examples.
  ///
  /// > **WARNING:** Changing the `authentication_domain_id` of a `newrelic.Group` resource that has already been applied would result in a **replacement** of the resource – destruction of the existing resource, followed by the addition of a new resource with the specified configuration. This is due to the fact that updating the `authentication_domain_id` of an existing group is not supported.
  late final pulumi.Output<List<String>?> userIds;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_index_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationDomainId = registerOutput<String>('authenticationDomainId');
    this.name = registerOutput<String>('name');
    this.userIds = registerOutput<List<String>?>('userIds');
  }

  /// Gets an existing [Group] resource's state with the given [name] and [id].
  static Group get(
    String name,
    pulumi.Input<String> id, {
    GroupState? state,
  }) {
    return Group._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Group._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/group:Group',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authenticationDomainId = registerOutput<String>('authenticationDomainId');
    this.name = registerOutput<String>('name');
    this.userIds = registerOutput<List<String>?>('userIds');
  }
}
