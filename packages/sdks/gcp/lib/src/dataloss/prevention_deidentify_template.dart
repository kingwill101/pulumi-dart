import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_args.dart';
import 'prevention_deidentify_template_deidentify_config.dart';
import 'prevention_deidentify_template_state.dart';

/// Allows creation of templates to de-identify content.
///
///
/// To get more information about DeidentifyTemplate, see:
///
/// * [API documentation](https://cloud.google.com/dlp/docs/reference/rest/v2/projects.deidentifyTemplates)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dlp/docs/concepts-templates)
///
///
///
/// ## Example Usage
///
/// ### Dlp Deidentify Template Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.dataloss.PreventionDeidentifyTemplate("basic", {
///     parent: "projects/my-project-name",
///     description: "Description",
///     displayName: "Displayname",
///     deidentifyConfig: {
///         infoTypeTransformations: {
///             transformations: [
///                 {
///                     infoTypes: [{
///                         name: "FIRST_NAME",
///                     }],
///                     primitiveTransformation: {
///                         replaceWithInfoTypeConfig: true,
///                     },
///                 },
///                 {
///                     infoTypes: [
///                         {
///                             name: "PHONE_NUMBER",
///                         },
///                         {
///                             name: "AGE",
///                         },
///                     ],
///                     primitiveTransformation: {
///                         replaceConfig: {
///                             newValue: {
///                                 integerValue: 9,
///                             },
///                         },
///                     },
///                 },
///                 {
///                     infoTypes: [
///                         {
///                             name: "EMAIL_ADDRESS",
///                         },
///                         {
///                             name: "LAST_NAME",
///                         },
///                     ],
///                     primitiveTransformation: {
///                         characterMaskConfig: {
///                             maskingCharacter: "X",
///                             numberToMask: 4,
///                             reverseOrder: true,
///                             charactersToIgnores: [{
///                                 commonCharactersToIgnore: "PUNCTUATION",
///                             }],
///                         },
///                     },
///                 },
///                 {
///                     infoTypes: [{
///                         name: "DATE_OF_BIRTH",
///                     }],
///                     primitiveTransformation: {
///                         replaceConfig: {
///                             newValue: {
///                                 dateValue: {
///                                     year: 2020,
///                                     month: 1,
///                                     day: 1,
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 {
///                     infoTypes: [{
///                         name: "CREDIT_CARD_NUMBER",
///                     }],
///                     primitiveTransformation: {
///                         cryptoDeterministicConfig: {
///                             context: {
///                                 name: "sometweak",
///                             },
///                             cryptoKey: {
///                                 transient: {
///                                     name: "beep",
///                                 },
///                             },
///                             surrogateInfoType: {
///                                 name: "abc",
///                             },
///                         },
///                     },
///                 },
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.dataloss.PreventionDeidentifyTemplate("basic",
///     parent="projects/my-project-name",
///     description="Description",
///     display_name="Displayname",
///     deidentify_config={
///         "info_type_transformations": {
///             "transformations": [
///                 {
///                     "info_types": [{
///                         "name": "FIRST_NAME",
///                     }],
///                     "primitive_transformation": {
///                         "replace_with_info_type_config": True,
///                     },
///                 },
///                 {
///                     "info_types": [
///                         {
///                             "name": "PHONE_NUMBER",
///                         },
///                         {
///                             "name": "AGE",
///                         },
///                     ],
///                     "primitive_transformation": {
///                         "replace_config": {
///                             "new_value": {
///                                 "integer_value": 9,
///                             },
///                         },
///                     },
///                 },
///                 {
///                     "info_types": [
///                         {
///                             "name": "EMAIL_ADDRESS",
///                         },
///                         {
///                             "name": "LAST_NAME",
///                         },
///                     ],
///                     "primitive_transformation": {
///                         "character_mask_config": {
///                             "masking_character": "X",
///                             "number_to_mask": 4,
///                             "reverse_order": True,
///                             "characters_to_ignores": [{
///                                 "common_characters_to_ignore": "PUNCTUATION",
///                             }],
///                         },
///                     },
///                 },
///                 {
///                     "info_types": [{
///                         "name": "DATE_OF_BIRTH",
///                     }],
///                     "primitive_transformation": {
///                         "replace_config": {
///                             "new_value": {
///                                 "date_value": {
///                                     "year": 2020,
///                                     "month": 1,
///                                     "day": 1,
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 {
///                     "info_types": [{
///                         "name": "CREDIT_CARD_NUMBER",
///                     }],
///                     "primitive_transformation": {
///                         "crypto_deterministic_config": {
///                             "context": {
///                                 "name": "sometweak",
///                             },
///                             "crypto_key": {
///                                 "transient": {
///                                     "name": "beep",
///                                 },
///                             },
///                             "surrogate_info_type": {
///                                 "name": "abc",
///                             },
///                         },
///                     },
///                 },
///             ],
///         },
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
///     var basic = new Gcp.DataLoss.PreventionDeidentifyTemplate("basic", new()
///     {
///         Parent = "projects/my-project-name",
///         Description = "Description",
///         DisplayName = "Displayname",
///         DeidentifyConfig = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigArgs
///         {
///             InfoTypeTransformations = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsArgs
///             {
///                 Transformations = new[]
///                 {
///                     new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArgs
///                     {
///                         InfoTypes = new[]
///                         {
///                             new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs
///                             {
///                                 Name = "FIRST_NAME",
///                             },
///                         },
///                         PrimitiveTransformation = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationArgs
///                         {
///                             ReplaceWithInfoTypeConfig = true,
///                         },
///                     },
///                     new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArgs
///                     {
///                         InfoTypes = new[]
///                         {
///                             new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs
///                             {
///                                 Name = "PHONE_NUMBER",
///                             },
///                             new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs
///                             {
///                                 Name = "AGE",
///                             },
///                         },
///                         PrimitiveTransformation = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationArgs
///                         {
///                             ReplaceConfig = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigArgs
///                             {
///                                 NewValue = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigNewValueArgs
///                                 {
///                                     IntegerValue = 9,
///                                 },
///                             },
///                         },
///                     },
///                     new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArgs
///                     {
///                         InfoTypes = new[]
///                         {
///                             new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs
///                             {
///                                 Name = "EMAIL_ADDRESS",
///                             },
///                             new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs
///                             {
///                                 Name = "LAST_NAME",
///                             },
///                         },
///                         PrimitiveTransformation = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationArgs
///                         {
///                             CharacterMaskConfig = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfigArgs
///                             {
///                                 MaskingCharacter = "X",
///                                 NumberToMask = 4,
///                                 ReverseOrder = true,
///                                 CharactersToIgnores = new[]
///                                 {
///                                     new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfigCharactersToIgnoreArgs
///                                     {
///                                         CommonCharactersToIgnore = "PUNCTUATION",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                     new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArgs
///                     {
///                         InfoTypes = new[]
///                         {
///                             new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs
///                             {
///                                 Name = "DATE_OF_BIRTH",
///                             },
///                         },
///                         PrimitiveTransformation = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationArgs
///                         {
///                             ReplaceConfig = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigArgs
///                             {
///                                 NewValue = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigNewValueArgs
///                                 {
///                                     DateValue = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigNewValueDateValueArgs
///                                     {
///                                         Year = 2020,
///                                         Month = 1,
///                                         Day = 1,
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                     new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArgs
///                     {
///                         InfoTypes = new[]
///                         {
///                             new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs
///                             {
///                                 Name = "CREDIT_CARD_NUMBER",
///                             },
///                         },
///                         PrimitiveTransformation = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationArgs
///                         {
///                             CryptoDeterministicConfig = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigArgs
///                             {
///                                 Context = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigContextArgs
///                                 {
///                                     Name = "sometweak",
///                                 },
///                                 CryptoKey = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyArgs
///                                 {
///                                     Transient = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyTransientArgs
///                                     {
///                                         Name = "beep",
///                                     },
///                                 },
///                                 SurrogateInfoType = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeArgs
///                                 {
///                                     Name = "abc",
///                                 },
///                             },
///                         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataloss.NewPreventionDeidentifyTemplate(ctx, "basic", &dataloss.PreventionDeidentifyTemplateArgs{
/// 			Parent:      pulumi.String("projects/my-project-name"),
/// 			Description: pulumi.String("Description"),
/// 			DisplayName: pulumi.String("Displayname"),
/// 			DeidentifyConfig: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigArgs{
/// 				InfoTypeTransformations: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsArgs{
/// 					Transformations: dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArray{
/// 						&dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArgs{
/// 							InfoTypes: dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArray{
/// 								&dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs{
/// 									Name: pulumi.String("FIRST_NAME"),
/// 								},
/// 							},
/// 							PrimitiveTransformation: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationArgs{
/// 								ReplaceWithInfoTypeConfig: pulumi.Bool(true),
/// 							},
/// 						},
/// 						&dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArgs{
/// 							InfoTypes: dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArray{
/// 								&dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs{
/// 									Name: pulumi.String("PHONE_NUMBER"),
/// 								},
/// 								&dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs{
/// 									Name: pulumi.String("AGE"),
/// 								},
/// 							},
/// 							PrimitiveTransformation: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationArgs{
/// 								ReplaceConfig: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigArgs{
/// 									NewValue: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigNewValueArgs{
/// 										IntegerValue: pulumi.Int(9),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						&dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArgs{
/// 							InfoTypes: dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArray{
/// 								&dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs{
/// 									Name: pulumi.String("EMAIL_ADDRESS"),
/// 								},
/// 								&dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs{
/// 									Name: pulumi.String("LAST_NAME"),
/// 								},
/// 							},
/// 							PrimitiveTransformation: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationArgs{
/// 								CharacterMaskConfig: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfigArgs{
/// 									MaskingCharacter: pulumi.String("X"),
/// 									NumberToMask:     pulumi.Int(4),
/// 									ReverseOrder:     pulumi.Bool(true),
/// 									CharactersToIgnores: dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfigCharactersToIgnoreArray{
/// 										&dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfigCharactersToIgnoreArgs{
/// 											CommonCharactersToIgnore: pulumi.String("PUNCTUATION"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 						&dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArgs{
/// 							InfoTypes: dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArray{
/// 								&dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs{
/// 									Name: pulumi.String("DATE_OF_BIRTH"),
/// 								},
/// 							},
/// 							PrimitiveTransformation: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationArgs{
/// 								ReplaceConfig: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigArgs{
/// 									NewValue: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigNewValueArgs{
/// 										DateValue: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigNewValueDateValueArgs{
/// 											Year:  pulumi.Int(2020),
/// 											Month: pulumi.Int(1),
/// 											Day:   pulumi.Int(1),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 						&dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArgs{
/// 							InfoTypes: dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArray{
/// 								&dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs{
/// 									Name: pulumi.String("CREDIT_CARD_NUMBER"),
/// 								},
/// 							},
/// 							PrimitiveTransformation: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationArgs{
/// 								CryptoDeterministicConfig: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigArgs{
/// 									Context: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigContextArgs{
/// 										Name: pulumi.String("sometweak"),
/// 									},
/// 									CryptoKey: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyArgs{
/// 										Transient: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyTransientArgs{
/// 											Name: pulumi.String("beep"),
/// 										},
/// 									},
/// 									SurrogateInfoType: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeArgs{
/// 										Name: pulumi.String("abc"),
/// 									},
/// 								},
/// 							},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataloss.PreventionDeidentifyTemplate;
/// import com.pulumi.gcp.dataloss.PreventionDeidentifyTemplateArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionDeidentifyTemplateDeidentifyConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsArgs;
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
///         var basic = new PreventionDeidentifyTemplate("basic", PreventionDeidentifyTemplateArgs.builder()
///             .parent("projects/my-project-name")
///             .description("Description")
///             .displayName("Displayname")
///             .deidentifyConfig(PreventionDeidentifyTemplateDeidentifyConfigArgs.builder()
///                 .infoTypeTransformations(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsArgs.builder()
///                     .transformations(
///                         PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArgs.builder()
///                             .infoTypes(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs.builder()
///                                 .name("FIRST_NAME")
///                                 .build())
///                             .primitiveTransformation(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationArgs.builder()
///                                 .replaceWithInfoTypeConfig(true)
///                                 .build())
///                             .build(),
///                         PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArgs.builder()
///                             .infoTypes(
///                                 PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs.builder()
///                                     .name("PHONE_NUMBER")
///                                     .build(),
///                                 PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs.builder()
///                                     .name("AGE")
///                                     .build())
///                             .primitiveTransformation(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationArgs.builder()
///                                 .replaceConfig(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigArgs.builder()
///                                     .newValue(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigNewValueArgs.builder()
///                                         .integerValue(9)
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArgs.builder()
///                             .infoTypes(
///                                 PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs.builder()
///                                     .name("EMAIL_ADDRESS")
///                                     .build(),
///                                 PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs.builder()
///                                     .name("LAST_NAME")
///                                     .build())
///                             .primitiveTransformation(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationArgs.builder()
///                                 .characterMaskConfig(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfigArgs.builder()
///                                     .maskingCharacter("X")
///                                     .numberToMask(4)
///                                     .reverseOrder(true)
///                                     .charactersToIgnores(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCharacterMaskConfigCharactersToIgnoreArgs.builder()
///                                         .commonCharactersToIgnore("PUNCTUATION")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArgs.builder()
///                             .infoTypes(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs.builder()
///                                 .name("DATE_OF_BIRTH")
///                                 .build())
///                             .primitiveTransformation(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationArgs.builder()
///                                 .replaceConfig(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigArgs.builder()
///                                     .newValue(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigNewValueArgs.builder()
///                                         .dateValue(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationReplaceConfigNewValueDateValueArgs.builder()
///                                             .year(2020)
///                                             .month(1)
///                                             .day(1)
///                                             .build())
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build(),
///                         PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationArgs.builder()
///                             .infoTypes(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationInfoTypeArgs.builder()
///                                 .name("CREDIT_CARD_NUMBER")
///                                 .build())
///                             .primitiveTransformation(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationArgs.builder()
///                                 .cryptoDeterministicConfig(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigArgs.builder()
///                                     .context(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigContextArgs.builder()
///                                         .name("sometweak")
///                                         .build())
///                                     .cryptoKey(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyArgs.builder()
///                                         .transient_(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyTransientArgs.builder()
///                                             .name("beep")
///                                             .build())
///                                         .build())
///                                     .surrogateInfoType(PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeArgs.builder()
///                                         .name("abc")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:dataloss:PreventionDeidentifyTemplate
///     properties:
///       parent: projects/my-project-name
///       description: Description
///       displayName: Displayname
///       deidentifyConfig:
///         infoTypeTransformations:
///           transformations:
///             - infoTypes:
///                 - name: FIRST_NAME
///               primitiveTransformation:
///                 replaceWithInfoTypeConfig: true
///             - infoTypes:
///                 - name: PHONE_NUMBER
///                 - name: AGE
///               primitiveTransformation:
///                 replaceConfig:
///                   newValue:
///                     integerValue: 9
///             - infoTypes:
///                 - name: EMAIL_ADDRESS
///                 - name: LAST_NAME
///               primitiveTransformation:
///                 characterMaskConfig:
///                   maskingCharacter: X
///                   numberToMask: 4
///                   reverseOrder: true
///                   charactersToIgnores:
///                     - commonCharactersToIgnore: PUNCTUATION
///             - infoTypes:
///                 - name: DATE_OF_BIRTH
///               primitiveTransformation:
///                 replaceConfig:
///                   newValue:
///                     dateValue:
///                       year: 2020
///                       month: 1
///                       day: 1
///             - infoTypes:
///                 - name: CREDIT_CARD_NUMBER
///               primitiveTransformation:
///                 cryptoDeterministicConfig:
///                   context:
///                     name: sometweak
///                   cryptoKey:
///                     transient:
///                       name: beep
///                   surrogateInfoType:
///                     name: abc
/// ```
///
/// ### Dlp Deidentify Template Image Transformations
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.dataloss.PreventionDeidentifyTemplate("basic", {
///     parent: "projects/my-project-name",
///     description: "Description",
///     displayName: "Displayname",
///     deidentifyConfig: {
///         imageTransformations: {
///             transforms: [
///                 {
///                     redactionColor: {
///                         red: 0.5,
///                         blue: 1,
///                         green: 0.2,
///                     },
///                     selectedInfoTypes: {
///                         infoTypes: [{
///                             name: "COLOR_INFO",
///                             version: "latest",
///                         }],
///                     },
///                 },
///                 {
///                     allInfoTypes: {},
///                 },
///                 {
///                     allText: {},
///                 },
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.dataloss.PreventionDeidentifyTemplate("basic",
///     parent="projects/my-project-name",
///     description="Description",
///     display_name="Displayname",
///     deidentify_config={
///         "image_transformations": {
///             "transforms": [
///                 {
///                     "redaction_color": {
///                         "red": 0.5,
///                         "blue": 1,
///                         "green": 0.2,
///                     },
///                     "selected_info_types": {
///                         "info_types": [{
///                             "name": "COLOR_INFO",
///                             "version": "latest",
///                         }],
///                     },
///                 },
///                 {
///                     "all_info_types": {},
///                 },
///                 {
///                     "all_text": {},
///                 },
///             ],
///         },
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
///     var basic = new Gcp.DataLoss.PreventionDeidentifyTemplate("basic", new()
///     {
///         Parent = "projects/my-project-name",
///         Description = "Description",
///         DisplayName = "Displayname",
///         DeidentifyConfig = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigArgs
///         {
///             ImageTransformations = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsArgs
///             {
///                 Transforms = new[]
///                 {
///                     new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformArgs
///                     {
///                         RedactionColor = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColorArgs
///                         {
///                             Red = 0.5,
///                             Blue = 1,
///                             Green = 0.2,
///                         },
///                         SelectedInfoTypes = new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypesArgs
///                         {
///                             InfoTypes = new[]
///                             {
///                                 new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypesInfoTypeArgs
///                                 {
///                                     Name = "COLOR_INFO",
///                                     Version = "latest",
///                                 },
///                             },
///                         },
///                     },
///                     new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformArgs
///                     {
///                         AllInfoTypes = null,
///                     },
///                     new Gcp.DataLoss.Inputs.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformArgs
///                     {
///                         AllText = null,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataloss"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataloss.NewPreventionDeidentifyTemplate(ctx, "basic", &dataloss.PreventionDeidentifyTemplateArgs{
/// 			Parent:      pulumi.String("projects/my-project-name"),
/// 			Description: pulumi.String("Description"),
/// 			DisplayName: pulumi.String("Displayname"),
/// 			DeidentifyConfig: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigArgs{
/// 				ImageTransformations: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsArgs{
/// 					Transforms: dataloss.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformArray{
/// 						&dataloss.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformArgs{
/// 							RedactionColor: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColorArgs{
/// 								Red:   pulumi.Float64(0.5),
/// 								Blue:  pulumi.Float64(1),
/// 								Green: pulumi.Float64(0.2),
/// 							},
/// 							SelectedInfoTypes: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypesArgs{
/// 								InfoTypes: dataloss.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypesInfoTypeArray{
/// 									&dataloss.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypesInfoTypeArgs{
/// 										Name:    pulumi.String("COLOR_INFO"),
/// 										Version: pulumi.String("latest"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						&dataloss.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformArgs{
/// 							AllInfoTypes: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformAllInfoTypesArgs{},
/// 						},
/// 						&dataloss.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformArgs{
/// 							AllText: &dataloss.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformAllTextArgs{},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.dataloss.PreventionDeidentifyTemplate;
/// import com.pulumi.gcp.dataloss.PreventionDeidentifyTemplateArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionDeidentifyTemplateDeidentifyConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsArgs;
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
///         var basic = new PreventionDeidentifyTemplate("basic", PreventionDeidentifyTemplateArgs.builder()
///             .parent("projects/my-project-name")
///             .description("Description")
///             .displayName("Displayname")
///             .deidentifyConfig(PreventionDeidentifyTemplateDeidentifyConfigArgs.builder()
///                 .imageTransformations(PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsArgs.builder()
///                     .transforms(
///                         PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformArgs.builder()
///                             .redactionColor(PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformRedactionColorArgs.builder()
///                                 .red(0.5)
///                                 .blue(1.0)
///                                 .green(0.2)
///                                 .build())
///                             .selectedInfoTypes(PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypesArgs.builder()
///                                 .infoTypes(PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformSelectedInfoTypesInfoTypeArgs.builder()
///                                     .name("COLOR_INFO")
///                                     .version("latest")
///                                     .build())
///                                 .build())
///                             .build(),
///                         PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformArgs.builder()
///                             .allInfoTypes(PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformAllInfoTypesArgs.builder()
///                                 .build())
///                             .build(),
///                         PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformArgs.builder()
///                             .allText(PreventionDeidentifyTemplateDeidentifyConfigImageTransformationsTransformAllTextArgs.builder()
///                                 .build())
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:dataloss:PreventionDeidentifyTemplate
///     properties:
///       parent: projects/my-project-name
///       description: Description
///       displayName: Displayname
///       deidentifyConfig:
///         imageTransformations:
///           transforms:
///             - redactionColor:
///                 red: 0.5
///                 blue: 1
///                 green: 0.2
///               selectedInfoTypes:
///                 infoTypes:
///                   - name: COLOR_INFO
///                     version: latest
///             - allInfoTypes: {}
///             - allText: {}
/// ```
///
///
/// ## Import
///
/// DeidentifyTemplate can be imported using any of these accepted formats:
///
/// * `{{parent}}/deidentifyTemplates/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, DeidentifyTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionDeidentifyTemplate:PreventionDeidentifyTemplate default {{parent}}/deidentifyTemplates/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataloss/preventionDeidentifyTemplate:PreventionDeidentifyTemplate default {{parent}}/{{name}}
/// ```
class PreventionDeidentifyTemplate extends pulumi.CustomResource {
  /// The creation timestamp of an deidentifyTemplate. Set by the server.
  late final pulumi.Output<String> createTime;

  /// Configuration of the deidentify template
  /// Structure is documented below.
  late final pulumi.Output<PreventionDeidentifyTemplateDeidentifyConfig>
  deidentifyConfig;

  /// A description of the template.
  late final pulumi.Output<String?> description;

  /// User set display name of the template.
  late final pulumi.Output<String?> displayName;

  /// The resource name of the template. Set by the server.
  late final pulumi.Output<String> name;

  /// The parent of the template in any of the following formats:
  /// * `projects/{{project}}`
  /// * `projects/{{project}}/locations/{{location}}`
  /// * `organizations/{{organization_id}}`
  /// * `organizations/{{organization_id}}/locations/{{location}}`
  late final pulumi.Output<String> parent;

  /// The template id can contain uppercase and lowercase letters, numbers, and hyphens;
  /// that is, it must match the regular expression: [a-zA-Z\d-_]+. The maximum length is
  /// 100 characters. Can be empty to allow the system to generate one.
  late final pulumi.Output<String> templateId;

  /// The last update timestamp of an deidentifyTemplate. Set by the server.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [PreventionDeidentifyTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PreventionDeidentifyTemplate]. {@macro pulumi_dataloss_prevention_deidentify_template_prevention_deidentify_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PreventionDeidentifyTemplate(
    String name, {
    PreventionDeidentifyTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:dataloss/preventionDeidentifyTemplate:PreventionDeidentifyTemplate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    deidentifyConfig =
        registerOutput<PreventionDeidentifyTemplateDeidentifyConfig>(
          'deidentifyConfig',
        );
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    templateId = registerOutput<String>('templateId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [PreventionDeidentifyTemplate] resource's state with the given [name] and [id].
  static PreventionDeidentifyTemplate get(
    String name,
    pulumi.Input<String> id, {
    PreventionDeidentifyTemplateState? state,
  }) {
    return PreventionDeidentifyTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PreventionDeidentifyTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:dataloss/preventionDeidentifyTemplate:PreventionDeidentifyTemplate',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    deidentifyConfig =
        registerOutput<PreventionDeidentifyTemplateDeidentifyConfig>(
          'deidentifyConfig',
        );
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    templateId = registerOutput<String>('templateId');
    updateTime = registerOutput<String>('updateTime');
  }
}
