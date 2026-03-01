import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_location_args.dart';
import 'private_location_state.dart';

/// Use this resource to create and manage New Relic Synthetic private location.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const location = new newrelic.synthetics.PrivateLocation("location", {
///     description: "The private location description",
///     name: "The name of the private location",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// location = newrelic.synthetics.PrivateLocation("location",
///     description="The private location description",
///     name="The name of the private location")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var location = new NewRelic.Synthetics.PrivateLocation("location", new()
///     {
///         Description = "The private location description",
///         Name = "The name of the private location",
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
/// 		_, err := synthetics.NewPrivateLocation(ctx, "location", &synthetics.PrivateLocationArgs{
/// 			Description: pulumi.String("The private location description"),
/// 			Name:        pulumi.String("The name of the private location"),
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
/// import com.pulumi.newrelic.synthetics.PrivateLocation;
/// import com.pulumi.newrelic.synthetics.PrivateLocationArgs;
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
///         var location = new PrivateLocation("location", PrivateLocationArgs.builder()
///             .description("The private location description")
///             .name("The name of the private location")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   location:
///     type: newrelic:synthetics:PrivateLocation
///     properties:
///       description: The private location description
///       name: The name of the private location
/// ```
///
///
/// ## Import
///
/// A Synthetics private location can be imported using the `guid`
///
/// ```sh
/// $ pulumi import newrelic:synthetics/privateLocation:PrivateLocation location GUID
/// ```
class PrivateLocation extends pulumi.CustomResource {
  /// The account in which the private location will be created.
  late final pulumi.Output<String> accountId;
  /// The private location description.
  late final pulumi.Output<String> description;
  /// The private location globally unique identifier.
  late final pulumi.Output<String> domainId;
  /// The unique client identifier for the private location in New Relic. Same as `id`.
  late final pulumi.Output<String> guid;
  /// The private locations key.
  late final pulumi.Output<String> key;
  /// An alternate identifier based on name.
  late final pulumi.Output<String> locationId;
  /// The name of the private location.
  late final pulumi.Output<String> name;
  /// The private location requires a password to edit if value is true. Defaults to `false`
  late final pulumi.Output<bool?> verifiedScriptExecution;

  /// Creates a new [PrivateLocation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateLocation]. {@macro pulumi_synthetics_private_location_private_location_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateLocation(
    String name, {
    PrivateLocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:synthetics/privateLocation:PrivateLocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.description = registerOutput<String>('description');
    this.domainId = registerOutput<String>('domainId');
    this.guid = registerOutput<String>('guid');
    this.key = registerOutput<String>('key');
    this.locationId = registerOutput<String>('locationId');
    this.name = registerOutput<String>('name');
    this.verifiedScriptExecution = registerOutput<bool?>('verifiedScriptExecution');
  }

  /// Gets an existing [PrivateLocation] resource's state with the given [name] and [id].
  static PrivateLocation get(
    String name,
    pulumi.Input<String> id, {
    PrivateLocationState? state,
  }) {
    return PrivateLocation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PrivateLocation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:synthetics/privateLocation:PrivateLocation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.description = registerOutput<String>('description');
    this.domainId = registerOutput<String>('domainId');
    this.guid = registerOutput<String>('guid');
    this.key = registerOutput<String>('key');
    this.locationId = registerOutput<String>('locationId');
    this.name = registerOutput<String>('name');
    this.verifiedScriptExecution = registerOutput<bool?>('verifiedScriptExecution');
  }
}
