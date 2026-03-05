import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_state.dart';

/// The `newrelic.User` resource may be used to create, update and delete users in New Relic.
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
/// const fooUser = new newrelic.User("foo", {
///     name: "Test New User",
///     emailId: "test_user@test.com",
///     authenticationDomainId: foo.then(foo => foo.id),
///     userType: "CORE_USER_TIER",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.get_authentication_domain(name="Test Authentication Domain")
/// foo_user = newrelic.User("foo",
///     name="Test New User",
///     email_id="test_user@test.com",
///     authentication_domain_id=foo.id,
///     user_type="CORE_USER_TIER")
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
///         Name = "Test New User",
///         EmailId = "test_user@test.com",
///         AuthenticationDomainId = foo.Apply(getAuthenticationDomainResult => getAuthenticationDomainResult.Id),
///         UserType = "CORE_USER_TIER",
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
/// 		_, err = newrelic.NewUser(ctx, "foo", &newrelic.UserArgs{
/// 			Name:                   pulumi.String("Test New User"),
/// 			EmailId:                pulumi.String("test_user@test.com"),
/// 			AuthenticationDomainId: pulumi.String(foo.Id),
/// 			UserType:               pulumi.String("CORE_USER_TIER"),
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
///             .name("Test New User")
///             .emailId("test_user@test.com")
///             .authenticationDomainId(foo.id())
///             .userType("CORE_USER_TIER")
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
///       name: Test New User
///       emailId: test_user@test.com
///       authenticationDomainId: ${foo.id}
///       userType: CORE_USER_TIER
/// variables:
///   foo:
///     fn::invoke:
///       function: newrelic:getAuthenticationDomain
///       arguments:
///         name: Test Authentication Domain
/// ```
///
///
/// ## Import
///
/// A user can be imported using its ID. Example:
///
/// ```sh
/// $ pulumi import newrelic:index/user:User foo 1999999999
/// ```
class User extends pulumi.CustomResource {
  /// The ID of the authentication domain to which the user to be created would belong.
  late final pulumi.Output<String> authenticationDomainId;
  /// The email ID of the user to be created.
  late final pulumi.Output<String> emailId;
  /// The name of the user to be created.
  late final pulumi.Output<String> name;
  /// The tier to which the user to be created would belong. Accepted values for this argument are `BASIC_USER_TIER`, `CORE_USER_TIER`, or `FULL_USER_TIER`. If not specified in the configuration, the argument would default to `BASIC_USER_TIER`.
  ///
  /// &gt; **NOTE** The ID of an authentication domain can be retrieved using its name, via the data source `newrelic.getAuthenticationDomain`, as shown in the example above. Head over to the documentation of this data source for more details and examples.
  ///
  /// &gt; **WARNING:** Changing the `authentication_domain_id` of a `newrelic.User` resource that has already been applied would result in a **replacement** of the resource – destruction of the existing resource, followed by the addition of a new resource with the specified configuration. This is due to the fact that updating the `authentication_domain_id` of an existing user is not supported.
  late final pulumi.Output<String?> userType;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_index_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authenticationDomainId = registerOutput<String>('authenticationDomainId');
    emailId = registerOutput<String>('emailId');
    this.name = registerOutput<String>('name');
    userType = registerOutput<String?>('userType');
  }

  /// Gets an existing [User] resource's state with the given [name] and [id].
  static User get(
    String name,
    pulumi.Input<String> id, {
    UserState? state,
  }) {
    return User._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  User._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/user:User',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authenticationDomainId = registerOutput<String>('authenticationDomainId');
    emailId = registerOutput<String>('emailId');
    this.name = registerOutput<String>('name');
    userType = registerOutput<String?>('userType');
  }
}
