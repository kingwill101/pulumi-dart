import 'package:pulumi/pulumi.dart' as pulumi;
import 'attestor_args.dart';
import 'attestor_attestation_authority_note.dart';
import 'attestor_state.dart';

/// An attestor that attests to container image artifacts.
///
///
/// To get more information about Attestor, see:
///
/// * [API documentation](https://cloud.google.com/binary-authorization/docs/reference/rest/)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/binary-authorization/)
///
/// ## Example Usage
///
/// ### Binary Authorization Attestor Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const note = new gcp.containeranalysis.Note("note", {
///     name: "test-attestor-note",
///     attestationAuthority: {
///         hint: {
///             humanReadableName: "Attestor Note",
///         },
///     },
/// });
/// const attestor = new gcp.binaryauthorization.Attestor("attestor", {
///     name: "test-attestor",
///     attestationAuthorityNote: {
///         noteReference: note.name,
///         publicKeys: [{
///             asciiArmoredPgpPublicKey: `mQENBFtP0doBCADF+joTiXWKVuP8kJt3fgpBSjT9h8ezMfKA4aXZctYLx5wslWQl
/// bB7Iu2ezkECNzoEeU7WxUe8a61pMCh9cisS9H5mB2K2uM4Jnf8tgFeXn3akJDVo0
/// oR1IC+Dp9mXbRSK3MAvKkOwWlG99sx3uEdvmeBRHBOO+grchLx24EThXFOyP9Fk6
/// V39j6xMjw4aggLD15B4V0v9JqBDdJiIYFzszZDL6pJwZrzcP0z8JO4rTZd+f64bD
/// Mpj52j/pQfA8lZHOaAgb1OrthLdMrBAjoDjArV4Ek7vSbrcgYWcI6BhsQrFoxKdX
/// 83TZKai55ZCfCLIskwUIzA1NLVwyzCS+fSN/ABEBAAG0KCJUZXN0IEF0dGVzdG9y
/// IiA8ZGFuYWhvZmZtYW5AZ29vZ2xlLmNvbT6JAU4EEwEIADgWIQRfWkqHt6hpTA1L
/// uY060eeM4dc66AUCW0/R2gIbLwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRA6
/// 0eeM4dc66HdpCAC4ot3b0OyxPb0Ip+WT2U0PbpTBPJklesuwpIrM4Lh0N+1nVRLC
/// 51WSmVbM8BiAFhLbN9LpdHhds1kUrHF7+wWAjdR8sqAj9otc6HGRM/3qfa2qgh+U
/// WTEk/3us/rYSi7T7TkMuutRMIa1IkR13uKiW56csEMnbOQpn9rDqwIr5R8nlZP5h
/// MAU9vdm1DIv567meMqTaVZgR3w7bck2P49AO8lO5ERFpVkErtu/98y+rUy9d789l
/// +OPuS1NGnxI1YKsNaWJF4uJVuvQuZ1twrhCbGNtVorO2U12+cEq+YtUxj7kmdOC1
/// qoIRW6y0+UlAc+MbqfL0ziHDOAmcqz1GnROg
/// =6Bvm
/// `,
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// note = gcp.containeranalysis.Note("note",
///     name="test-attestor-note",
///     attestation_authority={
///         "hint": {
///             "human_readable_name": "Attestor Note",
///         },
///     })
/// attestor = gcp.binaryauthorization.Attestor("attestor",
///     name="test-attestor",
///     attestation_authority_note={
///         "note_reference": note.name,
///         "public_keys": [{
///             "ascii_armored_pgp_public_key": """mQENBFtP0doBCADF+joTiXWKVuP8kJt3fgpBSjT9h8ezMfKA4aXZctYLx5wslWQl
/// bB7Iu2ezkECNzoEeU7WxUe8a61pMCh9cisS9H5mB2K2uM4Jnf8tgFeXn3akJDVo0
/// oR1IC+Dp9mXbRSK3MAvKkOwWlG99sx3uEdvmeBRHBOO+grchLx24EThXFOyP9Fk6
/// V39j6xMjw4aggLD15B4V0v9JqBDdJiIYFzszZDL6pJwZrzcP0z8JO4rTZd+f64bD
/// Mpj52j/pQfA8lZHOaAgb1OrthLdMrBAjoDjArV4Ek7vSbrcgYWcI6BhsQrFoxKdX
/// 83TZKai55ZCfCLIskwUIzA1NLVwyzCS+fSN/ABEBAAG0KCJUZXN0IEF0dGVzdG9y
/// IiA8ZGFuYWhvZmZtYW5AZ29vZ2xlLmNvbT6JAU4EEwEIADgWIQRfWkqHt6hpTA1L
/// uY060eeM4dc66AUCW0/R2gIbLwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRA6
/// 0eeM4dc66HdpCAC4ot3b0OyxPb0Ip+WT2U0PbpTBPJklesuwpIrM4Lh0N+1nVRLC
/// 51WSmVbM8BiAFhLbN9LpdHhds1kUrHF7+wWAjdR8sqAj9otc6HGRM/3qfa2qgh+U
/// WTEk/3us/rYSi7T7TkMuutRMIa1IkR13uKiW56csEMnbOQpn9rDqwIr5R8nlZP5h
/// MAU9vdm1DIv567meMqTaVZgR3w7bck2P49AO8lO5ERFpVkErtu/98y+rUy9d789l
/// +OPuS1NGnxI1YKsNaWJF4uJVuvQuZ1twrhCbGNtVorO2U12+cEq+YtUxj7kmdOC1
/// qoIRW6y0+UlAc+MbqfL0ziHDOAmcqz1GnROg
/// =6Bvm
/// """,
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var note = new Gcp.ContainerAnalysis.Note("note", new()
///     {
///         Name = "test-attestor-note",
///         AttestationAuthority = new Gcp.ContainerAnalysis.Inputs.NoteAttestationAuthorityArgs
///         {
///             Hint = new Gcp.ContainerAnalysis.Inputs.NoteAttestationAuthorityHintArgs
///             {
///                 HumanReadableName = "Attestor Note",
///             },
///         },
///     });
///
///     var attestor = new Gcp.BinaryAuthorization.Attestor("attestor", new()
///     {
///         Name = "test-attestor",
///         AttestationAuthorityNote = new Gcp.BinaryAuthorization.Inputs.AttestorAttestationAuthorityNoteArgs
///         {
///             NoteReference = note.Name,
///             PublicKeys = new[]
///             {
///                 new Gcp.BinaryAuthorization.Inputs.AttestorAttestationAuthorityNotePublicKeyArgs
///                 {
///                     AsciiArmoredPgpPublicKey = @"mQENBFtP0doBCADF+joTiXWKVuP8kJt3fgpBSjT9h8ezMfKA4aXZctYLx5wslWQl
/// bB7Iu2ezkECNzoEeU7WxUe8a61pMCh9cisS9H5mB2K2uM4Jnf8tgFeXn3akJDVo0
/// oR1IC+Dp9mXbRSK3MAvKkOwWlG99sx3uEdvmeBRHBOO+grchLx24EThXFOyP9Fk6
/// V39j6xMjw4aggLD15B4V0v9JqBDdJiIYFzszZDL6pJwZrzcP0z8JO4rTZd+f64bD
/// Mpj52j/pQfA8lZHOaAgb1OrthLdMrBAjoDjArV4Ek7vSbrcgYWcI6BhsQrFoxKdX
/// 83TZKai55ZCfCLIskwUIzA1NLVwyzCS+fSN/ABEBAAG0KCJUZXN0IEF0dGVzdG9y
/// IiA8ZGFuYWhvZmZtYW5AZ29vZ2xlLmNvbT6JAU4EEwEIADgWIQRfWkqHt6hpTA1L
/// uY060eeM4dc66AUCW0/R2gIbLwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRA6
/// 0eeM4dc66HdpCAC4ot3b0OyxPb0Ip+WT2U0PbpTBPJklesuwpIrM4Lh0N+1nVRLC
/// 51WSmVbM8BiAFhLbN9LpdHhds1kUrHF7+wWAjdR8sqAj9otc6HGRM/3qfa2qgh+U
/// WTEk/3us/rYSi7T7TkMuutRMIa1IkR13uKiW56csEMnbOQpn9rDqwIr5R8nlZP5h
/// MAU9vdm1DIv567meMqTaVZgR3w7bck2P49AO8lO5ERFpVkErtu/98y+rUy9d789l
/// +OPuS1NGnxI1YKsNaWJF4uJVuvQuZ1twrhCbGNtVorO2U12+cEq+YtUxj7kmdOC1
/// qoIRW6y0+UlAc+MbqfL0ziHDOAmcqz1GnROg
/// =6Bvm
/// ",
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/binaryauthorization"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/containeranalysis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		note, err := containeranalysis.NewNote(ctx, "note", &containeranalysis.NoteArgs{
/// 			Name: pulumi.String("test-attestor-note"),
/// 			AttestationAuthority: &containeranalysis.NoteAttestationAuthorityArgs{
/// 				Hint: &containeranalysis.NoteAttestationAuthorityHintArgs{
/// 					HumanReadableName: pulumi.String("Attestor Note"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = binaryauthorization.NewAttestor(ctx, "attestor", &binaryauthorization.AttestorArgs{
/// 			Name: pulumi.String("test-attestor"),
/// 			AttestationAuthorityNote: &binaryauthorization.AttestorAttestationAuthorityNoteArgs{
/// 				NoteReference: note.Name,
/// 				PublicKeys: binaryauthorization.AttestorAttestationAuthorityNotePublicKeyArray{
/// 					&binaryauthorization.AttestorAttestationAuthorityNotePublicKeyArgs{
/// 						AsciiArmoredPgpPublicKey: pulumi.String(`mQENBFtP0doBCADF+joTiXWKVuP8kJt3fgpBSjT9h8ezMfKA4aXZctYLx5wslWQl
/// bB7Iu2ezkECNzoEeU7WxUe8a61pMCh9cisS9H5mB2K2uM4Jnf8tgFeXn3akJDVo0
/// oR1IC+Dp9mXbRSK3MAvKkOwWlG99sx3uEdvmeBRHBOO+grchLx24EThXFOyP9Fk6
/// V39j6xMjw4aggLD15B4V0v9JqBDdJiIYFzszZDL6pJwZrzcP0z8JO4rTZd+f64bD
/// Mpj52j/pQfA8lZHOaAgb1OrthLdMrBAjoDjArV4Ek7vSbrcgYWcI6BhsQrFoxKdX
/// 83TZKai55ZCfCLIskwUIzA1NLVwyzCS+fSN/ABEBAAG0KCJUZXN0IEF0dGVzdG9y
/// IiA8ZGFuYWhvZmZtYW5AZ29vZ2xlLmNvbT6JAU4EEwEIADgWIQRfWkqHt6hpTA1L
/// uY060eeM4dc66AUCW0/R2gIbLwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRA6
/// 0eeM4dc66HdpCAC4ot3b0OyxPb0Ip+WT2U0PbpTBPJklesuwpIrM4Lh0N+1nVRLC
/// 51WSmVbM8BiAFhLbN9LpdHhds1kUrHF7+wWAjdR8sqAj9otc6HGRM/3qfa2qgh+U
/// WTEk/3us/rYSi7T7TkMuutRMIa1IkR13uKiW56csEMnbOQpn9rDqwIr5R8nlZP5h
/// MAU9vdm1DIv567meMqTaVZgR3w7bck2P49AO8lO5ERFpVkErtu/98y+rUy9d789l
/// +OPuS1NGnxI1YKsNaWJF4uJVuvQuZ1twrhCbGNtVorO2U12+cEq+YtUxj7kmdOC1
/// qoIRW6y0+UlAc+MbqfL0ziHDOAmcqz1GnROg
/// =6Bvm
/// `),
/// 					},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_binaryauthorization_attestor" "attestor" {
///   name = "test-attestor"
///   attestation_authority_note = {
///     note_reference = gcp_containeranalysis_note.note.name
///     public_keys = [{
///       "asciiArmoredPgpPublicKey" = "mQENBFtP0doBCADF+joTiXWKVuP8kJt3fgpBSjT9h8ezMfKA4aXZctYLx5wslWQl\nbB7Iu2ezkECNzoEeU7WxUe8a61pMCh9cisS9H5mB2K2uM4Jnf8tgFeXn3akJDVo0\noR1IC+Dp9mXbRSK3MAvKkOwWlG99sx3uEdvmeBRHBOO+grchLx24EThXFOyP9Fk6\nV39j6xMjw4aggLD15B4V0v9JqBDdJiIYFzszZDL6pJwZrzcP0z8JO4rTZd+f64bD\nMpj52j/pQfA8lZHOaAgb1OrthLdMrBAjoDjArV4Ek7vSbrcgYWcI6BhsQrFoxKdX\n83TZKai55ZCfCLIskwUIzA1NLVwyzCS+fSN/ABEBAAG0KCJUZXN0IEF0dGVzdG9y\nIiA8ZGFuYWhvZmZtYW5AZ29vZ2xlLmNvbT6JAU4EEwEIADgWIQRfWkqHt6hpTA1L\nuY060eeM4dc66AUCW0/R2gIbLwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRA6\n0eeM4dc66HdpCAC4ot3b0OyxPb0Ip+WT2U0PbpTBPJklesuwpIrM4Lh0N+1nVRLC\n51WSmVbM8BiAFhLbN9LpdHhds1kUrHF7+wWAjdR8sqAj9otc6HGRM/3qfa2qgh+U\nWTEk/3us/rYSi7T7TkMuutRMIa1IkR13uKiW56csEMnbOQpn9rDqwIr5R8nlZP5h\nMAU9vdm1DIv567meMqTaVZgR3w7bck2P49AO8lO5ERFpVkErtu/98y+rUy9d789l\n+OPuS1NGnxI1YKsNaWJF4uJVuvQuZ1twrhCbGNtVorO2U12+cEq+YtUxj7kmdOC1\nqoIRW6y0+UlAc+MbqfL0ziHDOAmcqz1GnROg\n=6Bvm\n"
///     }]
///   }
/// }
/// resource "gcp_containeranalysis_note" "note" {
///   name = "test-attestor-note"
///   attestation_authority = {
///     hint = {
///       human_readable_name = "Attestor Note"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.containeranalysis.Note;
/// import com.pulumi.gcp.containeranalysis.NoteArgs;
/// import com.pulumi.gcp.containeranalysis.inputs.NoteAttestationAuthorityArgs;
/// import com.pulumi.gcp.containeranalysis.inputs.NoteAttestationAuthorityHintArgs;
/// import com.pulumi.gcp.binaryauthorization.Attestor;
/// import com.pulumi.gcp.binaryauthorization.AttestorArgs;
/// import com.pulumi.gcp.binaryauthorization.inputs.AttestorAttestationAuthorityNoteArgs;
/// import com.pulumi.gcp.binaryauthorization.inputs.AttestorAttestationAuthorityNotePublicKeyArgs;
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
///         var note = new Note("note", NoteArgs.builder()
///             .name("test-attestor-note")
///             .attestationAuthority(NoteAttestationAuthorityArgs.builder()
///                 .hint(NoteAttestationAuthorityHintArgs.builder()
///                     .humanReadableName("Attestor Note")
///                     .build())
///                 .build())
///             .build());
///
///         var attestor = new Attestor("attestor", AttestorArgs.builder()
///             .name("test-attestor")
///             .attestationAuthorityNote(AttestorAttestationAuthorityNoteArgs.builder()
///                 .noteReference(note.name())
///                 .publicKeys(AttestorAttestationAuthorityNotePublicKeyArgs.builder()
///                     .asciiArmoredPgpPublicKey("""
/// mQENBFtP0doBCADF+joTiXWKVuP8kJt3fgpBSjT9h8ezMfKA4aXZctYLx5wslWQl
/// bB7Iu2ezkECNzoEeU7WxUe8a61pMCh9cisS9H5mB2K2uM4Jnf8tgFeXn3akJDVo0
/// oR1IC+Dp9mXbRSK3MAvKkOwWlG99sx3uEdvmeBRHBOO+grchLx24EThXFOyP9Fk6
/// V39j6xMjw4aggLD15B4V0v9JqBDdJiIYFzszZDL6pJwZrzcP0z8JO4rTZd+f64bD
/// Mpj52j/pQfA8lZHOaAgb1OrthLdMrBAjoDjArV4Ek7vSbrcgYWcI6BhsQrFoxKdX
/// 83TZKai55ZCfCLIskwUIzA1NLVwyzCS+fSN/ABEBAAG0KCJUZXN0IEF0dGVzdG9y
/// IiA8ZGFuYWhvZmZtYW5AZ29vZ2xlLmNvbT6JAU4EEwEIADgWIQRfWkqHt6hpTA1L
/// uY060eeM4dc66AUCW0/R2gIbLwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRA6
/// 0eeM4dc66HdpCAC4ot3b0OyxPb0Ip+WT2U0PbpTBPJklesuwpIrM4Lh0N+1nVRLC
/// 51WSmVbM8BiAFhLbN9LpdHhds1kUrHF7+wWAjdR8sqAj9otc6HGRM/3qfa2qgh+U
/// WTEk/3us/rYSi7T7TkMuutRMIa1IkR13uKiW56csEMnbOQpn9rDqwIr5R8nlZP5h
/// MAU9vdm1DIv567meMqTaVZgR3w7bck2P49AO8lO5ERFpVkErtu/98y+rUy9d789l
/// +OPuS1NGnxI1YKsNaWJF4uJVuvQuZ1twrhCbGNtVorO2U12+cEq+YtUxj7kmdOC1
/// qoIRW6y0+UlAc+MbqfL0ziHDOAmcqz1GnROg
/// =6Bvm
///                     """)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   attestor:
///     type: gcp:binaryauthorization:Attestor
///     properties:
///       name: test-attestor
///       attestationAuthorityNote:
///         noteReference: ${note.name}
///         publicKeys:
///           - asciiArmoredPgpPublicKey: |
///               mQENBFtP0doBCADF+joTiXWKVuP8kJt3fgpBSjT9h8ezMfKA4aXZctYLx5wslWQl
///               bB7Iu2ezkECNzoEeU7WxUe8a61pMCh9cisS9H5mB2K2uM4Jnf8tgFeXn3akJDVo0
///               oR1IC+Dp9mXbRSK3MAvKkOwWlG99sx3uEdvmeBRHBOO+grchLx24EThXFOyP9Fk6
///               V39j6xMjw4aggLD15B4V0v9JqBDdJiIYFzszZDL6pJwZrzcP0z8JO4rTZd+f64bD
///               Mpj52j/pQfA8lZHOaAgb1OrthLdMrBAjoDjArV4Ek7vSbrcgYWcI6BhsQrFoxKdX
///               83TZKai55ZCfCLIskwUIzA1NLVwyzCS+fSN/ABEBAAG0KCJUZXN0IEF0dGVzdG9y
///               IiA8ZGFuYWhvZmZtYW5AZ29vZ2xlLmNvbT6JAU4EEwEIADgWIQRfWkqHt6hpTA1L
///               uY060eeM4dc66AUCW0/R2gIbLwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRA6
///               0eeM4dc66HdpCAC4ot3b0OyxPb0Ip+WT2U0PbpTBPJklesuwpIrM4Lh0N+1nVRLC
///               51WSmVbM8BiAFhLbN9LpdHhds1kUrHF7+wWAjdR8sqAj9otc6HGRM/3qfa2qgh+U
///               WTEk/3us/rYSi7T7TkMuutRMIa1IkR13uKiW56csEMnbOQpn9rDqwIr5R8nlZP5h
///               MAU9vdm1DIv567meMqTaVZgR3w7bck2P49AO8lO5ERFpVkErtu/98y+rUy9d789l
///               +OPuS1NGnxI1YKsNaWJF4uJVuvQuZ1twrhCbGNtVorO2U12+cEq+YtUxj7kmdOC1
///               qoIRW6y0+UlAc+MbqfL0ziHDOAmcqz1GnROg
///               =6Bvm
///   note:
///     type: gcp:containeranalysis:Note
///     properties:
///       name: test-attestor-note
///       attestationAuthority:
///         hint:
///           humanReadableName: Attestor Note
/// ```
///
/// ### Binary Authorization Attestor Kms
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const keyring = new gcp.kms.KeyRing("keyring", {
///     name: "test-attestor-key-ring",
///     location: "global",
/// });
/// const crypto_key = new gcp.kms.CryptoKey("crypto-key", {
///     name: "test-attestor-key",
///     keyRing: keyring.id,
///     purpose: "ASYMMETRIC_SIGN",
///     versionTemplate: {
///         algorithm: "RSA_SIGN_PKCS1_4096_SHA512",
///     },
/// });
/// const version = gcp.kms.getKMSCryptoKeyVersionOutput({
///     cryptoKey: crypto_key.id,
/// });
/// const note = new gcp.containeranalysis.Note("note", {
///     name: "test-attestor-note",
///     attestationAuthority: {
///         hint: {
///             humanReadableName: "Attestor Note",
///         },
///     },
/// });
/// const attestor = new gcp.binaryauthorization.Attestor("attestor", {
///     name: "test-attestor",
///     attestationAuthorityNote: {
///         noteReference: note.name,
///         publicKeys: [{
///             id: version.id,
///             pkixPublicKey: {
///                 publicKeyPem: version.apply(version => version.publicKeys?.[0]?.pem),
///                 signatureAlgorithm: version.apply(version => version.publicKeys?.[0]?.algorithm),
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// keyring = gcp.kms.KeyRing("keyring",
///     name="test-attestor-key-ring",
///     location="global")
/// crypto_key = gcp.kms.CryptoKey("crypto-key",
///     name="test-attestor-key",
///     key_ring=keyring.id,
///     purpose="ASYMMETRIC_SIGN",
///     version_template={
///         "algorithm": "RSA_SIGN_PKCS1_4096_SHA512",
///     })
/// version = gcp.kms.get_kms_crypto_key_version_output(crypto_key=crypto_key.id)
/// note = gcp.containeranalysis.Note("note",
///     name="test-attestor-note",
///     attestation_authority={
///         "hint": {
///             "human_readable_name": "Attestor Note",
///         },
///     })
/// attestor = gcp.binaryauthorization.Attestor("attestor",
///     name="test-attestor",
///     attestation_authority_note={
///         "note_reference": note.name,
///         "public_keys": [{
///             "id": version.id,
///             "pkix_public_key": {
///                 "public_key_pem": version.public_keys[0].pem,
///                 "signature_algorithm": version.public_keys[0].algorithm,
///             },
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var keyring = new Gcp.Kms.KeyRing("keyring", new()
///     {
///         Name = "test-attestor-key-ring",
///         Location = "global",
///     });
///
///     var crypto_key = new Gcp.Kms.CryptoKey("crypto-key", new()
///     {
///         Name = "test-attestor-key",
///         KeyRing = keyring.Id,
///         Purpose = "ASYMMETRIC_SIGN",
///         VersionTemplate = new Gcp.Kms.Inputs.CryptoKeyVersionTemplateArgs
///         {
///             Algorithm = "RSA_SIGN_PKCS1_4096_SHA512",
///         },
///     });
///
///     var version = Gcp.Kms.GetKMSCryptoKeyVersion.Invoke(new()
///     {
///         CryptoKey = crypto_key.Id,
///     });
///
///     var note = new Gcp.ContainerAnalysis.Note("note", new()
///     {
///         Name = "test-attestor-note",
///         AttestationAuthority = new Gcp.ContainerAnalysis.Inputs.NoteAttestationAuthorityArgs
///         {
///             Hint = new Gcp.ContainerAnalysis.Inputs.NoteAttestationAuthorityHintArgs
///             {
///                 HumanReadableName = "Attestor Note",
///             },
///         },
///     });
///
///     var attestor = new Gcp.BinaryAuthorization.Attestor("attestor", new()
///     {
///         Name = "test-attestor",
///         AttestationAuthorityNote = new Gcp.BinaryAuthorization.Inputs.AttestorAttestationAuthorityNoteArgs
///         {
///             NoteReference = note.Name,
///             PublicKeys = new[]
///             {
///                 new Gcp.BinaryAuthorization.Inputs.AttestorAttestationAuthorityNotePublicKeyArgs
///                 {
///                     Id = version.Apply(getKMSCryptoKeyVersionResult => getKMSCryptoKeyVersionResult.Id),
///                     PkixPublicKey = new Gcp.BinaryAuthorization.Inputs.AttestorAttestationAuthorityNotePublicKeyPkixPublicKeyArgs
///                     {
///                         PublicKeyPem = version.Apply(getKMSCryptoKeyVersionResult => getKMSCryptoKeyVersionResult.PublicKeys[0]?.Pem),
///                         SignatureAlgorithm = version.Apply(getKMSCryptoKeyVersionResult => getKMSCryptoKeyVersionResult.PublicKeys[0]?.Algorithm),
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/binaryauthorization"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/containeranalysis"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		keyring, err := kms.NewKeyRing(ctx, "keyring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("test-attestor-key-ring"),
/// 			Location: pulumi.String("global"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		crypto_key, err := kms.NewCryptoKey(ctx, "crypto-key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("test-attestor-key"),
/// 			KeyRing: keyring.ID().ToIDOutput().ToStringOutput(),
/// 			Purpose: pulumi.String("ASYMMETRIC_SIGN"),
/// 			VersionTemplate: &kms.CryptoKeyVersionTemplateArgs{
/// 				Algorithm: pulumi.String("RSA_SIGN_PKCS1_4096_SHA512"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		version := kms.GetKMSCryptoKeyVersionOutput(ctx, kms.GetKMSCryptoKeyVersionOutputArgs{
/// 			CryptoKey: crypto_key.ID().ToIDOutput().ToStringOutput(),
/// 		}, nil)
/// 		note, err := containeranalysis.NewNote(ctx, "note", &containeranalysis.NoteArgs{
/// 			Name: pulumi.String("test-attestor-note"),
/// 			AttestationAuthority: &containeranalysis.NoteAttestationAuthorityArgs{
/// 				Hint: &containeranalysis.NoteAttestationAuthorityHintArgs{
/// 					HumanReadableName: pulumi.String("Attestor Note"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = binaryauthorization.NewAttestor(ctx, "attestor", &binaryauthorization.AttestorArgs{
/// 			Name: pulumi.String("test-attestor"),
/// 			AttestationAuthorityNote: &binaryauthorization.AttestorAttestationAuthorityNoteArgs{
/// 				NoteReference: note.Name,
/// 				PublicKeys: binaryauthorization.AttestorAttestationAuthorityNotePublicKeyArray{
/// 					&binaryauthorization.AttestorAttestationAuthorityNotePublicKeyArgs{
/// 						Id: version.Id(),
/// 						PkixPublicKey: &binaryauthorization.AttestorAttestationAuthorityNotePublicKeyPkixPublicKeyArgs{
/// 							PublicKeyPem: version.ApplyT(func(version kms.GetKMSCryptoKeyVersionResult) (*string, error) {
/// 								return version.PublicKeys[0].Pem, nil
/// 							}).(pulumi.StringPtrOutput),
/// 							SignatureAlgorithm: version.ApplyT(func(version kms.GetKMSCryptoKeyVersionResult) (*string, error) {
/// 								return version.PublicKeys[0].Algorithm, nil
/// 							}).(pulumi.StringPtrOutput),
/// 						},
/// 					},
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_kms_getkmscryptokeyversion" "version" {
///   crypto_key = gcp_kms_cryptokey.crypto-key.id
/// }
///
/// resource "gcp_binaryauthorization_attestor" "attestor" {
///   name = "test-attestor"
///   attestation_authority_note = {
///     note_reference = gcp_containeranalysis_note.note.name
///     public_keys = [{
///       "id" = data.gcp_kms_getkmscryptokeyversion.version.id
///       "pkixPublicKey" = {
///         "publicKeyPem"       = data.gcp_kms_getkmscryptokeyversion.version.public_keys[0].pem
///         "signatureAlgorithm" = data.gcp_kms_getkmscryptokeyversion.version.public_keys[0].algorithm
///       }
///     }]
///   }
/// }
/// resource "gcp_containeranalysis_note" "note" {
///   name = "test-attestor-note"
///   attestation_authority = {
///     hint = {
///       human_readable_name = "Attestor Note"
///     }
///   }
/// }
/// resource "gcp_kms_cryptokey" "crypto-key" {
///   name     = "test-attestor-key"
///   key_ring = gcp_kms_keyring.keyring.id
///   purpose  = "ASYMMETRIC_SIGN"
///   version_template = {
///     algorithm = "RSA_SIGN_PKCS1_4096_SHA512"
///   }
/// }
/// resource "gcp_kms_keyring" "keyring" {
///   name     = "test-attestor-key-ring"
///   location = "global"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.kms.inputs.CryptoKeyVersionTemplateArgs;
/// import com.pulumi.gcp.kms.KmsFunctions;
/// import com.pulumi.gcp.kms.inputs.GetKMSCryptoKeyVersionArgs;
/// import com.pulumi.gcp.containeranalysis.Note;
/// import com.pulumi.gcp.containeranalysis.NoteArgs;
/// import com.pulumi.gcp.containeranalysis.inputs.NoteAttestationAuthorityArgs;
/// import com.pulumi.gcp.containeranalysis.inputs.NoteAttestationAuthorityHintArgs;
/// import com.pulumi.gcp.binaryauthorization.Attestor;
/// import com.pulumi.gcp.binaryauthorization.AttestorArgs;
/// import com.pulumi.gcp.binaryauthorization.inputs.AttestorAttestationAuthorityNoteArgs;
/// import com.pulumi.gcp.binaryauthorization.inputs.AttestorAttestationAuthorityNotePublicKeyArgs;
/// import com.pulumi.gcp.binaryauthorization.inputs.AttestorAttestationAuthorityNotePublicKeyPkixPublicKeyArgs;
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
///         var keyring = new KeyRing("keyring", KeyRingArgs.builder()
///             .name("test-attestor-key-ring")
///             .location("global")
///             .build());
///
///         var crypto_key = new CryptoKey("crypto-key", CryptoKeyArgs.builder()
///             .name("test-attestor-key")
///             .keyRing(keyring.id())
///             .purpose("ASYMMETRIC_SIGN")
///             .versionTemplate(CryptoKeyVersionTemplateArgs.builder()
///                 .algorithm("RSA_SIGN_PKCS1_4096_SHA512")
///                 .build())
///             .build());
///
///         final var version = KmsFunctions.getKMSCryptoKeyVersion(GetKMSCryptoKeyVersionArgs.builder()
///             .cryptoKey(crypto_key.id())
///             .build());
///
///         var note = new Note("note", NoteArgs.builder()
///             .name("test-attestor-note")
///             .attestationAuthority(NoteAttestationAuthorityArgs.builder()
///                 .hint(NoteAttestationAuthorityHintArgs.builder()
///                     .humanReadableName("Attestor Note")
///                     .build())
///                 .build())
///             .build());
///
///         var attestor = new Attestor("attestor", AttestorArgs.builder()
///             .name("test-attestor")
///             .attestationAuthorityNote(AttestorAttestationAuthorityNoteArgs.builder()
///                 .noteReference(note.name())
///                 .publicKeys(AttestorAttestationAuthorityNotePublicKeyArgs.builder()
///                     .id(version.applyValue(_version -> _version.id()))
///                     .pkixPublicKey(AttestorAttestationAuthorityNotePublicKeyPkixPublicKeyArgs.builder()
///                         .publicKeyPem(version.applyValue(_version -> _version.publicKeys().get(0).pem()))
///                         .signatureAlgorithm(version.applyValue(_version -> _version.publicKeys().get(0).algorithm()))
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   attestor:
///     type: gcp:binaryauthorization:Attestor
///     properties:
///       name: test-attestor
///       attestationAuthorityNote:
///         noteReference: ${note.name}
///         publicKeys:
///           - id: ${version.id}
///             pkixPublicKey:
///               publicKeyPem: ${version.publicKeys[0].pem}
///               signatureAlgorithm: ${version.publicKeys[0].algorithm}
///   note:
///     type: gcp:containeranalysis:Note
///     properties:
///       name: test-attestor-note
///       attestationAuthority:
///         hint:
///           humanReadableName: Attestor Note
///   crypto-key:
///     type: gcp:kms:CryptoKey
///     properties:
///       name: test-attestor-key
///       keyRing: ${keyring.id}
///       purpose: ASYMMETRIC_SIGN
///       versionTemplate:
///         algorithm: RSA_SIGN_PKCS1_4096_SHA512
///   keyring:
///     type: gcp:kms:KeyRing
///     properties:
///       name: test-attestor-key-ring
///       location: global
/// variables:
///   version:
///     fn::invoke:
///       function: gcp:kms:getKMSCryptoKeyVersion
///       arguments:
///         cryptoKey: ${["crypto-key"].id}
/// ```
///
///
/// ## Import
///
/// Attestor can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/attestors/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Attestor can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:binaryauthorization/attestor:Attestor default projects/{{project}}/attestors/{{name}}
/// $ pulumi import gcp:binaryauthorization/attestor:Attestor default {{project}}/{{name}}
/// $ pulumi import gcp:binaryauthorization/attestor:Attestor default {{name}}
/// ```
class Attestor extends pulumi.CustomResource {
  /// A Container Analysis ATTESTATION_AUTHORITY Note, created by the user.
  /// Structure is documented below.
  late final pulumi.Output<AttestorAttestationAuthorityNote> attestationAuthorityNote;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A descriptive comment. This field may be updated. The field may be
  /// displayed in chooser dialogs.
  late final pulumi.Output<String?> description;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [Attestor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Attestor]. {@macro pulumi_binaryauthorization_attestor_attestor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Attestor(
    String name, {
    AttestorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:binaryauthorization/attestor:Attestor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attestationAuthorityNote = registerOutput<AttestorAttestationAuthorityNote>('attestationAuthorityNote', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttestorAttestationAuthorityNote.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [Attestor] resource's state with the given [name] and [id].
  static Attestor get(
    String name,
    pulumi.Input<String> id, {
    AttestorState? state,
  }) {
    return Attestor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Attestor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:binaryauthorization/attestor:Attestor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attestationAuthorityNote = registerOutput<AttestorAttestationAuthorityNote>('attestationAuthorityNote', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AttestorAttestationAuthorityNote.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
  }
}
