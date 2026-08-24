import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';
import 'user_organization.dart';
import 'user_state.dart';

/// Accepted Permissions
///
/// - `User Details Read`
/// - `User Details Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleUser = new cloudflare.User("example_user", {
///     country: "US",
///     firstName: "John",
///     lastName: "Appleseed",
///     telephone: "+1 123-123-1234",
///     zipcode: "12345",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_user = cloudflare.User("example_user",
///     country="US",
///     first_name="John",
///     last_name="Appleseed",
///     telephone="+1 123-123-1234",
///     zipcode="12345")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleUser = new Cloudflare.User("example_user", new()
///     {
///         Country = "US",
///         FirstName = "John",
///         LastName = "Appleseed",
///         Telephone = "+1 123-123-1234",
///         Zipcode = "12345",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewUser(ctx, "example_user", &cloudflare.UserArgs{
/// 			Country:   pulumi.String("US"),
/// 			FirstName: pulumi.String("John"),
/// 			LastName:  pulumi.String("Appleseed"),
/// 			Telephone: pulumi.String("+1 123-123-1234"),
/// 			Zipcode:   pulumi.String("12345"),
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_user" "example_user" {
///   country    = "US"
///   first_name = "John"
///   last_name  = "Appleseed"
///   telephone  = "+1 123-123-1234"
///   zipcode    = "12345"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.User;
/// import com.pulumi.cloudflare.UserArgs;
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
///         var exampleUser = new User("exampleUser", UserArgs.builder()
///             .country("US")
///             .firstName("John")
///             .lastName("Appleseed")
///             .telephone("+1 123-123-1234")
///             .zipcode("12345")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleUser:
///     type: cloudflare:User
///     name: example_user
///     properties:
///       country: US
///       firstName: John
///       lastName: Appleseed
///       telephone: +1 123-123-1234
///       zipcode: '12345'
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class User extends pulumi.CustomResource {
  /// Lists the betas that the user is participating in.
  late final pulumi.Output<List<String>> betas;
  /// The country in which the user lives.
  late final pulumi.Output<String?> country;
  /// Current email address of the user.
  late final pulumi.Output<String> email;
  /// User's first name
  late final pulumi.Output<String?> firstName;
  /// Indicates whether user has any business zones
  late final pulumi.Output<bool> hasBusinessZones;
  /// Indicates whether user has any enterprise zones
  late final pulumi.Output<bool> hasEnterpriseZones;
  /// Indicates whether user has any pro zones
  late final pulumi.Output<bool> hasProZones;
  /// User's last name
  late final pulumi.Output<String?> lastName;
  late final pulumi.Output<List<UserOrganization>> organizations;
  /// Indicates whether user has been suspended
  late final pulumi.Output<bool> suspended;
  /// User's telephone number
  late final pulumi.Output<String?> telephone;
  /// Indicates whether two-factor authentication is enabled for the user account. Does not apply to API authentication.
  late final pulumi.Output<bool> twoFactorAuthenticationEnabled;
  /// Indicates whether two-factor authentication is required by one of the accounts that the user is a member of.
  late final pulumi.Output<bool> twoFactorAuthenticationLocked;
  /// The zipcode or postal code where the user lives.
  late final pulumi.Output<String?> zipcode;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_index_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    betas = registerOutput<List<String>>('betas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    country = registerOutput<String?>('country');
    email = registerOutput<String>('email');
    firstName = registerOutput<String?>('firstName');
    hasBusinessZones = registerOutput<bool>('hasBusinessZones');
    hasEnterpriseZones = registerOutput<bool>('hasEnterpriseZones');
    hasProZones = registerOutput<bool>('hasProZones');
    lastName = registerOutput<String?>('lastName');
    organizations = registerOutput<List<UserOrganization>>('organizations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserOrganization>(guardedValue, (value) => UserOrganization.fromMap((value as Map).cast<String, dynamic>())); });
    suspended = registerOutput<bool>('suspended');
    telephone = registerOutput<String?>('telephone');
    twoFactorAuthenticationEnabled = registerOutput<bool>('twoFactorAuthenticationEnabled');
    twoFactorAuthenticationLocked = registerOutput<bool>('twoFactorAuthenticationLocked');
    zipcode = registerOutput<String?>('zipcode');
  }

  /// Gets an existing [User] resource's state with the given [name] and [id].
  static User get(
    String name,
    pulumi.Input<String> id, {
    UserState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return User._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  User._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/user:User',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    betas = registerOutput<List<String>>('betas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    country = registerOutput<String?>('country');
    email = registerOutput<String>('email');
    firstName = registerOutput<String?>('firstName');
    hasBusinessZones = registerOutput<bool>('hasBusinessZones');
    hasEnterpriseZones = registerOutput<bool>('hasEnterpriseZones');
    hasProZones = registerOutput<bool>('hasProZones');
    lastName = registerOutput<String?>('lastName');
    organizations = registerOutput<List<UserOrganization>>('organizations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserOrganization>(guardedValue, (value) => UserOrganization.fromMap((value as Map).cast<String, dynamic>())); });
    suspended = registerOutput<bool>('suspended');
    telephone = registerOutput<String?>('telephone');
    twoFactorAuthenticationEnabled = registerOutput<bool>('twoFactorAuthenticationEnabled');
    twoFactorAuthenticationLocked = registerOutput<bool>('twoFactorAuthenticationLocked');
    zipcode = registerOutput<String?>('zipcode');
  }

  /// Creates a typed reference to an existing [User] resource.
  User.reference(String urn)
    : super(
        'cloudflare:index/user:User',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    betas = registerOutput<List<String>>('betas', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    country = registerOutput<String?>('country');
    email = registerOutput<String>('email');
    firstName = registerOutput<String?>('firstName');
    hasBusinessZones = registerOutput<bool>('hasBusinessZones');
    hasEnterpriseZones = registerOutput<bool>('hasEnterpriseZones');
    hasProZones = registerOutput<bool>('hasProZones');
    lastName = registerOutput<String?>('lastName');
    organizations = registerOutput<List<UserOrganization>>('organizations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserOrganization>(guardedValue, (value) => UserOrganization.fromMap((value as Map).cast<String, dynamic>())); });
    suspended = registerOutput<bool>('suspended');
    telephone = registerOutput<String?>('telephone');
    twoFactorAuthenticationEnabled = registerOutput<bool>('twoFactorAuthenticationEnabled');
    twoFactorAuthenticationLocked = registerOutput<bool>('twoFactorAuthenticationLocked');
    zipcode = registerOutput<String?>('zipcode');
  }
}
