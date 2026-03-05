import 'package:pulumi/pulumi.dart' as pulumi;
import 'secure_credential_args.dart';
import 'secure_credential_state.dart';

/// Use this resource to create and manage New Relic Synthetic secure credentials.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.synthetics.SecureCredential("foo", {
///     key: "MY_KEY",
///     value: "My value",
///     description: "My description",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.synthetics.SecureCredential("foo",
///     key="MY_KEY",
///     value="My value",
///     description="My description")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Synthetics.SecureCredential("foo", new()
///     {
///         Key = "MY_KEY",
///         Value = "My value",
///         Description = "My description",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/synthetics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := synthetics.NewSecureCredential(ctx, "foo", &synthetics.SecureCredentialArgs{
/// 			Key:         pulumi.String("MY_KEY"),
/// 			Value:       pulumi.String("My value"),
/// 			Description: pulumi.String("My description"),
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
/// import com.pulumi.newrelic.synthetics.SecureCredential;
/// import com.pulumi.newrelic.synthetics.SecureCredentialArgs;
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
///         var foo = new SecureCredential("foo", SecureCredentialArgs.builder()
///             .key("MY_KEY")
///             .value("My value")
///             .description("My description")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:synthetics:SecureCredential
///     properties:
///       key: MY_KEY
///       value: My value
///       description: My description
/// ```
///
///
/// ## Import
///
/// A Synthetics secure credential can be imported using its `key`:
///
/// ```sh
/// $ pulumi import newrelic:synthetics/secureCredential:SecureCredential foo MY_KEY
/// ```
class SecureCredential extends pulumi.CustomResource {
  /// Determines the New Relic account where the secure credential will be created. Defaults to the account associated with the API key used.
  late final pulumi.Output<String> accountId;
  /// The secure credential's description.
  late final pulumi.Output<String?> description;
  /// The secure credential's key name.  Regardless of the case used in the configuration, the provider will provide an upcased key to the underlying API.
  late final pulumi.Output<String> key;
  /// The time the secure credential was last updated.
  late final pulumi.Output<String> lastUpdated;
  /// The secure credential's value.
  late final pulumi.Output<String> value;

  /// Creates a new [SecureCredential].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecureCredential]. {@macro pulumi_synthetics_secure_credential_secure_credential_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecureCredential(
    String name, {
    SecureCredentialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:synthetics/secureCredential:SecureCredential',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    description = registerOutput<String?>('description');
    key = registerOutput<String>('key');
    lastUpdated = registerOutput<String>('lastUpdated');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [SecureCredential] resource's state with the given [name] and [id].
  static SecureCredential get(
    String name,
    pulumi.Input<String> id, {
    SecureCredentialState? state,
  }) {
    return SecureCredential._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecureCredential._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:synthetics/secureCredential:SecureCredential',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    description = registerOutput<String?>('description');
    key = registerOutput<String>('key');
    lastUpdated = registerOutput<String>('lastUpdated');
    value = registerOutput<String>('value');
  }
}
