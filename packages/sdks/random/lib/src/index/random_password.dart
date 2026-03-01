import 'package:pulumi/pulumi.dart' as pulumi;
import 'random_password_args.dart';
import 'random_password_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as random from "@pulumi/random";
///
/// const password = new random.RandomPassword("password", {
///     length: 16,
///     special: true,
///     overrideSpecial: "!#$%&*()-_=+[]{}<>:?",
/// });
/// const example = new aws.index.DbInstance("example", {
///     instanceClass: "db.t3.micro",
///     allocatedStorage: 64,
///     engine: "mysql",
///     username: "someone",
///     password: password.result,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_random as random
///
/// password = random.RandomPassword("password",
///     length=16,
///     special=True,
///     override_special="!#$%&*()-_=+[]{}<>:?")
/// example = aws.index.DbInstance("example",
///     instance_class=db.t3.micro,
///     allocated_storage=64,
///     engine=mysql,
///     username=someone,
///     password=password.result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var password = new Random.RandomPassword("password", new()
///     {
///         Length = 16,
///         Special = true,
///         OverrideSpecial = "!#$%&*()-_=+[]{}<>:?",
///     });
///
///     var example = new Aws.Index.DbInstance("example", new()
///     {
///         InstanceClass = "db.t3.micro",
///         AllocatedStorage = 64,
///         Engine = "mysql",
///         Username = "someone",
///         Password = password.Result,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		password, err := random.NewRandomPassword(ctx, "password", &random.RandomPasswordArgs{
/// 			Length:          pulumi.Int(16),
/// 			Special:         pulumi.Bool(true),
/// 			OverrideSpecial: pulumi.String("!#$%&*()-_=+[]{}<>:?"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = aws.NewDbInstance(ctx, "example", &aws.DbInstanceArgs{
/// 			InstanceClass:    "db.t3.micro",
/// 			AllocatedStorage: 64,
/// 			Engine:           "mysql",
/// 			Username:         "someone",
/// 			Password:         password.Result,
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
/// import com.pulumi.random.RandomPassword;
/// import com.pulumi.random.RandomPasswordArgs;
/// import com.pulumi.aws.DbInstance;
/// import com.pulumi.aws.DbInstanceArgs;
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
///         var password = new RandomPassword("password", RandomPasswordArgs.builder()
///             .length(16)
///             .special(true)
///             .overrideSpecial("!#$%&*()-_=+[]{}<>:?")
///             .build());
///
///         var example = new DbInstance("example", DbInstanceArgs.builder()
///             .instanceClass("db.t3.micro")
///             .allocatedStorage(64)
///             .engine("mysql")
///             .username("someone")
///             .password(password.result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   password:
///     type: random:RandomPassword
///     properties:
///       length: 16
///       special: true
///       overrideSpecial: '!#$%&*()-_=+[]{}<>:?'
///   example:
///     type: aws:DbInstance
///     properties:
///       instanceClass: db.t3.micro
///       allocatedStorage: 64
///       engine: mysql
///       username: someone
///       password: ${password.result}
/// ```
///
///
/// ## Import
///
/// You can import external passwords into your Pulumi programs as follows:
///
/// ```sh<break>
/// $ import random:index/randomPassword:RandomPassword newPassword supersecret
/// <break>```
///
/// This command will encode the `supersecret` token in Pulumi state and generate a code suggestion to
/// include a new RandomPassword resource in your Pulumi program. Include the suggested code and do a
/// `pulumi up`. Your secret password is now securely stored in Pulumi, and you can reference it in your
/// Pulumi program as `newPassword.result`.
/// ```
class RandomPassword extends pulumi.CustomResource {
  /// A bcrypt hash of the generated random string. **NOTE**: If the generated random string is greater than 72 bytes in length, `bcrypt_hash` will contain a hash of the first 72 bytes.
  late final pulumi.Output<String> bcryptHash;
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  late final pulumi.Output<Map<String, String>?> keepers;
  /// The length of the string desired. The minimum value for length is 1 and, length must also be >= (`min_upper` + `min_lower` + `min_numeric` + `min_special`).
  late final pulumi.Output<int> length;
  /// Include lowercase alphabet characters in the result. Default value is `true`.
  late final pulumi.Output<bool> lower;
  /// Minimum number of lowercase alphabet characters in the result. Default value is `0`.
  late final pulumi.Output<int> minLower;
  /// Minimum number of numeric characters in the result. Default value is `0`.
  late final pulumi.Output<int> minNumeric;
  /// Minimum number of special characters in the result. Default value is `0`.
  late final pulumi.Output<int> minSpecial;
  /// Minimum number of uppercase alphabet characters in the result. Default value is `0`.
  late final pulumi.Output<int> minUpper;
  /// Include numeric characters in the result. Default value is `true`. If `number`, `upper`, `lower`, and `special` are all configured, at least one of them must be set to `true`. **NOTE**: This is deprecated, use `numeric` instead.
  late final pulumi.Output<bool> number;
  /// Include numeric characters in the result. Default value is `true`. If `numeric`, `upper`, `lower`, and `special` are all configured, at least one of them must be set to `true`.
  late final pulumi.Output<bool> numeric;
  /// Supply your own list of special characters to use for string generation.  This overrides the default character list in the special argument.  The `special` argument must still be set to true for any overwritten characters to be used in generation.
  late final pulumi.Output<String?> overrideSpecial;
  /// The generated random string.
  late final pulumi.Output<String> result;
  /// Include special characters in the result. These are `!@#$%&*()-_=+[]{}<>:?`. Default value is `true`.
  late final pulumi.Output<bool> special;
  /// Include uppercase alphabet characters in the result. Default value is `true`.
  late final pulumi.Output<bool> upper;

  /// Creates a new [RandomPassword].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RandomPassword]. {@macro pulumi_index_random_password_random_password_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RandomPassword(
    String name, {
    RandomPasswordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'random:index/randomPassword:RandomPassword',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bcryptHash = registerOutput<String>('bcryptHash');
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.length = registerOutput<int>('length');
    this.lower = registerOutput<bool>('lower');
    this.minLower = registerOutput<int>('minLower');
    this.minNumeric = registerOutput<int>('minNumeric');
    this.minSpecial = registerOutput<int>('minSpecial');
    this.minUpper = registerOutput<int>('minUpper');
    this.number = registerOutput<bool>('number');
    this.numeric = registerOutput<bool>('numeric');
    this.overrideSpecial = registerOutput<String?>('overrideSpecial');
    this.result = registerOutput<String>('result');
    this.special = registerOutput<bool>('special');
    this.upper = registerOutput<bool>('upper');
  }

  /// Gets an existing [RandomPassword] resource's state with the given [name] and [id].
  static RandomPassword get(
    String name,
    pulumi.Input<String> id, {
    RandomPasswordState? state,
  }) {
    return RandomPassword._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RandomPassword._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'random:index/randomPassword:RandomPassword',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bcryptHash = registerOutput<String>('bcryptHash');
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.length = registerOutput<int>('length');
    this.lower = registerOutput<bool>('lower');
    this.minLower = registerOutput<int>('minLower');
    this.minNumeric = registerOutput<int>('minNumeric');
    this.minSpecial = registerOutput<int>('minSpecial');
    this.minUpper = registerOutput<int>('minUpper');
    this.number = registerOutput<bool>('number');
    this.numeric = registerOutput<bool>('numeric');
    this.overrideSpecial = registerOutput<String?>('overrideSpecial');
    this.result = registerOutput<String>('result');
    this.special = registerOutput<bool>('special');
    this.upper = registerOutput<bool>('upper');
  }
}
