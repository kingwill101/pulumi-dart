import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_shield_args.dart';
import 'api_shield_auth_id_characteristic.dart';
import 'api_shield_state.dart';

/// Accepted Permissions
///
/// - `Account API Gateway`
/// - `Account API Gateway Read`
/// - `Domain API Gateway`
/// - `Domain API Gateway Read`
///
/// When using `type = "jwt"` for auth ID characteristics, the `name` field must be a claim location expressed as `$(token_config_id):$(json_path)`, where:
/// - `tokenConfigId` is the ID of the token configuration used in validating the JWT
/// - `jsonPath` is a [RFC 9535](https://www.rfc-editor.org/rfc/rfc9535.html) [JSONPath](https://goessner.net/articles/JsonPath/) expression that returns a singleton value (interpreted as a string)
///
/// The JSONPath expression may be in dot or bracket notation and may only specify literal keys or array indexes.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleApiShield = new cloudflare.ApiShield("example_api_shield", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     authIdCharacteristics: [{
///         name: "authorization",
///         type: "header",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_api_shield = cloudflare.ApiShield("example_api_shield",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     auth_id_characteristics=[{
///         "name": "authorization",
///         "type": "header",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleApiShield = new Cloudflare.ApiShield("example_api_shield", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         AuthIdCharacteristics = new[]
///         {
///             new Cloudflare.Inputs.ApiShieldAuthIdCharacteristicArgs
///             {
///                 Name = "authorization",
///                 Type = "header",
///             },
///         },
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
/// 		_, err := cloudflare.NewApiShield(ctx, "example_api_shield", &cloudflare.ApiShieldArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			AuthIdCharacteristics: cloudflare.ApiShieldAuthIdCharacteristicArray{
/// 				&cloudflare.ApiShieldAuthIdCharacteristicArgs{
/// 					Name: pulumi.String("authorization"),
/// 					Type: pulumi.String("header"),
/// 				},
/// 			},
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
/// resource "cloudflare_apishield" "example_api_shield" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   auth_id_characteristics {
///     name = "authorization"
///     type = "header"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ApiShield;
/// import com.pulumi.cloudflare.ApiShieldArgs;
/// import com.pulumi.cloudflare.inputs.ApiShieldAuthIdCharacteristicArgs;
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
///         var exampleApiShield = new ApiShield("exampleApiShield", ApiShieldArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .authIdCharacteristics(ApiShieldAuthIdCharacteristicArgs.builder()
///                 .name("authorization")
///                 .type("header")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleApiShield:
///     type: cloudflare:ApiShield
///     name: example_api_shield
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       authIdCharacteristics:
///         - name: authorization
///           type: header
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/apiShield:ApiShield example '<zone_id>'
/// ```
class ApiShield extends pulumi.CustomResource {
  late final pulumi.Output<List<ApiShieldAuthIdCharacteristic>> authIdCharacteristics;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ApiShield].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiShield]. {@macro pulumi_index_api_shield_api_shield_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiShield(
    String name, {
    ApiShieldArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/apiShield:ApiShield',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    authIdCharacteristics = registerOutput<List<ApiShieldAuthIdCharacteristic>>('authIdCharacteristics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiShieldAuthIdCharacteristic>(guardedValue, (value) => ApiShieldAuthIdCharacteristic.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ApiShield] resource's state with the given [name] and [id].
  static ApiShield get(
    String name,
    pulumi.Input<String> id, {
    ApiShieldState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ApiShield._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ApiShield._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/apiShield:ApiShield',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authIdCharacteristics = registerOutput<List<ApiShieldAuthIdCharacteristic>>('authIdCharacteristics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiShieldAuthIdCharacteristic>(guardedValue, (value) => ApiShieldAuthIdCharacteristic.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ApiShield] resource.
  ApiShield.reference(String urn)
    : super(
        'cloudflare:index/apiShield:ApiShield',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    authIdCharacteristics = registerOutput<List<ApiShieldAuthIdCharacteristic>>('authIdCharacteristics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiShieldAuthIdCharacteristic>(guardedValue, (value) => ApiShieldAuthIdCharacteristic.fromMap((value as Map).cast<String, dynamic>())); });
    zoneId = registerOutput<String>('zoneId');
  }
}
