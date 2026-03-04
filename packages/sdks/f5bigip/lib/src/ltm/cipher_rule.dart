import 'package:pulumi/pulumi.dart' as pulumi;
import 'cipher_rule_args.dart';
import 'cipher_rule_state.dart';

/// `f5bigip.ltm.CipherRule` Manages F5 BIG-IP LTM cipher rule using iControl REST.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
///
/// const testCipherRule = new f5bigip.ltm.CipherRule("test_cipher_rule", {
///     name: "/Common/test_cipher_rule",
///     cipher: "TLS13-AES128-GCM-SHA256:TLS13-AES256-GCM-SHA384",
///     dhGroups: "P256:P384:FFDHE2048:FFDHE3072:FFDHE4096",
///     signatureAlgorithms: "DEFAULT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
///
/// test_cipher_rule = f5bigip.ltm.CipherRule("test_cipher_rule",
///     name="/Common/test_cipher_rule",
///     cipher="TLS13-AES128-GCM-SHA256:TLS13-AES256-GCM-SHA384",
///     dh_groups="P256:P384:FFDHE2048:FFDHE3072:FFDHE4096",
///     signature_algorithms="DEFAULT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testCipherRule = new F5BigIP.Ltm.CipherRule("test_cipher_rule", new()
///     {
///         Name = "/Common/test_cipher_rule",
///         Cipher = "TLS13-AES128-GCM-SHA256:TLS13-AES256-GCM-SHA384",
///         DhGroups = "P256:P384:FFDHE2048:FFDHE3072:FFDHE4096",
///         SignatureAlgorithms = "DEFAULT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ltm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ltm.NewCipherRule(ctx, "test_cipher_rule", &ltm.CipherRuleArgs{
/// 			Name:                pulumi.String("/Common/test_cipher_rule"),
/// 			Cipher:              pulumi.String("TLS13-AES128-GCM-SHA256:TLS13-AES256-GCM-SHA384"),
/// 			DhGroups:            pulumi.String("P256:P384:FFDHE2048:FFDHE3072:FFDHE4096"),
/// 			SignatureAlgorithms: pulumi.String("DEFAULT"),
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
/// import com.pulumi.f5bigip.ltm.CipherRule;
/// import com.pulumi.f5bigip.ltm.CipherRuleArgs;
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
///         var testCipherRule = new CipherRule("testCipherRule", CipherRuleArgs.builder()
///             .name("/Common/test_cipher_rule")
///             .cipher("TLS13-AES128-GCM-SHA256:TLS13-AES256-GCM-SHA384")
///             .dhGroups("P256:P384:FFDHE2048:FFDHE3072:FFDHE4096")
///             .signatureAlgorithms("DEFAULT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testCipherRule:
///     type: f5bigip:ltm:CipherRule
///     name: test_cipher_rule
///     properties:
///       name: /Common/test_cipher_rule
///       cipher: TLS13-AES128-GCM-SHA256:TLS13-AES256-GCM-SHA384
///       dhGroups: P256:P384:FFDHE2048:FFDHE3072:FFDHE4096
///       signatureAlgorithms: DEFAULT
/// ```
///
///
/// ## Importing
///
/// An existing cipher rule can be imported into this resource by supplying the cipher rule full path name  ex : `/partition/name`
/// An example is below:
/// ```sh
/// $ terraform import bigip_ltm_cipher_rule.test_cipher_rule /Common/test_cipher_rule
/// ```
class CipherRule extends pulumi.CustomResource {
  /// Specifies one or more Cipher Suites used,this is a colon (:) separated string of cipher suites. example, `TLS13-AES128-GCM-SHA256:TLS13-AES256-GCM-SHA384`.
  late final pulumi.Output<String> cipher;

  /// The Partition in which the Cipher Rule will be created.
  late final pulumi.Output<String?> description;

  /// Specifies the DH Groups algorithms, separated by colons (:).
  late final pulumi.Output<String> dhGroups;

  /// Name of the Cipher Rule. Name should be in pattern `partition` + `cipher_rule_name`
  late final pulumi.Output<String> name;

  /// Specifies the Signature Algorithms, separated by colons (:).
  late final pulumi.Output<String> signatureAlgorithms;

  /// Creates a new [CipherRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CipherRule]. {@macro pulumi_ltm_cipher_rule_cipher_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CipherRule(
    String name, {
    CipherRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:ltm/cipherRule:CipherRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cipher = registerOutput<String>('cipher');
    description = registerOutput<String?>('description');
    dhGroups = registerOutput<String>('dhGroups');
    this.name = registerOutput<String>('name');
    signatureAlgorithms = registerOutput<String>('signatureAlgorithms');
  }

  /// Gets an existing [CipherRule] resource's state with the given [name] and [id].
  static CipherRule get(
    String name,
    pulumi.Input<String> id, {
    CipherRuleState? state,
  }) {
    return CipherRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CipherRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'f5bigip:ltm/cipherRule:CipherRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cipher = registerOutput<String>('cipher');
    description = registerOutput<String?>('description');
    dhGroups = registerOutput<String>('dhGroups');
    this.name = registerOutput<String>('name');
    signatureAlgorithms = registerOutput<String>('signatureAlgorithms');
  }
}
