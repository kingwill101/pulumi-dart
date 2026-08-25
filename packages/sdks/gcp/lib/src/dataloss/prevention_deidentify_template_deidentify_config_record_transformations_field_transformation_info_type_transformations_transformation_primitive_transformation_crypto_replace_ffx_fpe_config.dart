// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_crypto_replace_ffx_fpe_config_context.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_crypto_replace_ffx_fpe_config_crypto_key.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_crypto_replace_ffx_fpe_config_surrogate_info_type.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfig {
  /// Common alphabets. Only one of this, `customAlphabet` or `radix` must be specified.
  /// Possible values are: `NUMERIC`, `HEXADECIMAL`, `UPPER_CASE_ALPHA_NUMERIC`, `ALPHA_NUMERIC`.
  final pulumi.Input<String?>? commonAlphabet;
  /// The 'tweak', a context may be used for higher security since the same identifier in two different contexts won't be given the same surrogate. If the context is not set, a default tweak will be used.
  /// If the context is set but:
  /// 1.  there is no record present when transforming a given value or
  /// 2.  the field is not present when transforming a given value,
  /// a default tweak will be used.
  /// Note that case (1) is expected when an `InfoTypeTransformation` is applied to both structured and non-structured `ContentItem`s. Currently, the referenced field may be of value type integer or string.
  /// The tweak is constructed as a sequence of bytes in big endian byte order such that:
  /// *   a 64 bit integer is encoded followed by a single byte of value 1
  /// *   a string is encoded in UTF-8 format followed by a single byte of value 2
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigContext?>? context;
  /// The key used by the encryption algorithm.
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey> cryptoKey;
  /// This is supported by mapping these to the alphanumeric characters that the FFX mode natively supports. This happens before/after encryption/decryption. Each character listed must appear only once. Number of characters must be in the range \[2, 95\]. This must be encoded as ASCII. The order of characters does not matter. The full list of allowed characters is:
  /// ``0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ~`!@#$%^&*()_-+={[}]|:;"'&lt;,&gt;.?/``. Only one of this, `commonAlphabet` or `radix` must be specified.
  final pulumi.Input<String?>? customAlphabet;
  /// The native way to select the alphabet. Must be in the range \[2, 95\]. Only one of this, `customAlphabet` or `commonAlphabet` must be specified.
  final pulumi.Input<int?>? radix;
  /// The custom infoType to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom infoType followed by the number of characters comprising the surrogate. The following scheme defines the format: info\_type\_name(surrogate\_character\_count):surrogate
  /// For example, if the name of custom infoType is 'MY\_TOKEN\_INFO\_TYPE' and the surrogate is 'abc', the full replacement value will be: 'MY\_TOKEN\_INFO\_TYPE(3):abc'
  /// This annotation identifies the surrogate when inspecting content using the custom infoType [`SurrogateType`](https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#surrogatetype). This facilitates reversal of the surrogate when it occurs in free text.
  /// In order for inspection to work properly, the name of this infoType must not occur naturally anywhere in your data; otherwise, inspection may find a surrogate that does not correspond to an actual identifier. Therefore, choose your custom infoType name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY\_TOKEN\_TYPE
  /// Structure is documented below.
  final pulumi.Input<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoType?>? surrogateInfoType;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfig].
  /// [commonAlphabet] Common alphabets. Only one of this, `customAlphabet` or `radix` must be specified.
  /// [context] The 'tweak', a context may be used for higher security since the same identifier in two different contexts won't be given the same surrogate. If the context is not set, a default tweak will be used.
  /// [cryptoKey] The key used by the encryption algorithm.
  /// [customAlphabet] This is supported by mapping these to the alphanumeric characters that the FFX mode natively supports. This happens before/after encryption/decryption. Each character listed must appear only once. Number of characters must be in the range \[2, 95\]. This must be encoded as ASCII. The order of characters does not matter. The full list of allowed characters is:
  /// [radix] The native way to select the alphabet. Must be in the range \[2, 95\]. Only one of this, `customAlphabet` or `commonAlphabet` must be specified.
  /// [surrogateInfoType] The custom infoType to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom infoType followed by the number of characters comprising the surrogate. The following scheme defines the format: info\_type\_name(surrogate\_character\_count):surrogate
  const PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfig({
    this.commonAlphabet,
    this.context,
    required this.cryptoKey,
    this.customAlphabet,
    this.radix,
    this.surrogateInfoType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonAlphabet': ?commonAlphabet,
      'context': ?pulumi.Input.mapOptionalInputValue<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigContext, Map<String, dynamic>>(context, (value) => value.toMap()),
      'cryptoKey': pulumi.Input.mapInputValue<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey, Map<String, dynamic>>(cryptoKey, (value) => value.toMap()),
      'customAlphabet': ?customAlphabet,
      'radix': ?radix,
      'surrogateInfoType': ?pulumi.Input.mapOptionalInputValue<PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoType, Map<String, dynamic>>(surrogateInfoType, (value) => value.toMap()),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfig.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfig(
      commonAlphabet: (() { final guardedValue = map['commonAlphabet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cryptoKey: pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey.fromMap((map['cryptoKey']! as Map).cast<String, dynamic>())),
      customAlphabet: (() { final guardedValue = map['customAlphabet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      radix: (() { final guardedValue = map['radix']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      surrogateInfoType: (() { final guardedValue = map['surrogateInfoType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigSurrogateInfoType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
